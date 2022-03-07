package com.test.test4;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Switch;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

import java.util.ArrayList;
import java.util.List;

public class tab2 extends Fragment {
    @Nullable
    private String n;
    private List<data> vuonList = new ArrayList<data>();
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View v = inflater.inflate(R.layout.tab2_layout,container,false);

        FirebaseDatabase database = FirebaseDatabase.getInstance();
        DatabaseReference minute_water1 = database.getReference("data/1/timeWater/minute");
        DatabaseReference hour_water1 = database.getReference("data/1/timeWater/hour");
        DatabaseReference time_water1 = database.getReference("data/1/time_water");
        DatabaseReference minute_light1 = database.getReference("data/1/timeLightOn/minute");
        DatabaseReference hour_light1 = database.getReference("data/1/timeLightOn/hour");
        DatabaseReference threshold1 = database.getReference("data/1/threshold");
        DatabaseReference threshold_max1 = database.getReference("data/1/threshold_max");
        DatabaseReference threshold_light1 = database.getReference("data/1/threshold_light");
        DatabaseReference minute_lightOff1 = database.getReference("data/1/timeLightOff/minute");
        DatabaseReference hour_lightOff1 = database.getReference("data/1/timeLightOff/hour");

        DatabaseReference minute_water2 = database.getReference("data/2/timeWater/minute");
        DatabaseReference hour_water2 = database.getReference("data/2/timeWater/hour");
        DatabaseReference time_water2 = database.getReference("data/2/time_water");
        DatabaseReference minute_light2 = database.getReference("data/2/timeLightOn/minute");
        DatabaseReference hour_light2 = database.getReference("data/2/timeLightOn/hour");
        DatabaseReference threshold2 = database.getReference("data/2/threshold");
        DatabaseReference threshold_max2 = database.getReference("data/2/threshold_max");
        DatabaseReference threshold_light2 = database.getReference("data/2/threshold_light");
        DatabaseReference minute_lightOff2 = database.getReference("data/2/timeLightOff/minute");
        DatabaseReference hour_lightOff2 = database.getReference("data/2/timeLightOff/hour");
        DatabaseReference data = database.getReference("data");

        DatabaseReference sw_st_water1 = database.getReference("data/1/sw_st_water");
        DatabaseReference sw_st_water2 = database.getReference("data/2/sw_st_water");
        DatabaseReference sw_st_light1 = database.getReference("data/1/sw_st_light");
        DatabaseReference sw_st_light2 = database.getReference("data/2/sw_st_light");
        DatabaseReference sw_st_threshold1 = database.getReference("data/1/sw_st_threshold");
        DatabaseReference sw_st_threshold2 = database.getReference("data/2/sw_st_threshold");
        DatabaseReference sw_st_threshold_light1 = database.getReference("data/1/sw_st_threshold_light");
        DatabaseReference sw_st_threshold_light2 = database.getReference("data/2/sw_st_threshold_light");

        TextView edtHour1 = v.findViewById(R.id.tv_clock_water1);
        TextView edtHourLight1 = v.findViewById(R.id.tv_clock_light1);
        TextView edtThreshold1 = v.findViewById(R.id.threshold_1);
        TextView edttime_light1 = v.findViewById(R.id.time_light1);
        TextView edttime_water1 = v.findViewById(R.id.time_water1);
        TextView edtThreshold_light1 = v.findViewById(R.id.threshold_light_1);

        TextView edtHour2 = v.findViewById(R.id.tv_clock_water2);
        TextView edtHourLight2 = v.findViewById(R.id.tv_clock_light2);
        TextView edtThreshold2 = v.findViewById(R.id.threshold_2);
        TextView edttime_light2 = v.findViewById(R.id.time_light2);
        TextView edttime_water2 = v.findViewById(R.id.time_water2);
        TextView edtThreshold_light2 = v.findViewById(R.id.threshold_light_2);

        Switch st_water1 = (Switch) v.findViewById(R.id.sw_st_water1);
        st_water1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean checked = ((Switch) v).isChecked();
                if (checked){
                    // Your code
                    sw_st_water1.setValue(1);
                    String[] listTime = new String[]{"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59"};
                    AlertDialog.Builder pBuilder = new AlertDialog.Builder(getActivity());

                    pBuilder.setTitle("Chọn thời gian tưới");
                    pBuilder.setSingleChoiceItems(listTime, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edttime_water1.setText(listTime[i] + " Phút");
                            time_water1.setValue(listTime[i]);
                        }
                    });
                    pBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog pDialog = pBuilder.create();
                    pDialog.show();

                    String[] listMinute = new String[]{"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59"};
                    AlertDialog.Builder tBuilder = new AlertDialog.Builder(getActivity());
                    tBuilder.setTitle("Chọn phút");
                    tBuilder.setSingleChoiceItems(listMinute, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edtHour1.setText("Hẹn giờ tưới cây  "+ n + ":" + listMinute[i] + " tưới");
                            minute_water1.setValue(listMinute[i]);
                        }
                    });
                    tBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog tDialog = tBuilder.create();
                    tDialog.show();

                    String[] listHour = new String[]{"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"};
                    AlertDialog.Builder mBuilder = new AlertDialog.Builder(getActivity());
                    mBuilder.setTitle("Chọn giờ");
                    mBuilder.setSingleChoiceItems(listHour, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
//                            edtHour.setText(listHour[i] + " :");
                            n = listHour[i];
                            hour_water1.setValue(listHour[i]);
                        }
                    });
                    mBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog mDialog = mBuilder.create();
                    mDialog.show();
                }
                else{
                    // Your code
                    sw_st_water1.setValue(0);
                }
            }
        });
        Switch st_water2 = (Switch) v.findViewById(R.id.sw_st_water2);
        st_water2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean checked = ((Switch) v).isChecked();
                if (checked){
                    // Your code
                    sw_st_water2.setValue(1);
                    String[] listTime = new String[]{"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59"};
                    AlertDialog.Builder pBuilder = new AlertDialog.Builder(getActivity());
                    pBuilder.setTitle("Chọn thời gian tưới");
                    pBuilder.setSingleChoiceItems(listTime, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edttime_water2.setText(listTime[i] + " Phút");
                            time_water2.setValue(listTime[i]);
                        }
                    });
                    pBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog pDialog = pBuilder.create();
                    pDialog.show();

                    String[] listMinute = new String[]{"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59"};
                    AlertDialog.Builder tBuilder = new AlertDialog.Builder(getActivity());
                    tBuilder.setTitle("Chọn phút");
                    tBuilder.setSingleChoiceItems(listMinute, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edtHour2.setText("Hẹn giờ tưới cây  "+ n + ":" + listMinute[i] + " tưới");
                            minute_water2.setValue(listMinute[i]);
                        }
                    });
                    tBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog tDialog = tBuilder.create();
                    tDialog.show();

                    String[] listHour = new String[]{"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"};
                    AlertDialog.Builder mBuilder = new AlertDialog.Builder(getActivity());
                    mBuilder.setTitle("Chọn giờ");
                    mBuilder.setSingleChoiceItems(listHour, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
//                            edtHour.setText(listHour[i] + " :");
                            n = listHour[i];
                            hour_water2.setValue(listHour[i]);
                        }
                    });
                    mBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog mDialog = mBuilder.create();
                    mDialog.show();
                }
                else{
                    // Your code
                    sw_st_water2.setValue(0);
                }
            }
        });
        Switch st_light1 = (Switch) v.findViewById(R.id.sw_st_light1);
        st_light1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean checked = ((Switch) v).isChecked();
                if (checked){
                    // Your code
                    sw_st_light1.setValue(1);
                    String[] listMinute = new String[]{"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59"};
                    AlertDialog.Builder tfBuilder = new AlertDialog.Builder(getActivity());
                    tfBuilder.setTitle("Chọn phút tắt");
                    tfBuilder.setSingleChoiceItems(listMinute, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edttime_light1.setText("Hẹn giờ tưới cây  "+ n + ":" + listMinute[i] + " tưới");
                            minute_lightOff1.setValue(listMinute[i]);
                        }
                    });
                    tfBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog tfDialog = tfBuilder.create();
                    tfDialog.show();

                    String[] listHour = new String[]{"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"};
                    AlertDialog.Builder mfBuilder = new AlertDialog.Builder(getActivity());
                    mfBuilder.setTitle("Chọn giờ tắt");
                    mfBuilder.setSingleChoiceItems(listHour, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
//                            edtHour.setText(listHour[i] + " :");
                            n = listHour[i];
                            hour_lightOff1.setValue(listHour[i]);
                        }
                    });
                    mfBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog mfDialog = mfBuilder.create();
                    mfDialog.show();

//                    String[] listMinute = new String[]{"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59"};
                    AlertDialog.Builder tBuilder = new AlertDialog.Builder(getActivity());
                    tBuilder.setTitle("Phút");
                    tBuilder.setSingleChoiceItems(listMinute, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edtHourLight1.setText("Hẹn giờ bật đèn  "+ n+ ":" + listMinute[i] + " tưới");
                            minute_light1.setValue(listMinute[i]);
                        }
                    });
                    tBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog tDialog = tBuilder.create();
                    tDialog.show();

//                    String[] listHour = new String[]{"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"};
                    AlertDialog.Builder mBuilder = new AlertDialog.Builder(getActivity());
                    mBuilder.setTitle("Giờ bật đèn");
                    mBuilder.setSingleChoiceItems(listHour, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
//                            edtHour.setText(listHour[i] + " :");
                            n = listHour[i];
                            hour_light1.setValue(listHour[i]);
                        }
                    });
                    mBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog mDialog = mBuilder.create();
                    mDialog.show();
                }
                else{
                    // Your code
                    sw_st_light1.setValue(0);
                }
            }
        });
        Switch st_light2 = (Switch) v.findViewById(R.id.sw_st_light2);
        st_light2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean checked = ((Switch) v).isChecked();
                if (checked){
                    // Your code
                    sw_st_light2.setValue(1);
                    String[] listMinute = new String[]{"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59"};
                    AlertDialog.Builder tfBuilder = new AlertDialog.Builder(getActivity());
                    tfBuilder.setTitle("Chọn phút tắt");
                    tfBuilder.setSingleChoiceItems(listMinute, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edttime_light2.setText("Hẹn giờ tưới cây  "+ n + ":" + listMinute[i] + " tưới");
                            minute_lightOff2.setValue(listMinute[i]);
                        }
                    });
                    tfBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog tfDialog = tfBuilder.create();
                    tfDialog.show();

                    String[] listHour = new String[]{"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"};
                    AlertDialog.Builder mfBuilder = new AlertDialog.Builder(getActivity());
                    mfBuilder.setTitle("Chọn giờ tắt");
                    mfBuilder.setSingleChoiceItems(listHour, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
//                            edtHour.setText(listHour[i] + " :");
                            n = listHour[i];
                            hour_lightOff2.setValue(listHour[i]);
                        }
                    });
                    mfBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog mfDialog = mfBuilder.create();
                    mfDialog.show();

//                    String[] listMinute = new String[]{"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59"};
                    AlertDialog.Builder tBuilder = new AlertDialog.Builder(getActivity());
                    tBuilder.setTitle("Chọn phút bật");
                    tBuilder.setSingleChoiceItems(listMinute, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edtHourLight2.setText("Hẹn giờ tưới cây  "+ n + ":" + listMinute[i] + " tưới");
                            minute_light2.setValue(listMinute[i]);
                        }
                    });
                    tBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog tDialog = tBuilder.create();
                    tDialog.show();

//                    String[] listHour = new String[]{"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"};
                    AlertDialog.Builder mBuilder = new AlertDialog.Builder(getActivity());
                    mBuilder.setTitle("Chọn giờ bật");
                    mBuilder.setSingleChoiceItems(listHour, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
//                            edtHour.setText(listHour[i] + " :");
                            n = listHour[i];
                            hour_light2.setValue(listHour[i]);
                        }
                    });
                    mBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog mDialog = mBuilder.create();
                    mDialog.show();
                }
                else{
                    // Your code
                    sw_st_light2.setValue(0);
                }
            }
        });
        Switch st_threshold1 = (Switch) v.findViewById(R.id.sw_st_threshold1);
        st_threshold1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean checked = ((Switch) v).isChecked();
                if (checked){
                    // Your code
                    sw_st_threshold1.setValue(1);
                    String[] listThresholdmax = new String[]{"0","5","10","15","20","25","30","35","40","45","50","55","60","65","70","75","80","85","90","95","100"};
                    AlertDialog.Builder tBuilder = new AlertDialog.Builder(getActivity());
                    tBuilder.setTitle("Chọn ngưỡng trên");
                    tBuilder.setSingleChoiceItems(listThresholdmax, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edtThreshold1.setText("Ngưỡng "+ n + "%" +" - "+ listThresholdmax[i] + "% tưới");
                            threshold_max1.setValue(listThresholdmax[i]);
                        }
                    });
                    tBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog tDialog = tBuilder.create();
                    tDialog.show();


                    String[] listThreshold = new String[]{"0","5","10","15","20","25","30","35","40","45","50","55","60","65","70","75","80","85"};
                    AlertDialog.Builder mBuilder = new AlertDialog.Builder(getActivity());
                    mBuilder.setTitle("Chọn ngưỡng dưới");
                    mBuilder.setSingleChoiceItems(listThreshold, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            n = listThreshold[i];
                            threshold1.setValue(listThreshold[i]);
                        }
                    });
                    mBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog mDialog = mBuilder.create();
                    mDialog.show();
                }
                else{
                    // Your code
                    sw_st_threshold1.setValue(0);
                }
            }
        });
        Switch st_threshold2 = (Switch) v.findViewById(R.id.sw_st_threshold2);
        st_threshold2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean checked = ((Switch) v).isChecked();
                if (checked){
                    // Your code
                    sw_st_threshold2.setValue(1);

                    String[] listThresholdmax = new String[]{"0","5","10","15","20","25","30","35","40","45","50","55","60","65","70","75","80","85","90","95","100"};
                    AlertDialog.Builder tBuilder = new AlertDialog.Builder(getActivity());
                    tBuilder.setTitle("Chọn ngưỡng trên");
                    tBuilder.setSingleChoiceItems(listThresholdmax, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edtThreshold2.setText("Ngưỡng "+ n + "%" +" - "+ listThresholdmax[i] + "% tưới");
                            threshold_max2.setValue(listThresholdmax[i]);
                        }
                    });
                    tBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog tDialog = tBuilder.create();
                    tDialog.show();

                    String[] listThreshold = new String[]{"0","5","10","15","20","25","30","35","40","45","50","55","60","65","70","75","80","85"};
                    AlertDialog.Builder mBuilder = new AlertDialog.Builder(getActivity());
                    mBuilder.setTitle("Chọn ngưỡng dưới");
                    mBuilder.setSingleChoiceItems(listThreshold, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            n=listThreshold[i];
                            threshold2.setValue(listThreshold[i]);
                        }
                    });
                    mBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog mDialog = mBuilder.create();
                    mDialog.show();
                }
                else{
                    // Your code
                    sw_st_threshold2.setValue(0);
                }
            }
        });

        Switch st_threshold_light1 = (Switch) v.findViewById(R.id.sw_st_threshold_light1);
        st_threshold_light1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean checked = ((Switch) v).isChecked();
                if (checked){
                    // Your code
                    sw_st_threshold_light1.setValue(1);
                    String[] listThreshold = new String[]{"0","5","10","15","20","25","30","35","40","45","50","55","60","65","70","75","80","85"};
                    AlertDialog.Builder tBuilder = new AlertDialog.Builder(getActivity());
                    tBuilder.setTitle("Chọn ngưỡng bật đèn");
                    tBuilder.setSingleChoiceItems(listThreshold, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edtThreshold_light1.setText("Dưới "+ listThreshold[i] + "% bật đèn");
                            threshold_light1.setValue(listThreshold[i]);
                        }
                    });
                    tBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog mDialog = tBuilder.create();
                    mDialog.show();
                }
                else{
                    // Your code
                    sw_st_threshold_light1.setValue(0);
                }
            }
        });
        Switch st_threshold_light2 = (Switch) v.findViewById(R.id.sw_st_threshold_light2);
        st_threshold_light2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean checked = ((Switch) v).isChecked();
                if (checked){
                    // Your code
                    sw_st_threshold_light2.setValue(1);
                    String[] listThreshold = new String[]{"0","5","10","15","20","25","30","35","40","45","50","55","60","65","70","75","80","85"};
                    AlertDialog.Builder tBuilder = new AlertDialog.Builder(getActivity());
                    tBuilder.setTitle("Chọn ngưỡng bật đèn");
                    tBuilder.setSingleChoiceItems(listThreshold, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edtThreshold_light2.setText("Dưới "+ listThreshold[i] + "% bật đèn");
                            threshold_light2.setValue(listThreshold[i]);
                        }
                    });
                    tBuilder.setNegativeButton("OK", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    AlertDialog mDialog = tBuilder.create();
                    mDialog.show();
                }
                else{
                    // Your code
                    sw_st_threshold_light2.setValue(0);
                }
            }
        });

        // READ DATA FROM DATABASE
        data.addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(DataSnapshot dataSnapshot) {
                // This method is called once with the initial value and again
                // whenever data at this location is updated.
                vuonList.clear();
                for(DataSnapshot snap : dataSnapshot.getChildren()){
                    data vuon = snap.getValue(data.class);
                    vuonList.add(vuon);
                }
                data vuon1 = (com.test.test4.data) vuonList.get(0);
                data vuon2 = (com.test.test4.data) vuonList.get(1);
                String[] setting1 = vuon1.toString().split(",");
                String[] setting2 = vuon2.toString().split(",");
                int[] parts1 = vuon1.toInt();
                int[] parts2 = vuon2.toInt();

                TextView hw1 = v.findViewById(R.id.tv_clock_water1);
                TextView tw1 = v.findViewById(R.id.time_water1);
                TextView hl1 = v.findViewById(R.id.tv_clock_light1);
                TextView tl1 = v.findViewById(R.id.time_light1);
                TextView thw1 = v.findViewById(R.id.threshold_1);
                TextView thl1 = v.findViewById(R.id.threshold_light_1);

                TextView hw2 = v.findViewById(R.id.tv_clock_water2);
                TextView tw2 = v.findViewById(R.id.time_water2);
                TextView hl2 = v.findViewById(R.id.tv_clock_light2);
                TextView tl2 = v.findViewById(R.id.time_light2);
                TextView thw2 = v.findViewById(R.id.threshold_2);
                TextView thl2 = v.findViewById(R.id.threshold_light_2);

                hw1.setText("Hẹn giờ tưới cây  " + setting1[1] + ":" + setting1[0]);
                hw2.setText("Hẹn giờ tưới cây  " + setting2[1] + ":" + setting2[0]);
                tw1.setText("Thời gian tưới  "+setting1[2] + "p");
                tw2.setText("Thời gian tưới  "+setting2[2] + "p");
                hl1.setText("Hẹn giờ bật đèn  " + setting1[4] + ":" + setting1[3]);
                hl2.setText("Hẹn giờ bật đèn  " + setting2[4] + ":" + setting2[3]);
                tl1.setText("Hẹn giờ tắt đèn  " + setting1[5] + ":" + setting1[6]);
                tl2.setText("Hẹn giờ tắt đèn  " + setting2[5] + ":" + setting2[6]);
                thw1.setText("Ngưỡng "+ setting1[7] + "%" +" - "+ setting1[9] + "% tưới");
                thw2.setText("Ngưỡng "+ setting2[7] + "%" +" - "+ setting2[9] + "% tưới");
                thl1.setText("Dưới "+setting1[8] + "% bật đèn");
                thl2.setText("Dưới "+setting2[8] + "% bật đèn");

                if(parts1[6] == 1) st_water1.setChecked(true);
                else st_water1.setChecked(false);
                if(parts2[6] == 1) st_water2.setChecked(true);
                else st_water2.setChecked(false);
                if(parts1[7] == 1) st_light1.setChecked(true);
                else st_light1.setChecked(false);
                if(parts2[7] == 1) st_light2.setChecked(true);
                else st_light2.setChecked(false);
                if(parts1[8] == 1) st_threshold1.setChecked(true);
                else st_threshold1.setChecked(false);
                if(parts2[8] == 1) st_threshold2.setChecked(true);
                else st_threshold2.setChecked(false);
                if(parts1[9] == 1) st_threshold_light1.setChecked(true);
                else st_threshold_light1.setChecked(false);
                if(parts2[9] == 1) st_threshold_light2.setChecked(true);
                else st_threshold_light2.setChecked(false);

            }

            @Override
            public void onCancelled(DatabaseError error) {
                // Failed to read value
            }
        });

        return v;
    }
}
