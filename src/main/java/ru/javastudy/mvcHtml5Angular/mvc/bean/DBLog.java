package ru.javastudy.mvcHtml5Angular.mvc.bean;

import java.io.Serializable;

public class DBLog implements Serializable {

    private static final long serialVersionUID = 1L;
    private String logString;
    private int idLog;

    public int getIdLog() {
        return idLog;
    }

    public void setIdLog(int idLog) {
        this.idLog = idLog;
    }

    public void setLogString(String logString) {
        this.logString = logString;
    }

    public String getLogString() {
        return logString;
    }

    @Override
    public String toString() {
        return "DBLog[" +
                "logString='" + logString + '\'' +
                ", idLog=" + idLog +
                ']';
    }
}
