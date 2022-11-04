package controller;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.BoardCommentDAO;
import dao.BoardDAO;
import dao.BoardFileDAO;
import dto.BoardCommentDTO;
import dto.BoardDTO;
import dto.BoardFileDTO;


@WebServlet("*.board")
public class BoardController extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		try {
			String uri = request.getRequestURI();
			System.out.println("요청 URI : " + uri);


			//게시판 리스트 출력 (R)
			if(uri.equals("/boardList.board")) {

				String bpage = request.getParameter("cpage");
				int cpage = Integer.parseInt(bpage);
				request.getSession().setAttribute("boardPage", bpage);


				List<BoardDTO> list = BoardDAO.getInstance().selectBoardByRange(cpage*10-9, cpage*10);

				String navi = BoardDAO.getInstance().getBoardPageNavi(cpage);

				request.setAttribute("list", list);
				request.setAttribute("navi", navi);

				request.getRequestDispatcher("/board/boardLis.jsp").forward(request, response);


			// 게시판 검색 리스트 출력 (R)
			}else if(uri.equals("/boardListSearch.board")) {
				String boardSearchOption=request.getParameter("boardSearchOption");
				String boardSearchWord = request.getParameter("boardSearchWord");
				System.out.println(boardSearchOption + boardSearchWord);
				List<BoardDTO>list = BoardDAO.getInstance().selectBoardSearchList(boardSearchOption,boardSearchWord);
				request.setAttribute("list", list);
				request.getRequestDispatcher("/boardList.board").forward(request, response);



			// 게시글 입력 (C)
			}else if(uri.equals("/insertBoardContents.board")) {

				int maxSize = 1024*1024*10;
				String savePath = request.getServletContext().getRealPath("/files"); 
				File fileSavePath = new File(savePath);
				if(!fileSavePath.exists()) {
					fileSavePath.mkdir();
				}
				String b_writer = (String)request.getSession().getAttribute("loginID");

				MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF8", new DefaultFileRenamePolicy());
				// 실제 자바스크립트 프론트에서 파일 사이즈 체크하고 넘어와야 한다.? 어렵네 이거도 해야 해요?

				String b_category = multi.getParameter("b_catagory");
				String b_title = multi.getParameter("b_title");
				String b_content = multi.getParameter("b_content");

				int nextVal = BoardDAO.getInstance().getBoardNextVal();

				BoardDAO.getInstance().insertBoardContents(new BoardDTO(nextVal ,b_category, b_writer, null, b_title, b_content, 0));

				Enumeration<String> e = multi.getFileNames();

				while (e.hasMoreElements()) {

					String name = e.nextElement();
					// <- 가장 최신 글의 seq를 얻어오는 코드가 선행
					String bf_oriName = multi.getOriginalFileName(name);

					if(bf_oriName == null) {continue;}
					//프론트에서 값이 없는 인풋타입은 없애는 게 좋겠다 일단 차선책을 비워있는 파일 넘어오면 서버에서 걸러내자

					String bf_sysName = multi.getFilesystemName(name);

					//					System.out.println(name);
					BoardFileDAO.getInstance().insertBoardFile(new BoardFileDTO(0,bf_oriName, bf_sysName, null, nextVal));
				}


				response.sendRedirect("/boardList.board?cpage=1");


			// 게시글 출력 (R)
			}else if(uri.equals("/selectBoardContents.board")){

				int b_seq = Integer.parseInt(request.getParameter("b_seq"));

				BoardDAO.getInstance().addBoardViewCount(b_seq); 
				BoardDTO dto = BoardDAO.getInstance().selectBoardContents(b_seq);

				request.setAttribute("dto", dto);

				List<BoardFileDTO> filelist = BoardFileDAO.getInstance().selectBoardFile(b_seq);
				request.setAttribute("filelist", filelist); 

				List<BoardCommentDTO> commentlist =BoardCommentDAO.getInstance().selectBoardComment(b_seq);
				request.setAttribute("commentlist", commentlist);
				request.getRequestDispatcher("/board/boardContents.jsp").forward(request, response);


			// 게시글 삭제 (D)
			}else if(uri.equals("/deleteContents.board")) {
				int b_seq = Integer.parseInt(request.getParameter("b_seq"));
				int result = BoardDAO.getInstance().deleteBoardContents(b_seq);
				String page = (String)request.getSession().getAttribute("boardPage");
				response.sendRedirect("/boardList.board?cpage="+page);
				// 그 페이지로


			// 게시글 수정 (U)
			}else if(uri.equals("/updateContents.board")) {
				int b_seq = Integer.parseInt(request.getParameter("b_seq"));
				String b_title = request.getParameter("b_title");
				String b_content = request.getParameter("b_content");
				int result = BoardDAO.getInstance().updateBoardContents(b_title,b_content,b_seq);
				response.sendRedirect("/boardContents.board?seq="+b_seq);
			}



		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("/error.jsp");

		}
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}