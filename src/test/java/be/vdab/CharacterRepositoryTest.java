package be.vdab;

import be.vdab.domain.*;
import be.vdab.repository.CharacterRepository;
import org.junit.*;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Date;

import static org.junit.Assert.*;

/**
 * Created by Hyuberuto on 14/07/15.
 */
@TransactionConfiguration
@Transactional
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class CharacterRepositoryTest {

    @Autowired
    CharacterRepository characterRepository;

    FilmCharacter tony= new FilmCharacter("Tony Stark");

    @Before
    public void addTestData(){
        characterRepository.saveAndFlush(tony);
    }

/*    @After
    public void removeTestData(){
        characterRepository.delete(tony);
    }*/

    @Test
    public void testFindCharacterById(){
        assertEquals("Tony Stark", characterRepository.findOne(1).getCharName());
    }

    @Test
    public void testRemoveCharacterById(){
        characterRepository.delete(1);
        assertNull(characterRepository.findOne(1));
    }

    @Test
    public void testSaveCharacterInDB(){
        int size = characterRepository.findAll().size();
        FilmCharacter james= new FilmCharacter("James Rhodes");
        characterRepository.saveAndFlush(james);
        assertEquals("James Rhodes", characterRepository.findOne(6).getCharName());
    }

    @Test(expected = UnsupportedOperationException.class)
    public void testGetFilmsPerCharacter(){
        URL test=null;
        try {
            test = new URL("https://www.youtube.com/watch?v=8hYlB38asDY");
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        characterRepository.findOne(1).getFilms().add(new Film("Thor", 134, "bghfgiohoiuvhnunig", Genre.ACTION, "Bloomburg", 5, test));
    }

    @Test(expected = UnsupportedOperationException.class)
    public void testGetActorsPerCharacter(){
        characterRepository.findOne(1).getActors().add(new Actor("Edward", "Norton", "Torolnclkgkbdifjgufiibjk", new Date(1999 - 12 - 28), Gender.MALE));
    }


}
