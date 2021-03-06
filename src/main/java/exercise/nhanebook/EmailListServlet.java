package exercise.nhanebook;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class EmailListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/exercise.jsp";
        String action = request.getParameter("action");

        // get current action
        if(action == null){
            action = "join";
        }
        else if(action.equals("homepage")){
            url = "/index.jsp";

        }
        // perform action and set URL to appropriate page
        else if (action.equals("join")) {
            url = "/exercise.jsp";    // the "join" page
        }
        else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            // store data in User object
            User_JDBC user = new User_JDBC(firstName, lastName, email);

            // validate the parameters
            String message;
            if (firstName == null || lastName == null || email == null ||
                    firstName.isEmpty() || lastName.isEmpty() || email.isEmpty()) {
                message = "Please fill out all three text boxes.";
                url = "/exercise.jsp";
            }
            else {
                message = "";
                url = "/thanks.jsp";
                //UserDB.insert(user);
            }
            request.setAttribute("user", user);
            request.setAttribute("message", message);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
