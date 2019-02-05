package openwebinar.marvel.app.services;

import openwebinar.marvel.app.domain.Avenger;
import openwebinar.marvel.app.repositories.AvengerRepository;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class AvengerServiceImpl implements AvengerService {
    private AvengerRepository repository;

    public AvengerServiceImpl(AvengerRepository avengerRepository) {
        this.repository = avengerRepository;
    }

    @Override
    public List<Avenger> findAll() {
        return repository.findAll();
    }


    @Override
    public Avenger findById(Long id) {
        return repository.findById(id);
    }
}