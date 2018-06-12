package ru.javastudy.mvcHtml5Angular.mvc.quarts;

import java.util.Calendar;

public class QuartzTask {

    public void simpleTaskMethod() {
//		you can log here to database with simpletrigger
        System.out.println("Test Simple Quartz Time: " + Calendar.getInstance().getTime());
    }
}
