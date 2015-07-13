package be.vdab.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.List;

/**
 * Created by Hyuberuto on 10/07/15.
 */

@Entity
public class Actor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NotBlank
    @Size(min = 2, max = 12)
    private String firstName;

    @NotBlank
    @Size(min = 2, max = 12)
    private String lastName;

    @NotBlank
    @Size(min = 2, max = 225)
    @Lob // Full text
    private String bio;

    @NotNull
    @Enumerated(EnumType.STRING) // Om in je DB te kunnen opslaan als 'MALE' ipv 1
    private Gender gender;

    private byte[] profileImage;

    @Valid
    @ManyToMany
    private List<FilmCharacter> filmCharacters;

    public Actor() {
    }

    public Actor(String firstName, String lastName, String bio, Gender gender, byte[] profileImage, List<FilmCharacter> filmCharacters) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.bio = bio;
        this.gender = gender;
        this.profileImage = profileImage;
        this.filmCharacters = filmCharacters;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public byte[] getProfileImage() {
        return profileImage;
    }

    public void setProfileImage(byte[] profileImage) {
        this.profileImage = profileImage;
    }

    public List<FilmCharacter> getFilmCharacters() {
        return filmCharacters;
    }

    public void setFilmCharacters(List<FilmCharacter> filmCharacters) {
        this.filmCharacters = filmCharacters;
    }

    public String getFullName() {
        return firstName + " " + lastName;
    }
}
