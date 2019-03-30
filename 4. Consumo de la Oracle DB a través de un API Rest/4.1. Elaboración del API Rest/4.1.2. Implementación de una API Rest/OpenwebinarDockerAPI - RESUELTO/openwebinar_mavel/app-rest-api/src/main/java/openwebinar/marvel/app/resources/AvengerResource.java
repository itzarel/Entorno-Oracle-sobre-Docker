package openwebinar.marvel.app.resources;

import openwebinar.marvel.app.services.AvengerService;
import openwebinar.marvel.app.domain.Avenger;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("avengers")
public class AvengerResource {

    private final Log log = LogFactory.getLog(AvengerResource.class);

    @Autowired
    private AvengerService avengerService;


    @GetMapping("/getAll")
    public List<Avenger> getAll() {
        log.info("getAll");
        return avengerService.findAll();
    }
}
