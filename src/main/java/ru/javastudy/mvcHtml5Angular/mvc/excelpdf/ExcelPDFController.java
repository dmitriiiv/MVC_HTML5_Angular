package ru.javastudy.mvcHtml5Angular.mvc.excelpdf;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ExcelPDFController {

    @RequestMapping(value = "/excel", method = RequestMethod.GET)
    public ModelAndView excel() {
        System.out.println("ExcelPDFController excel is called");

        List<Example> examples = createExamples();

        //excelDocument - look excel-pdf-config.xml
        return new ModelAndView("excelDocument", "modelObject", examples);
    }

    @RequestMapping(value = "/pdf", method = RequestMethod.GET)
    public ModelAndView pdf() {
        System.out.println("ExcelPDFController pdf is called");

        List<Example> examples = createExamples();

        //pdfDocument - look excel-pdf-config.xml
        return new ModelAndView("pdfDocument", "modelObject", examples);
    }

    private List<Example> createExamples() {
        List<Example> examples = new ArrayList<>();
        for(int i = 0; i < 10; i++) {
            Example example = new Example("example" + i, i, "color" + i);
            examples.add(example);
        }
        return examples;
    }
}
