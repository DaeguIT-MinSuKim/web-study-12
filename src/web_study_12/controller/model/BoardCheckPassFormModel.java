package web_study_12.controller.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_study_12.controller.Command;

public class BoardCheckPassFormModel implements Command {
    
    @Override
    public String process(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        return "board/boardCheckPass.jsp";
    }

}
