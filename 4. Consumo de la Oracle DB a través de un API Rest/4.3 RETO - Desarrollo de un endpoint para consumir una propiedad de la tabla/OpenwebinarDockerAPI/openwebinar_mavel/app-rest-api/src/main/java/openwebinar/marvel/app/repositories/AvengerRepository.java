package openwebinar.marvel.app.repositories;


import openwebinar.marvel.app.domain.Avenger;
import org.springframework.data.repository.Repository;

import java.util.List;

public interface AvengerRepository extends Repository<Avenger, Long> {
    List<Avenger> findAll();

    Avenger findById(Long id);
}