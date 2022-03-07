package com.test.test4;

public class clock {
    private String hour, minute;
    public clock(){}
    public clock(String hour, String minute){
        this.hour=hour;
        this.minute=minute;
    }
    public String getHour(){return hour;}
    public String getMinute(){ return minute;}
    public String toString(){
        return minute+","+hour;
    }
}

