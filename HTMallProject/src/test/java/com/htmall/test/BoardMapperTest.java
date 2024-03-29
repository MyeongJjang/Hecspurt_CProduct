package com.htmall.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.htmall.config.RootConfig;
import com.htmall.domain.BoardVO;
import com.htmall.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes= {RootConfig.class})
@Log4j
public class BoardMapperTest {
	@Setter(onMethod = @__({@Autowired}))
	private BoardMapper mapper;
	@Test
	public void testGetList() {
		mapper.getList().forEach(board -> log.info(board));
	}
	@Test
	public void testInsert() {
		BoardVO board=new BoardVO();
		board.setTitle("새로 작성하는 글");
		board.setContent("새로 작성하는 내용");
		board.setWriter("newbie");
		mapper.insert(board);
		log.info(board);
	}
	@Test
	public void testInsertKey() {
		BoardVO board=new BoardVO();
		board.setTitle("새글 selectKey");
		board.setContent("새글 selectKey");
		board.setWriter("newbie");
		mapper.insertSelectKey(board);
		log.info(board);
	}
	@Test
	public void testRead() {
		BoardVO board=mapper.read(5L);
		log.info(board);
	}
	@Test
	public void testDelete() {
		log.info("DELETE COUNT : " + mapper.delete(5L));
	}
	@Test
	public void testUpdate() {
		BoardVO board=new BoardVO();
		board.setBno(2L);
		board.setTitle("수정한 제목");
		board.setContent("수정한 내용");
		board.setWriter("rose");
		int count=mapper.update(board);
		log.info("UPDATE COUNT : " +count);
	}
}
