package be.vdab.repository;

import be.vdab.domain.Film;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Hyuberuto on 10/07/15.
 */
@Repository
public interface FilmRepository  extends JpaRepository<Film, Integer> {
}
