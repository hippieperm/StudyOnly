package kr.ac.seoil.board.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyInfoVO {
	private Long rno;
	private Long bno;
	private String reply;
	private String userNm;
	private Date replyDate;
	private Date updDate;
}
