package ru.javastudy.mvcHtml5Angular.mvc.quarts;

import java.util.Calendar;

public class CronQuartzTask {

    public void cronTaskMethod() {
        //you can send emails to users here
        System.out.println("Cron Time: " + Calendar.getInstance().getTime());
    }
}
