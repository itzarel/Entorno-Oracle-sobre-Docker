package openwebinar.marvel.app.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "avenger")
public class Avenger {
    @Id
    @Column(nullable = false)
    private Long id;

    @Column(length = 2)
    private String lang;

    @Column(length = 75)
    private String name;

    @Column(length = 75)
    private String actor;

    @Column(length = 1024)
    private String description;

    @Column(length = 2048)
    private String urlimage;

    public Avenger() {}

    public Avenger(Long id, String lang, String name, String actor, String description, String urlimage) {
        this.id = id;
        this.lang = lang;
        this.name = name;
        this.actor = actor;
        this.description = description;
        this.urlimage = urlimage;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLang() {
        return lang;
    }

    public void setLang(String lang) {
        this.lang = lang;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUrlimage() {
        return urlimage;
    }

    public void setUrlimage(String urlimage) {
        this.urlimage = urlimage;
    }
}
