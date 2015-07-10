package be.vdab.repository;

import be.vdab.domain.Character;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Hyuberuto on 10/07/15.
 */
@Repository
public interface CharacterRepository  extends JpaRepository<Character, Integer> {
}
