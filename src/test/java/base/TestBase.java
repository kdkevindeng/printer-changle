package base;

import org.apache.log4j.Logger;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.Log4jConfigurer;

import java.io.FileNotFoundException;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:spring/ApplicationContext.xml" })
public class TestBase {

	public Logger logger = Logger.getLogger(this.getClass());

	@Before
	public void setUp() {
		try {
			Log4jConfigurer.initLogging("classpath:log4j/log4j.properties");
		} catch (FileNotFoundException ex) {
			System.err.println("Cannot Initialize log4j");
		}
		logger = Logger.getLogger(this.getClass());
	}

	@Test
	public void test() {
		logger.info("");
	}
	@After
	public void destroy() {

	}

}
