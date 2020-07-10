package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginform
 */
@WebServlet("/loginform")
public class loginform extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginform() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=UTF-8");
		
		String name = request.getParameter("name");
		String rn = request.getParameter("rn");
		String rn2 = request.getParameter("rn2");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String email2 = request.getParameter("email2");
		String backmail = request.getParameter("backmail");
		String addnum = request.getParameter("addnum");
		String add = request.getParameter("add");
		String add2 = request.getParameter("add2");
		String ph = request.getParameter("ph");
		String job = request.getParameter("job");
		String interests[] = request.getParameterValues("interest");
		
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.print("이름 : ");
		out.print("<b>"+name+"</b>"+"<br>");
		out.print("주민등록번호 : ");
		out.print("<b>"+rn+"-"+ rn2+"</b>"+"<br>");
		out.print("아이디 : ");
		out.print("<b>"+id+"</b>"+"<br>");
		out.print("비밀번호 : ");
		out.print("<b>"+pwd+"</b>"+"<br>");
		out.print("이메일 : ");
		out.print("<b>"+email+"@"+"</b>");
		if(email2 == "") {
			out.print("");
		}
		if(backmail == "") {
			out.print("");
		}
		out.print("<b>"+email2+backmail+"</b>"+"<br>");
		out.print("우편번호 : ");
		out.print("<b>"+addnum+"</b>"+"<br>");
		out.print("주소 : ");
		out.print("<b>"+add+" "+add2+"</b>"+"<br>");
		out.print("핸드폰번호 : ");
		out.print("<b>"+ph+"</b>"+"<br>");
		out.print("직업 : ");
		out.print("<b>"+job+"</b>"+"<br>");
		if(job == null) {
			out.print("<b>선택한 항목이 없습니다</b>");
		}
		out.print("관심분야 : ");
		if(interests == null) {
			out.print("<b>선택한 항목이 없습니다</b>");
		} else {
			for(String interest : interests) {
				out.print("<b>"+interest +"</b>"+ " ");
			}
		}
		out.println("<p><a href='javascript:history.go(-1)'>다시</a>");
		out.print("</body></html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
