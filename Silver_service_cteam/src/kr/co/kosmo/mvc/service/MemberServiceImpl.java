package kr.co.kosmo.mvc.service;



import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.MemberDAO;
import kr.co.kosmo.mvc.dao.MemberDAOImpl;
import kr.co.kosmo.mvc.dto.MemberVO;


@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired MemberDAO dao;
	@Autowired private MemberDAOImpl memberDAOImpl;
	@Override
	public void register(MemberVO vo) throws Exception {
		
		dao.register(vo);
		
	}
	
	@Override	
	public MemberVO login(MemberVO vo) throws Exception {
	
		return dao.login(vo);
	}
	


	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		
		dao.memberUpdate(vo);
		
	}
	// 아이디 중복 체크
	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = dao.idChk(vo);
		return result;
	}
	//회원 삭제
	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		dao.memberDelete(vo);
	}
	// 아이디 찾기
	@Override
	public String find_id(HttpServletResponse response, String u_email) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = dao.find_id(u_email);
		
		if (id == null) {
			out.println("<script>");
			out.println("alert('가입된 아이디가 없습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return null;
		} else {
			return id;
		}
	}

	/*
	 * // 이메일 중복 체크
	 * 
	 * @Override public int emailChk(MemberVO vo) throws Exception { int result =
	 * dao.emailChk(vo); return result; }
	 */
	//비밀번호 찾기 이메일발송
	@Override
	public void sendEmail(MemberVO vo, String div) throws Exception {
		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com"; //네이버 이용시 smtp.naver.com
		String hostSMTPid = "thdclals18@naver.com";
		String hostSMTPpwd = "ktis91094153!!";

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "thdclals18@naver.com";
		String fromName = "test";
		String subject = "";
		String msg = "";

			if(div.equals("findpw")) {
			subject = " 임시 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += vo.getU_id() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += vo.getU_password() + "</p></div>";
		}

		// 받는 사람 E-Mail 주소
		String mail = vo.getU_email();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(587); //네이버 이용시 587

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
	}




	//비밀번호찾기
	@Override
	public void findPw(HttpServletResponse response, MemberVO vo) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		System.out.println("-----------1");
		// 가입된 아이디가 없으면
		if(memberDAOImpl.idChk(vo.getU_id()) == 0) {
			out.print("등록되지 않은 아이디입니다.");
			out.close();
			System.out.println("2");
		}
		// 가입된 이메일이 아니면
		else if(!vo.getU_email().equals(memberDAOImpl.emailCheck(vo.getU_id()).getU_email())) {
			System.out.println("3");
			out.print("등록되지 않은 이메일입니다.");
			
			out.close();
			System.out.println("3");
		}else {
			// 임시 비밀번호 생성
			System.out.println("4");
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			vo.setU_password(pw);
			// 비밀번호 변경
			memberDAOImpl.updatePw(vo);
			// 비밀번호 변경 메일 발송
			sendEmail(vo, "findpw");

			out.print("이메일로 임시 비밀번호를 발송하였습니다.");
			out.close();
		}
	}
	
	
	//--------���궡
	//customerNo update(�꽭�뀡�슜)	
	@Override
	public void update_customerNo_mem(int u_no, int customer_no) throws Exception {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("u_no", u_no);
		map.put("customer_no", customer_no);
		dao.update_customerNo_mem(map);
	}

	//giverNo update(�꽭�뀡�슜)	
	@Override
	public void update_giverNo_mem(int u_no, int giver_no) throws Exception {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("u_no", u_no);
		map.put("giver_no", giver_no);
		dao.update_giverNo_mem(map);
	}
	
	//�떊泥��꽌 �궘�젣 �떆 硫ㅻ쾭�뿉 customer_no 0�쑝濡� �젙蹂대�寃� �뀒�뒪�듃 以� 
	@Override
	public void delete_customerNo_mem(int u_no) throws Exception {
		dao.delete_customerNo_mem(u_no);
	}
	
	//吏��썝�꽌 �궘�젣 �떆 硫ㅻ쾭�뿉 giver_no 0�쑝濡� �젙蹂대�寃� �뀒�뒪�듃 以� 	
	@Override
	public void delete_giverNo_mem(int u_no) throws Exception {
		dao.delete_giverNo_mem(u_no);
	}
	
}
