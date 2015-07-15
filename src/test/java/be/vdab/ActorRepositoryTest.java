package be.vdab;

import be.vdab.controller.CharacterController;
import be.vdab.domain.Actor;
import be.vdab.domain.FilmCharacter;
import be.vdab.domain.Gender;
import be.vdab.repository.ActorRepository;
import be.vdab.repository.CharacterRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Date;
import java.util.stream.Collectors;

import static org.junit.Assert.*;

/**
 * Created by Hyuberuto on 14/07/15.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class ActorRepositoryTest {

    @Autowired
    ActorRepository actorRepository;

    @Autowired
    CharacterRepository characterRepository;

    @Test
    public void testFindActorById(){
        assertEquals("Robert Downey Jr", actorRepository.findOne(1).getFullName());
    }

    @Test
    public void testRemoveActorById(){
        actorRepository.delete(2);
        assertNull(actorRepository.findOne(2));
    }

    @Test
    public void testSaveActorInDB(){
        actorRepository.save(new Actor("Edward", "Norton", "Torolnclkgkbdifjgufiibjk", new Date(1999 - 12 - 28), Gender.MALE));
        assertNotNull(actorRepository.findOne(4));
    }

    @Test
    @Transactional
    public void testAddCharacterToActor(){
        FilmCharacter tony= new FilmCharacter("Tony Stark");
        Actor test = actorRepository.findOne(1);
        test.addToCharacters(tony);
        assertNotNull(test.getFilmCharacters().contains(tony));
        characterRepository.saveAndFlush(tony);
        actorRepository.saveAndFlush(test);

        assertEquals(1, actorRepository.findOne(1).getFilmCharacters().stream().filter(c -> c.getCharName().equals("Tony Stark")).collect(Collectors.toList()).size());
    }


}
