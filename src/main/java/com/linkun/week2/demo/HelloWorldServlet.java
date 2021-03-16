package com.linkun.week2.demo;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//now its just a java class
//extend HttpServlet
public class HelloWorldServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException {
        //when client request method is Get - here - inside doGet()
        //we want to send Hello to client
        //we need to write Hello in response
        // get writer-java .io
        PrintWriter writer=response.getWriter();
        writer.println("Name:LinKun");
        writer.println("ID:2019211001000913");
        writer.println("Date and Time Tue May 16 20:34 CST 2021");
        //next we need to tell about this servlet to tomcat - how?/-web.xml

    }
    public void doPost(HttpServletRequest request, HttpServletResponse response){
        //when client request method is Post - here - inside doPost()
    }
}
