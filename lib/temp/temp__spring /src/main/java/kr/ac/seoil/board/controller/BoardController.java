package kr.ac.seoil.board.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import kr.ac.seoil.board.service.BoardService;
import kr.ac.seoil.board.vo.BoardInfoVO;
import kr.ac.seoil.board.vo.BoardVO;
import kr.ac.seoil.board.vo.Criteria;
import kr.ac.seoil.board.vo.PageVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
  private BoardService boardService;

  // @GetMapping("/list")
  public void list(Model model) throws Exception {
    model.addAttribute("list", boardService.getList());
  }

  @GetMapping("/list")
  public void list(Model model, Criteria cri) throws Exception {
    log.info("#################### list : " + cri);
    model.addAttribute("list", boardService.getList(cri));

    int total = boardService.getTotalCount(cri);
    model.addAttribute("pageMaker", new PageVO(cri, total));
  }

  @GetMapping("/write")
  public void write() throws Exception {

  }

  @PostMapping("/create")
  public String create(BoardVO vo, RedirectAttributes rttr) throws Exception {
    boardService.createGetKey(vo);
    rttr.addFlashAttribute("result", vo.getBno());
    return "redirect:/board/list";
  }

  @GetMapping({"/get", "/edit"})
  public void get(Model model, @RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri,
      HttpServletRequest request) throws Exception {
    BoardInfoVO vo = boardService.getInfo(bno);
    if (request.getRequestURI().indexOf("/get") > -1) {
      vo.setContent(vo.getContent().replaceAll("\\n", "<br />"));
    }
    model.addAttribute("board", vo);
  }

  @PostMapping("/modify")
  public String modify(BoardVO vo, RedirectAttributes rttr, Criteria cri) throws Exception {
    if (boardService.modify(vo) > 0) {
      rttr.addFlashAttribute("result", "success");
    }
    return "redirect:/board/list" + cri.getListLink();
  }

  @PostMapping("/remove")
  public String remove(BoardVO vo, RedirectAttributes rttr, Criteria cri) throws Exception {
    if (boardService.remove(vo.getBno()) > 0) {
      rttr.addFlashAttribute("result", "success");
    }
    rttr.addAttribute("pageNum", cri.getPageNum());
    rttr.addAttribute("amount", cri.getAmount());
    rttr.addAttribute("type", cri.getType());
    rttr.addAttribute("keyword", cri.getKeyword());
    return "redirect:/board/list";
  }
}


