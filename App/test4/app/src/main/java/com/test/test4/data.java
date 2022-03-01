package com.test.test4;

public class data {
    private int sw_pumb1, sw_pumb2,sw_light1,sw_light2,humidity_soil1,humidity_soil2,tempareture1,tempareture2,air1,air2,light1,light2;
    private int sw_st_water1,sw_st_water2,sw_st_light1,sw_st_light2,sw_st_threshold1,sw_st_threshold2,sw_st_threshold_light1,sw_st_threshold_light2;
    private String minute_water1, minute_water2, hour_water1,hour_water2,time_water1,time_water2,minute_light1,minute_light2,hour_light1,hour_light2,time_light1,
            time_light2,threshold1,threshold2,threshold_light1,threshold_light2,threshold_max1,threshold_max2;

    public data(){
    }
    public data(int sw_pumb1, int sw_pumb2, int sw_light1, int sw_light2, int humidity_soil1, int humidity_soil2, int tempareture1, int tempareture2,
                int air1, int air2, int light1, int light2, int sw_st_water1, int sw_st_water2, int sw_st_light1, int sw_st_light2,
                int sw_st_threshold1, int sw_st_threshold2, int sw_st_threshold_light1, int sw_st_threshold_light2, String minute_water1,
                String minute_water2, String hour_water1,String hour_water2, String time_water1,String time_water2, String minute_light1,String minute_light2,
                String hour_light1,String hour_light2, String time_light1,String time_light2, String threshold1,String threshold2,
                String threshold_light1,String threshold_light2,String threshold_max1,String threshold_max2){
        this.sw_pumb1 = sw_pumb1;
        this.sw_pumb2 = sw_pumb2;
        this.humidity_soil1 = humidity_soil1;
        this.humidity_soil2 = humidity_soil2;
        this.tempareture1 = tempareture1;
        this.tempareture2 = tempareture2;
        this.air1 = air1;
        this.air2 = air2;
        this.light1 = light1;
        this.light2 = light2;
        this.sw_st_water1 = sw_st_water1;
        this.sw_st_water2 = sw_st_water2;
        this.sw_st_light1 = sw_st_light1;
        this.sw_st_light2 = sw_st_light2;
        this.sw_st_threshold1 = sw_st_threshold1;
        this.sw_st_threshold2 = sw_st_threshold2;
        this.sw_st_threshold_light1 = sw_st_threshold_light1;
        this.sw_st_threshold_light2 = sw_st_threshold_light2;
        this.minute_water1 = minute_water1;//
        this.minute_water2 = minute_water2;
        this.hour_water1 = hour_water1;
        this.hour_water2 = hour_water2;
        this.time_water1 = time_water1;
        this.time_water2 = time_water2;
        this.minute_light1 = minute_light1;
        this.minute_light2 = minute_light2;
        this.hour_light1 = hour_light1;
        this.hour_light2 = hour_light2;
        this.time_light1 = time_light1;
        this.time_light2 = time_light2;
        this.threshold1 = threshold1;
        this.threshold2 = threshold2;
        this.time_water2 = time_water2;
        this.threshold_light1 = threshold_light1;
        this.threshold_light2 = threshold_light2;
        this.threshold_max1 = threshold_max1;
        this.threshold_max2 = threshold_max2;
    }
    public int getSw_pumb1(){
        return sw_pumb1;
    }
    public int getSw_pumb2(){
        return sw_pumb2;
    }
    public int getSw_light1(){
        return sw_light1;
    }
    public int getSw_light2(){
        return sw_light2;
    }
    public int getHumidity_soil1(){
        return humidity_soil1;
    }
    public int getHumidity_soil2(){
        return humidity_soil2;
    }
    public int getTempareture1(){
        return tempareture1;
    }
    public int getTempareture2(){
        return tempareture2;
    }
    public int getAir1(){
        return air1;
    }
    public int getAir2(){
        return air2;
    }
    public int getLight1(){
        return light1;
    }
    public int getLight2(){
        return light2;
    }
    public int getSw_st_water1(){
        return sw_st_water1;
    }
    public int getSw_st_water2(){
        return sw_st_water2;
    }
    public int getSw_st_light1(){
        return sw_st_light1;
    }
    public int getSw_st_light2(){
        return sw_st_light2;
    }
    public int getSw_st_threshold1(){
        return sw_st_threshold1;
    }
    public int getSw_st_threshold2(){
        return sw_st_threshold2;
    }
    public int getSw_st_threshold_light1(){
        return sw_st_threshold_light1;
    }
    public int getSw_st_threshold_light2(){
        return sw_st_threshold_light2;
    }

    public String getMinute_water1(){return minute_water1;}
    public String getMinute_water2(){return minute_water2;}
    public String getHour_water1(){return hour_water1;}
    public String getHour_water2(){ return hour_water2;}
    public String getTime_water1(){return time_water1;}
    public String getTime_water2(){return time_water2;}
    public String getMinute_light1(){return minute_light1;}
    public String getMinute_light2(){ return minute_light2;}
    public String getHour_light1(){return hour_light1;}
    public String getHour_light2(){return hour_light2;}
    public String getTime_light1(){return time_light1;}
    public String getTime_light2(){ return time_light2;}
    public String getThreshold1(){return threshold1;}
    public String getThreshold2(){return threshold2;}
    public String getThreshold_light1(){return threshold_light1;}
    public String getThreshold_light2(){ return threshold_light2;}
    public String getThreshold_max1(){return threshold_max1;}
    public String getThreshold_max2(){return threshold_max2;}
    //    @Override
    public int[] toInt(){
        int[] a = {sw_pumb1,sw_pumb2,sw_light1,sw_light2,humidity_soil1,humidity_soil2,tempareture1,tempareture2,air1,air2,
                light1,light2,sw_st_water1,sw_st_water2,sw_st_light1,sw_st_light2,sw_st_threshold1,sw_st_threshold2,sw_st_threshold_light1,sw_st_threshold_light2};
        return a;
    }

    public String toString(){return minute_water1 + ","+ minute_water2 + "," + hour_water1 + "," +hour_water2 + ","+ time_water1 + "," + time_water2 + "," +minute_light1 + ","+ minute_light2 + "," + hour_light1 + "," + hour_light2+ ","+ time_light1 + "," + time_light2 + "," +threshold1 + ","+
            threshold2 + "," + threshold_light1 + "," + threshold_light2 + "," + threshold_max1+ "," + threshold_max2;
    }
}
