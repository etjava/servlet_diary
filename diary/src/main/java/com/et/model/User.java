package com.et.model;

public class User {

    private Integer id;
    private String userName;
    private String password;
    private String imageName;
    private String nickName;
    private String mood;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public void setMood(String mood) {
        this.mood = mood;
    }

    public Integer getId() {
        return id;
    }

    public String getUserName() {
        return userName;
    }

    public String getImageName() {
        return imageName;
    }

    public String getNickName() {
        return nickName;
    }

    public String getMood() {
        return mood;
    }
}
