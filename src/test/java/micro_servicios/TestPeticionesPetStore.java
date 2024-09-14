package micro_servicios;

import com.intuit.karate.junit5.Karate;

public class TestPeticionesPetStore {
    @Karate.Test
    Karate testApi() {
//        return Karate.run("test_api").relativeTo(getClass());
        return Karate.run("insertar_mascota").relativeTo(getClass());

    }
}
