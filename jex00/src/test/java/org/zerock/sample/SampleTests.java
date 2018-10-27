package org.zerock.sample;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.config.RootConfig;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes= {RootConfig.class})
@Log4j
public class SampleTests {

	// 테스트 작업은 프로젝트 초기에 설정해 두고 사용하는 습관을 가지자
	@Setter(onMethod_ = { @Autowired })
	private Restaurant restaurant;

	@Test 
	public void testExist() {

		assertNotNull(restaurant);	// restaurant 변수가 null이 아니어야만 테스트가 성공

		log.info(restaurant);
		log.info("------------------------");
		log.info(restaurant.getChef());
	}
}