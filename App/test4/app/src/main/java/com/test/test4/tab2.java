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

import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

public class tab2 extends Fragment {
    @Nullable
    private String n;
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View v = inflater.inflate(R.layout.tab2_layout,container,false);

        FirebaseDatabase database = FirebaseDatabase.getInstance();
        DatabaseReference minute_water1 = database.getReference("data/minute_water1");
        DatabaseReference hour_water1 = database.getReference("data/hour_water1");
        DatabaseReference time_water1 = database.getReference("data/time_water1");
        DatabaseReference minute_light1 = database.getReference("data/minute_light1");
        DatabaseReference hour_light1 = database.getReference("data/hour_light1");
        DatabaseReference time_light1 = database.getReference("data/time_light1");
        DatabaseReference threshold1 = database.getReference("data/threshold1");

        DatabaseReference minute_water2 = database.getReference("data/minute_water2");
        DatabaseReference hour_water2 = database.getReference("data/hour_water2");
        DatabaseReference time_water2 = database.getReference("data/time_water2");
        DatabaseReference minute_light2 = database.getReference("data/minute_light2");
        DatabaseReference hour_light2 = database.getReference("data/hour_light2");
        DatabaseReference time_light2 = database.getReference("data/time_light2");
        DatabaseReference threshold2 = database.getReference("data/threshold2");
        DatabaseReference data = database.getReference("data");

        DatabaseReference sw_st_water1 = database.getReference("data/sw_st_water1");
        DatabaseReference sw_st_water2 = database.getReference("data/sw_st_water2");
        DatabaseReference sw_st_light1 = database.getReference("data/sw_st_light1");
        DatabaseReference sw_st_light2 = database.getReference("data/sw_st_light2");
        DatabaseReference sw_st_threshold1 = database.getReference("data/sw_st_threshold1");
        DatabaseReference sw_st_threshold2 = database.getReference("data/sw_st_threshold2");

        TextView edtHour1 = v.findViewById(R.id.tv_clock_water1);
        TextView edtHourLight1 = v.findViewById(R.id.tv_clock_light1);
        TextView edtThreshold1 = v.findViewById(R.id.threshold_1);
        TextView edttime_light1 = v.findViewById(R.id.time_light1);
        TextView edttime_water1 = v.findViewById(R.id.time_water1);

        TextView edtHour2 = v.findViewById(R.id.tv_clock_water2);
        TextView edtHourLight2 = v.findViewById(R.id.tv_clock_light2);
        TextView edtThreshold2 = v.findViewById(R.id.threshold_2);
        TextView edttime_light2 = v.findViewById(R.id.time_light2);
        TextView edttime_water2 = v.findViewById(R.id.time_water2);

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
                    String[] listTime = new String[]{"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59"};
                    AlertDialog.Builder pBuilder = new AlertDialog.Builder(getActivity());
                    pBuilder.setTitle("Chọn thời gian bật đèn ");
                    pBuilder.setSingleChoiceItems(listTime, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edttime_light1.setText(listTime[i] + " Phút");
                            time_light1.setValue(listTime[i]);
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

                    String[] listHour = new String[]{"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"};
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
                    String[] listTime = new String[]{"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59"};
                    AlertDialog.Builder pBuilder = new AlertDialog.Builder(getActivity());
                    pBuilder.setTitle("Chọn thời gian tưới");
                    pBuilder.setSingleChoiceItems(listTime, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edttime_light2.setText(listTime[i] + " Phút");
                            time_light2.setValue(listTime[i]);
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

                    String[] listHour = new String[]{"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"};
                    AlertDialog.Builder mBuilder = new AlertDialog.Builder(getActivity());
                    mBuilder.setTitle("Chọn giờ");
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
                    String[] listThreshold = new String[]{"0","5","10","15","20","25","30","35","40","45","50","55","60","65","70","75","80","85"};
                    AlertDialog.Builder tBuilder = new AlertDialog.Builder(getActivity());
                    tBuilder.setTitle("Chọn ngưỡng");
                    tBuilder.setSingleChoiceItems(listThreshold, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edtThreshold1.setText("Dưới "+ listThreshold[i] + "% tưới");
                            threshold1.setValue(listThreshold[i]);
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
                    String[] listThreshold = new String[]{"0","5","10","15","20","25","30","35","40","45","50","55","60","65","70","75","80","85"};
                    AlertDialog.Builder tBuilder = new AlertDialog.Builder(getActivity());
                    tBuilder.setTitle("Chọn ngưỡng");
                    tBuilder.setSingleChoiceItems(listThreshold, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edtThreshold2.setText("Dưới "+ listThreshold[i] + "% tưới");
                            threshold2.setValue(listThreshold[i]);
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
                    sw_st_threshold2.setValue(0);
                }
            }
        });

        return v;
    }
}
