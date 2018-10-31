package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BoardVO;

public interface BoardMapper {

	// @Select("select * from tbl_board where bno > 0")
	public List<BoardVO> getList();

	// 자동 bno 증가
	public void insert(BoardVO board);

	// bno 확인 후 증가
	public void insertSelectKey(BoardVO board);

	public BoardVO read(Long bno);

	public int delete(Long bno);
	
	public int update(BoardVO board);

}
