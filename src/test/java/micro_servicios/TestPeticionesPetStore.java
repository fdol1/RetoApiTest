package micro_servicios;

import com.intuit.karate.junit5.Karate;

public class TestPeticionesPetStore {
    @Karate.Test
    Karate testApi() {
        return Karate.run("peticiones_api_pet_store").relativeTo(getClass());
    }
}
