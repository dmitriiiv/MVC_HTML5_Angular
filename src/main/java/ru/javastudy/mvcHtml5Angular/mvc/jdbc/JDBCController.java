package ru.javastudy.mvcHtml5Angular.mvc.jdbc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.javastudy.mvcHtml5Angular.mvc.bean.DBLog;
import ru.javastudy.mvcHtml5Angular.mvc.bean.User;

import java.util.List;

@Controller
public class JDBCController {

    @Autowired
    private JDBCExample jdbcExample;

    @RequestMapping(value = "/jdbcQueryAllUsers", method = RequestMethod.GET)
    public ModelAndView jdbcSelectAllUsers() {
        System.out.println("JDBCController jdbcSelectAllUsers() is called");
        List<User> users = jdbcExample.queryAllUsers();
        return new ModelAndView("/jdbc/jdbc", "resultObject", users);
    }

    @RequestMapping(value = "/jdbcInsert/logstring/{logstring}", method = RequestMethod.GET)
    public ModelAndView jdbcInsert(@PathVariable(value = "logstring") String logstring) {
        System.out.println("JDBCController jdbcInsert is called");
        DBLog dbLog = new DBLog();
        dbLog.setLogString(logstring);
        boolean result = jdbcExample.insertLog(dbLog);
        return new ModelAndView("/jdbc/jdbc", "resultObject", result);
    }

    @RequestMapping(value = "/jdbcSelectLogs", method = RequestMethod.GET)
    public ModelAndView jdbcSelect() {
        System.out.println("JDBCController jdbcSelect is called");
        List<DBLog> dbLogs = jdbcExample.queryAllLogs();
        return new ModelAndView("/jdbc/jdbc", "resultObject", dbLogs);
    }

    @RequestMapping(value = "/jdbcDelete/user/{iduser}", method = RequestMethod.GET)
    public ModelAndView jdbcDelete(@PathVariable(value = "iduser") int iduser) {
        System.out.println("JDBCController jdbcDelete is called");
        boolean result = jdbcExample.deleteUser(iduser);
        return new ModelAndView("/jdbc/jdbc", "resultObject", result);
    }

    @RequestMapping(value = "/jdbcUpdate/user/username/{username}/enabled/{enabled}", method = RequestMethod.GET)
    public ModelAndView jdbcUpdate(@PathVariable(value = "username") String userName, @PathVariable(value = "enabled") boolean enabled) {
        System.out.println("JDBCController jdbcUpdate is called");
        User user = new User();
        user.setUserName(userName);
        boolean result = jdbcExample.updateUserEnable(user, enabled);
        return new ModelAndView("/jdbc/jdbc", "resultObject", result);
    }
}
