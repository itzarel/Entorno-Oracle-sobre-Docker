package openwebinar.marvel.app.services;



import openwebinar.marvel.app.domain.Avenger;

import java.util.List;

public interface AvengerService {
    List<Avenger> findAll();
}