package be.vdab.repository;

import be.vdab.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Hyuberuto on 15/07/15.
 */
public interface UserRepository extends JpaRepository<User, Integer> {
}
