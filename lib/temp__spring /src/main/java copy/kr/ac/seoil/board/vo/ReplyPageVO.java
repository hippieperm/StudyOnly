package kr.ac.seoil.board.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ReplyPageVO {
	private int replyCnt;
	private List<ReplyInfoVO> list;
}
