package com.example.fbmain;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class MainActivity extends AppCompatActivity {
//    FirebaseDatabase database = FirebaseDatabase.getInstance();
//    DatabaseReference myRef = database.getReference("message");
//    TextView tdata;
//
    EditText edtHour;
    EditText edtMinute;
    EditText edtThreshold;
    private DatabaseReference mDatabase;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Button btnPushData;
// ...
        mDatabase = FirebaseDatabase.getInstance().getReference("hour");

        edtHour = findViewById(R.id.hour);
        edtMinute = findViewById(R.id.minute);
        edtThreshold = findViewById(R.id.threshold);
        btnPushData = findViewById(R.id.update);
//        readDatabase();
//        FirebaseDatabase database = FirebaseDatabase.getInstance();

        mDatabase.setValue("success");
//        Hour.setValue(edtHour.getText().toString().trim());
//        minute.setValue(edtMinute.getText().toString().trim());
//        threshold.setValue(edtThreshold.getText().toString().trim());


        btnPushData.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                onClickPushData();
                readDatabase();
                TextView tdata = findViewById(R.id.tempareture);
                tdata.setText("ok");

                mDatabase.child("hour").setValue("hour");
            }
        });
    }


    private void readDatabase(){
        FirebaseDatabase database = FirebaseDatabase.getInstance();
        DatabaseReference myRef = database.getReference("tempareture");
        myRef.addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(DataSnapshot dataSnapshot) {
                // This method is called once with the initial value and again
                // whenever data at this location is updated.
                String value = dataSnapshot.getValue(String.class);

                Log.d("light", "Value is: " + value);
//                tdata.setText(value);
                TextView tdata = findViewById(R.id.tempareture);
                tdata.setText("ok");
            }

            @Override
            public void onCancelled(DatabaseError error) {
                // Failed to read value
                Log.w("light", "Failed to read value.", error.toException());
            }
        });
    }

    private void onClickPushData() {
        //         Write a message to the database
        FirebaseDatabase database = FirebaseDatabase.getInstance();
        DatabaseReference Hour = database.getReference("hour");
        DatabaseReference minute = database.getReference("minute");
        DatabaseReference threshold = database.getReference("threshold");

        Hour.setValue(edtHour.getText().toString().trim());
        minute.setValue(edtMinute.getText().toString().trim());
        threshold.setValue(edtThreshold.getText().toString().trim());
    }
    }