package com.test.test4;

public class data {
    private int sw_pumb,sw_light,humidity_soil,tempareture,air,light;
    private int sw_st_water,sw_st_light,sw_st_threshold,sw_st_threshold_light;
    private String time_water, threshold,threshold_light,threshold_max;
    private clock timeWater,timeLightOn,timeLightOff;

    public data(){
    }
    public data(int sw_pumb, int sw_light, int humidity_soil, int tempareture, int air, int light,
                int sw_st_water, int sw_st_light, int sw_st_threshold, int sw_st_threshold_light,
                String threshold, String threshold_light,String threshold_max,String time_water,
                clock timeWater, clock timeLightOff,clock timeLightOn){
        this.timeWater=timeWater;
        this.timeLightOff=timeLightOff;
        this.timeLightOn=timeLightOn;
        this.sw_light=sw_light;
        this.sw_pumb = sw_pumb;
        this.humidity_soil = humidity_soil;
        this.tempareture = tempareture;
        this.air = air;
        this.light = light;
        this.sw_st_water = sw_st_water;
        this.sw_st_light = sw_st_light;
        this.sw_st_threshold = sw_st_threshold;
        this.sw_st_threshold_light = sw_st_threshold_light;
        this.threshold = threshold;
        this.threshold_light = threshold_light;
        this.threshold_max = threshold_max;
        this.time_water=time_water;
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

    public String getThreshold_light(){return threshold_light;}
    public String getTime_water(){return time_water;}
    public String getThreshold(){return threshold;}
    public String getThreshold_max(){return threshold_max;}
    public clock getTimeWater(){return timeWater;}
    public clock getTimeLightOn(){return timeLightOn;}
    public clock getTimeLightOff(){return timeLightOff;}
    //    @Override
    public int[] toInt(){
        int[] a = {sw_pumb,sw_light,humidity_soil,tempareture,air, light,sw_st_water,
                sw_st_light,sw_st_threshold,sw_st_threshold_light};
        return a;
    }
    public String toString(){return timeWater.toString() + ","+ time_water + "," +timeLightOn.toString()+ ","+timeLightOff.toString()+ "," +threshold+ "," + threshold_light + "," + threshold_max;
    }

}
