package openwebinar.marvel.app.dto;

import java.util.Objects;

public class AvengerDTO {

    private Long id;
    private String lang;
    private String name;
    private String actor;
    private String description;
    private String urlimage;

    public AvengerDTO() {}

    public AvengerDTO(Long id, String lang, String name, String actor, String description, String urlimage) {
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

    @Override
    public String toString() {
        return "AvengerDTO{" +
                "id=" + id +
                ", lang='" + lang + '\'' +
                ", name='" + name + '\'' +
                ", actor='" + actor + '\'' +
                ", description='" + description + '\'' +
                ", urlimage='" + urlimage + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AvengerDTO)) return false;
        AvengerDTO that = (AvengerDTO) o;
        return Objects.equals(getId(), that.getId()) &&
                Objects.equals(getLang(), that.getLang()) &&
                Objects.equals(getName(), that.getName()) &&
                Objects.equals(getActor(), that.getActor()) &&
                Objects.equals(getDescription(), that.getDescription()) &&
                Objects.equals(getUrlimage(), that.getUrlimage());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getId(), getLang(), getName(), getActor(), getDescription(), getUrlimage());
    }
}
