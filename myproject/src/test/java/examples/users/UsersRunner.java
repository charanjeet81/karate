package examples.users;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.KarateOptions;

@KarateOptions(tags = {"~@ignore"})

class UsersRunner {
    @Karate.Test
    Karate testUsers() {
        return Karate.run("TestData").relativeTo(getClass());
    }    
}
