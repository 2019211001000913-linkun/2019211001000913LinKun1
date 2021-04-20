package com.linkun.week6.demo;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
@WebServlet(name ="SearchServlet",value = "/search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String txt = request.getParameter("txt");
        String search = request.getParameter("search");

        if(txt.equals("")){
            response.sendRedirect("index.jsp");
        }else {
            if(search.equals("baidu")){
                response.sendRedirect("https://www.baidu.com/s?wd=1"+txt);
            } if (search.equals("bing")){
                response.sendRedirect("https://www.bing.com/search?q="+txt);
            } if (search.equals("google")){
                response.sendRedirect("https://www.google.com/search?q="+txt);
            }
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}