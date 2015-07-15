package be.vdab;

import be.vdab.domain.*;
import org.junit.Test;

import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Date;

/**
 * Non persistence/integration test, but a PURE unit test.
 * Runs orders of magnitude faster and are less complicated.
 * Prefer PURE tests when possible.
 */
public class CharacterTest {
    @Test(expected = UnsupportedOperationException.class)
    public void testGetFilmsPerCharacter() throws MalformedURLException {
        new FilmCharacter("Tristan").getFilms().add(
            new Film("Legends Of The Fall", 133, "Nice drama during early 1900s", Genre.DRAMA, "Director Name", 100, new URL("https://www.youtube.com/watch?v=8hYlB38asDY"))
        );
    }

    @Test(expected = UnsupportedOperationException.class)
    public void testGetActorsPerCharacter(){
        new FilmCharacter("Tristan").getActors().add(
            new Actor("Edward", "Norton", "Torolnclkgkbdifjgufiibjk", new Date(1999 - 12 - 28), Gender.MALE)
        );
    }
}
