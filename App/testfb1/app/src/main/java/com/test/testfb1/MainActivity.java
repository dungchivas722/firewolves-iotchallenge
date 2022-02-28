package com.test.testfb1;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SwitchCompat;

import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.Switch;
import android.widget.TextView;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class MainActivity extends AppCompatActivity {

    FirebaseDatabase database = FirebaseDatabase.getInstance();
    DatabaseReference hour = database.getReference("data/hour");
    DatabaseReference data = database.getReference("data");
    DatabaseReference minute = database.getReference("data/minute");
    DatabaseReference threshold = database.getReference("data/threshold");
    DatabaseReference t1 = database.getReference("data/t1");
    DatabaseReference t2 = database.getReference("data/t2");
    DatabaseReference t3 = database.getReference("data/t3");
    DatabaseReference t4 = database.getReference("data/t4");
    DatabaseReference time = database.getReference("data/time");
    DatabaseReference humidity_soil1 = database.getReference("data/humidity_soil1");
    DatabaseReference humidity_soil2 = database.getReference("data/humidity_soil2");


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        TextView edtHour = findViewById(R.id.hour);
        TextView edtMinute = findViewById(R.id.minute);
        TextView edtThreshold = findViewById(R.id.threshold);
        TextView edtTime = findViewById(R.id.time);

        Switch switch1 = (Switch) findViewById(R.id.t1);
        switch1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean checked = ((Switch) v).isChecked();
                if (checked){
                    // Your code
                    t1.setValue(1);
                }
                else{
                    // Your code
                    t1.setValue(0);
                }
            }
        });

        Switch switch2 = findViewById(R.id.t2);
        switch2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean checked = ((Switch) v).isChecked();
                if (checked){
                    t2.setValue(1);
                }
                else{
                    t2.setValue(0);
                }
            }
        });

        Switch switch3 = (Switch) findViewById(R.id.t3);
        switch3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean checked = ((Switch) v).isChecked();
                if (checked){
                    t3.setValue(1);
                    String[] listTime = new String[]{"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59"};
                    AlertDialog.Builder pBuilder = new AlertDialog.Builder(MainActivity.this);
                    pBuilder.setTitle("Chọn thời gian tưới");
                    pBuilder.setSingleChoiceItems(listTime, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edtTime.setText(listTime[i] + " Phút");
                            time.setValue(listTime[i]);
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
                    AlertDialog.Builder tBuilder = new AlertDialog.Builder(MainActivity.this);
                    tBuilder.setTitle("Chọn phút");
                    tBuilder.setSingleChoiceItems(listMinute, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edtMinute.setText(listMinute[i] + " tưới");
                            minute.setValue(listMinute[i]);
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
                    AlertDialog.Builder mBuilder = new AlertDialog.Builder(MainActivity.this);
                    mBuilder.setTitle("Chọn giờ");
                    mBuilder.setSingleChoiceItems(listHour, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edtHour.setText(listHour[i] + " :");
                            hour.setValue(listHour[i]);
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
                    t3.setValue(0);
                }
            }
        });


        Switch switch4 = (Switch) findViewById(R.id.t4);
        switch4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean checked = ((Switch) v).isChecked();
                if (checked){
                    t4.setValue(1);
                    String[] listThreshold = new String[]{"0","5","10","15","20","25","30","35","40","45","50","55","60","65","70","75","80","85"};
                    AlertDialog.Builder tBuilder = new AlertDialog.Builder(MainActivity.this);
                    tBuilder.setTitle("Chọn ngưỡng");
                    tBuilder.setSingleChoiceItems(listThreshold, -1, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            edtThreshold.setText("Dưới "+ listThreshold[i] + "% tưới");
                            threshold.setValue(listThreshold[i]);
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
                    t4.setValue(0);
                }
            }
        });

// READ DATA FROM DATABASE
        data.addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(DataSnapshot dataSnapshot) {
                // This method is called once with the initial value and again
                // whenever data at this location is updated.
                data value = dataSnapshot.getValue(data.class);
                String[] setting = value.toString().split(",");
                int[] parts = value.toInt();

                TextView t = findViewById(R.id.tempareture);
                TextView a = findViewById(R.id.air);
                TextView l = findViewById(R.id.light);
                TextView c = findViewById(R.id.co2);
                TextView hs1 = findViewById(R.id.humidity_soil1);
                TextView hs2 = findViewById(R.id.humidity_soil2);

                a.setText(parts[0] + "%");
                c.setText(parts[1] + "%");
                l.setText(parts[2] + "%");
                t.setText(parts[3] + " C");
                hs1.setText(parts[8] + "%");
                hs2.setText(parts[9] + "%");

                if(parts[4] == 1) switch1.setChecked(true);
                else switch1.setChecked(false);

                if(parts[5] == 1) switch2.setChecked(true);
                else switch2.setChecked(false);

                if(parts[6] == 1) switch3.setChecked(true);
                else switch3.setChecked(false);

                if(parts[7] == 1) switch4.setChecked(true);
                else switch4.setChecked(false);

                edtHour.setText(setting[0] + " :");
                edtMinute.setText(setting[1] + " tưới");
                edtThreshold.setText(setting[2] + "% tưới");
                edtTime.setText(setting[3] + " phút");
            }

            @Override
            public void onCancelled(DatabaseError error) {
                // Failed to read value
            }
        });
    }
}