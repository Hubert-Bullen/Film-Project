package be.vdab;

import be.vdab.domain.Film;
import be.vdab.domain.FilmCharacter;
import be.vdab.domain.Genre;
import be.vdab.repository.CharacterRepository;
import be.vdab.repository.FilmRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.stream.Collectors;

import static org.junit.Assert.*;
/**
 * Created by Hyuberuto on 14/07/15.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class FilmRepositoryTest {

    @Autowired
    FilmRepository filmRepository;

    @Autowired
    CharacterRepository characterRepository;

    @Test
    public void testFindFilmById() {
        assertEquals("Iron Man", filmRepository.findOne(1).getTitle());
    }

    @Test
    public void testRemoveFilmById(){
        filmRepository.delete(2);
        assertNull(filmRepository.findOne(2));
    }

    @Test
    public void testSaveFilmInDB(){
        URL test=null;
        try {
            test = new URL("https://www.youtube.com/watch?v=8hYlB38asDY");
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        filmRepository.save(new Film("Thor", 134, "bghfgiohoiuvhnunig", Genre.ACTION, "Bloomburg", 5, test));
        assertNotNull(filmRepository.findOne(4));
    }

    @Test
    @Transactional
    public void testAddCharacterToActor(){
        FilmCharacter tony= new FilmCharacter("Tony Stark");
        Film test = filmRepository.findOne(1);
        test.addToCharacters(tony);
        assertNotNull(test.getFilmCharacters().contains(tony));
        characterRepository.saveAndFlush(tony);
        filmRepository.saveAndFlush(test);

        assertEquals(1, filmRepository.findOne(1).getFilmCharacters().stream().filter(c -> c.getCharName().equals("Tony Stark")).collect(Collectors.toList()).size());
    }
}
