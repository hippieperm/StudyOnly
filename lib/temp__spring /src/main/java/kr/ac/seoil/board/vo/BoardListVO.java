package kr.ac.seoil.board.vo;

import java.util.Date;

import lombok.Data;

@Data
public class BoardListVO {
	private Long bno;
	private String title;
	private String userNm;
	private Date regDate;
	private Date updDate;
}
