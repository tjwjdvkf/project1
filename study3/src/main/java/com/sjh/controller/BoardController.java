package com.sjh.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sjh.service.BoardService;
import com.sjh.vo.BoardVO;
import com.sjh.vo.PageVO;
import com.sjh.vo.SearchVO;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Inject
	private BoardService service;
	
		//글 작성
		@RequestMapping(value="/boardwrite" ,method=RequestMethod.GET)
		public void createGet(BoardVO vo, Model model)throws Exception{
			
		}
		//save
		@RequestMapping(value="/boardwrite" ,method=RequestMethod.POST)
		public String create(BoardVO vo, RedirectAttributes rttr)throws Exception{
			
			service.create(vo);
			rttr.addFlashAttribute("msg", "success");
			
			return "redirect:/board/boardlist.do";
		}
		//detail
		@RequestMapping(value="/read" ,method=RequestMethod.GET)
		public void read(@RequestParam("bno") int bno, Model model) throws Exception {
			
			
			model.addAttribute(service.read(bno));
			model.addAttribute(service.readCnt(bno));
		}
		
		//delete
		@RequestMapping(value="/remove",method=RequestMethod.POST)
		public String remone(@RequestParam("bno") int bno, RedirectAttributes rttr)throws Exception {
			
			service.remove(bno);
			rttr.addFlashAttribute("msg","success");
			
			return "redirect:/board/boardlist.do";
		}
		
		//글 수정
		@RequestMapping(value="/modify" ,method=RequestMethod.GET)
		public void modifyGET(int bno, Model model)throws Exception{
			model.addAttribute(service.read(bno));
		}
		//save
		@RequestMapping(value="/modify" ,method=RequestMethod.POST)
		public String modifyPOST(BoardVO vo, RedirectAttributes rttr)throws Exception{
			
			service.update(vo);
			rttr.addFlashAttribute("msg", "success");
			
			return "redirect:/board/boardlist.do";
		}		
		
		//글 리스트
		@RequestMapping(value="boardlist")
		public String listAll(SearchVO searchVO, Model model)throws Exception{
			
			searchVO.pageCalculate(service.boardCnt());	 // startRow, endRow
			
			List<BoardVO> list = service.listAll(searchVO);
			model.addAttribute("list", list);
			model.addAttribute("searchVO", searchVO);
			
			System.out.println(searchVO.toString());
			
			return "/board/boardlist";
		}

	
}
