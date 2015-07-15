package be.vdab;

import be.vdab.domain.FilmCharacter;
import be.vdab.repository.CharacterRepository;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@Transactional
@TransactionConfiguration
public class CharacterRepositoryTest {
    @Autowired
    CharacterRepository characterRepository;

    FilmCharacter tony= new FilmCharacter("Tony Stark");

    @Before
    public void addTestData() {
        characterRepository.saveAndFlush(tony);
        System.out.println(tony.getId());
    }

    /**
     * In unit tests you should not assume the ID being 1 unless you are using a deterministic approach (DBUnit, data.sql).
     * Inerting through JPA does not guarantee the ID to be the same all the time. Thus check using tony.getId() which works for whatever ID was assigned to tony (not always 1).
     */
    @Test
    public void testFindCharacterById(){
        FilmCharacter character = characterRepository.findOne(tony.getId());
        assertEquals("Tony Stark", character.getCharName());
    }

    @Test
    public void testRemoveCharacterById(){
        characterRepository.delete(tony.getId());
        assertNull(characterRepository.findOne(tony.getId()));
    }

    @Test
    public void testSaveCharacterInDB(){
        int size = characterRepository.findAll().size();
        FilmCharacter james= new FilmCharacter("James Rhodes");
        characterRepository.saveAndFlush(james);

        FilmCharacter character = characterRepository.findOne(james.getId());
        assertEquals("James Rhodes", character.getCharName());
    }
}
