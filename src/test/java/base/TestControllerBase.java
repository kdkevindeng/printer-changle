package base;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@WebAppConfiguration
@ContextConfiguration({ "classpath:spring/ApplicationContext.xml", "classpath:spring/ApplicationContext-mvc.xml" })

public class TestControllerBase extends TestBase {
	@Autowired
	public WebApplicationContext wac;

	public MockMvc mockMvc;

	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(wac).build();
	}
	@Test
	public void test() {

	}
	@After
	public void destroy() {

	}
}
