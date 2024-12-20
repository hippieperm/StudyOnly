package kr.ac.seoil;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/root-context.xml"
	, "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
public class BoardControllerTests {
	@Autowired
	private WebApplicationContext ctx;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	@Test
	public void testList() throws Exception {
		log.info("################" +
			mockMvc.perform(MockMvcRequestBuilders.get("/board/list"))
			.andReturn()
			.getModelAndView()
			.getModelMap());
	}
	
	@Test
	public void testCreate() throws Exception {
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/create")
				.param("title", "Controller Test")
				.param("content", "Controller Test 내용")
				.param("userId", "user01")
				).andReturn().getModelAndView().getViewName();
		log.info("###################### " + resultPage);
	}
	
	@Test
	public void testGet() throws Exception {
		log.info("#######################" + mockMvc.perform(MockMvcRequestBuilders
				.get("/board/get")
				.param("bno", "61"))
				.andReturn()
				.getModelAndView().getModelMap());
	}
	
	@Test
	public void testModify() throws Exception {
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/modify")
				.param("bno", "61")
				.param("title", "Controller Test 수정")
				.param("content", "Controller Test 수정 내용")
				.param("userId", "user01"))
			.andReturn().getModelAndView().getViewName();
		log.info("##################### " + resultPage);
	}
	
	@Test
	public void testRemove() throws Exception {
		String resultPage = mockMvc
			.perform(MockMvcRequestBuilders.post("/board/remove")
				.param("bno", "61")
			).andReturn().getModelAndView().getViewName();
		log.info("###################### " + resultPage);
	}
}















