package ru.javastudy.mvcHtml5Angular.mvc.exception;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ExceptionController {

    @RequestMapping(value = "/runtimeException", method = RequestMethod.GET)
    public void throwException() {
        throw new RuntimeException("It's my RuntimeException:))");
    }

}
