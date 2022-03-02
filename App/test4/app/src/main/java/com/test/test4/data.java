package com.test.test4;

public class data {
    private int sw_pumb,sw_light,humidity_soil,tempareture,air,light;
    private int sw_st_water,sw_st_light,sw_st_threshold,sw_st_threshold_light;
    private String minute_water, hour_water,time_water,minute_light,hour_light,hour_light_off,
            threshold,threshold_light,threshold_max,hour_light_on;
    private String threshold_light1;

    public data(){
    }
    public data(int sw_pumb, int sw_light, int humidity_soil, int tempareture, int air, int light,
                int sw_st_water, int sw_st_light, int sw_st_threshold, int sw_st_threshold_light,
                String minute_water, String hour_water, String time_water, String minute_light,String hour_light_on,
                String hour_light, String hour_light_off, String threshold, String threshold_light,String threshold_max){
        this.sw_pumb = sw_pumb;
        this.humidity_soil = humidity_soil;
        this.tempareture = tempareture;
        this.air = air;
        this.light = light;
        this.sw_st_water = sw_st_water;
        this.sw_st_light = sw_st_light;
        this.sw_st_threshold = sw_st_threshold;
        this.sw_st_threshold_light = sw_st_threshold_light;
        this.minute_water = minute_water;
        this.hour_water = hour_water;
        this.time_water = time_water;
        this.minute_light = minute_light;
        this.hour_light = hour_light;
        this.hour_light_off = hour_light_off;
        this.threshold = threshold;
        this.threshold_light = threshold_light;
        this.threshold_max = threshold_max;
        this.hour_light_on = hour_light_on;
    }
    public int getSw_pumb(){
        return sw_pumb;
    }
    public int getSw_light(){
        return sw_light;
    }
    public int getHumidity_soil(){
        return humidity_soil;
    }
    public int getTempareture(){
        return tempareture;
    }
    public int getAir(){
        return air;
    }
    public int getLight(){
        return light;
    }
    public int getSw_st_water(){
        return sw_st_water;
    }
    public int getSw_st_light(){
        return sw_st_light;
    }
    public int getSw_st_threshold(){
        return sw_st_threshold;
    }
    public int getSw_st_threshold_light(){
        return sw_st_threshold_light;
    }

    public String getMinute_water(){return minute_water;}
    public String getHour_water(){ return hour_water;}
    public String getTime_water(){return time_water;}
    public String getMinute_light(){ return minute_light;}
    public String getHour_light(){return hour_light;}
    public String getHour_light_off(){ return hour_light_off;}
    public String getThreshold(){return threshold;}
    public String getThreshold_light(){ return threshold_light1;}
    public String getThreshold_max(){return threshold_max;}
    public String getHour_light_on(){return hour_light_on;}
    //    @Override
    public int[] toInt(){
        int[] a = {sw_pumb,sw_light,humidity_soil,tempareture,air, light,sw_st_water,
                sw_st_light,sw_st_threshold,sw_st_threshold_light};
        return a;
    }

    public String toString(){return minute_water + "," + hour_water + ","+ time_water + "," +minute_light +
            "," + hour_light+ ","+ hour_light_off+ "," +threshold+ "," + threshold_light + "," + threshold_max+ "," + hour_light_on;
    }
}
