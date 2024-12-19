package kr.ac.seoil.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import kr.ac.seoil.board.service.ReplyService;
import kr.ac.seoil.board.vo.Criteria;
import kr.ac.seoil.board.vo.ReplyInfoVO;
import kr.ac.seoil.board.vo.ReplyPageVO;
import kr.ac.seoil.board.vo.ReplyVO;
import lombok.extern.log4j.Log4j;

@RequestMapping("/replies/")
@RestController
@Log4j
// @AllArgsConstructor
public class ReplyController {
  @Autowired
  private ReplyService replyService;

  @PostMapping(value = "/new", consumes = "application/json",
      produces = {MediaType.TEXT_PLAIN_VALUE})
  public ResponseEntity<String> create(@RequestBody ReplyVO vo) throws Exception {
    log.info("ReplyVO:" + vo);

    int ret = replyService.create(vo);
    log.info("Reply Insert Count : " + ret);

    return ret == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
        : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
  }

  @GetMapping(value = "/pages/{bno}/{page}",
      produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
  public ResponseEntity<ReplyPageVO> getList(@PathVariable("page") int page,
      @PathVariable("bno") Long bno) throws Exception {
    Criteria cri = new Criteria(page, 10);
    return new ResponseEntity<>(replyService.getListPage(cri, bno), HttpStatus.OK);
  }

  @GetMapping(value = "/{rno}",
      produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
  public ResponseEntity<ReplyInfoVO> get(@PathVariable("rno") Long rno) throws Exception {
    return new ResponseEntity<>(replyService.get(rno), HttpStatus.OK);
  }

  @DeleteMapping(value = "/{rno}", produces = {MediaType.TEXT_PLAIN_VALUE})
  public ResponseEntity<String> remove(@PathVariable("rno") Long rno) throws Exception {
    return replyService.remove(rno) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
        : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
  }

  @RequestMapping(value = "/{rno}", method = {RequestMethod.PUT, RequestMethod.PATCH},
      consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
  public ResponseEntity<String> modify(@RequestBody ReplyVO vo, @PathVariable("rno") Long rno)
      throws Exception {
    vo.setRno(rno);

    return replyService.modify(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
        : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
  }
}


