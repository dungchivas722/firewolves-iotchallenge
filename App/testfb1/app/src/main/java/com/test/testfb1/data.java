package com.test.testfb1;

public class data {

    private int air, humidity_soil1,humidity_soil2;
    private int co2;
    private int soil;
    private int tempareture;
    int t1;
    private int t2,t3,t4;
    private String hour, minute, threshold,time;


    public data(){
    }

    public data(int air, int co2, int soil, int tempareture, int t1, int t2, int t3, int t4, int humidity_soil1, int humidity_soil2, String hour, String minute, String threshold,String time){
        this.air = air;
        this.co2 = co2;
        this.soil = soil;
        this.tempareture = tempareture;
        this.t1 = t1;
        this.t2 = t2;
        this.t3 = t3;
        this.t4 = t4;
        this.hour = hour;
        this.minute = minute;
        this.threshold = threshold;
        this.time = time;
        this.humidity_soil1 = humidity_soil1;
        this.humidity_soil2 = humidity_soil2;
    }

    public int getAir(){
        return air;
    }
    public int getCo2(){
        return co2;
    }

    public int getSoil(){
        return soil;
    }

    public int getTempareture(){
        return tempareture;
    }

    public int getT1(){
        return t1;
    }
    public int getT2(){
        return t2;
    }
    public int getT3(){
        return t3;
    }
    public int getT4(){
        return t4;
    }
    public int getHumidity_soil1(){
        return humidity_soil1;
    }
    public int getHumidity_soil2(){
        return humidity_soil2;
    }
    public String getHour(){return hour;}
    public String getMinute(){return minute;}
    public String getThreshold(){return threshold;}
    public String getTime(){ return time;}

//    @Override
    public int[] toInt(){
        int[] a = {air,co2,soil,tempareture,t1,t2,t3,t4,humidity_soil1,humidity_soil2};
        return a;
    }

    public String toString(){
        return hour + ","+ minute + "," + threshold + "," +time;
    }
}
