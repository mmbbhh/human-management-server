package com.mmbbhh.management.model;

public class Financial {
    private String id;
    private String workid;
    private String name;
    private double user_pay;
    private int num = 0;
    private double sum = 0;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getWorkid() {
        return workid;
    }

    public void setWorkid(String workid) {
        this.workid = workid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getUser_pay() {
        return user_pay;
    }

    public void setUser_pay(double user_pay) {
        this.user_pay = user_pay;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public double getSum() {
        return sum;
    }

    public void setSum(double sum) {
        this.sum = sum;
    }
}
