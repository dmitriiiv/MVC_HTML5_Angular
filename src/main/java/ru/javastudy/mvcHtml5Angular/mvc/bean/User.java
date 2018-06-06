package ru.javastudy.mvcHtml5Angular.mvc.bean;

import java.io.Serializable;

public class User implements Serializable {

    private static final long serialVersionUID = 1L;
    private String userName;
    private int idUser;
    private String password;
    private boolean enabled;

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserName() {
        return userName;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public boolean getEnabled() {
        return enabled;
    }

    @Override
    public String toString() {
        return "User[" +
                "userName='" + userName + '\'' +
                ", idUser=" + idUser +
                ", password='" + password + '\'' +
                ", enabled=" + enabled +
                ']';
    }
}
