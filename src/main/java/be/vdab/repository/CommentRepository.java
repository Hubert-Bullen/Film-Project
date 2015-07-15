package be.vdab.repository;

import be.vdab.domain.Comment;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Hyuberuto on 15/07/15.
 */
public interface CommentRepository extends JpaRepository<Comment, Integer>{
}
