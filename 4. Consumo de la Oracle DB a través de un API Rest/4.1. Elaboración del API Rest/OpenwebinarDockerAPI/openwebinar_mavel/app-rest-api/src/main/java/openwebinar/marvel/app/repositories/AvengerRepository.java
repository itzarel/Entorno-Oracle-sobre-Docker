package openwebinar.marvel.app.repositories;


import openwebinar.marvel.app.domain.Avenger;
import org.springframework.data.repository.Repository;

import java.util.List;

// BBDD <-> Service
//                                         Repository<T, ID>
//                                            T - the domain type the repository manages
//                                            ID - the type of the id of the entity the repository manages
public interface AvengerRepository extends Repository<Avenger, Long> {
    List<Avenger> findAll();
}
