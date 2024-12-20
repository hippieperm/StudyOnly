package kr.ac.seoil.board.vo;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	private long bno;
	private String title;
	private String content;
	private String userId;
	private Date regDate;
	private Date updDate;
}
