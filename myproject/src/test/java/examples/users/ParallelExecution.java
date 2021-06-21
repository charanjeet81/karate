package examples.users;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class ParallelExecution
{
    @Test
    void testParallelExecution() {
        Results results = Runner.path("classpath:examples/TestData").tags("~@ignore").parallel(10);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}