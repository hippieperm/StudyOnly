package kr.ac.seoil.board.vo;

import java.util.Date;

import lombok.Data;

@Data
public class BoardInfoVO {
	private long bno;
	private String title;
	private String content;
	private String userNm;
	private Date regDate;
}
