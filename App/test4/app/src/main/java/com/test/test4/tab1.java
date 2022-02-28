package com.test.test4;

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

public class tab1 extends Fragment {
    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View v = inflater.inflate(R.layout.tab1_layout,container,false);

        FirebaseDatabase database = FirebaseDatabase.getInstance();
        DatabaseReference dt_sw_pumb1 = database.getReference("data/sw_pumb1");
        DatabaseReference sw_pumb2 = database.getReference("data/sw_pumb2");
        DatabaseReference sw_light1 = database.getReference("data/sw_light1");
        DatabaseReference sw_light2 = database.getReference("data/sw_light2");
        DatabaseReference humidity_soil1 = database.getReference("data/humidity_soil1");
        DatabaseReference humidity_soil2 = database.getReference("data/humidity_soil2");
        DatabaseReference data = database.getReference("data");

//
//        FirebaseDatabase database = FirebaseDatabase.getInstance();
//        DatabaseReference myRef = database.getReference("message");
//
//        myRef.setValue("Hello, World!");
//        myRef.addValueEventListener(new ValueEventListener() {
//            @Override
//            public void onDataChange(DataSnapshot dataSnapshot) {
//                // This method is called once with the initial value and again
//                // whenever data at this location is updated.
//                String value = dataSnapshot.getValue(String.class);
//                edtHour2.setText(value);
//            }
//
//            @Override
//            public void onCancelled(DatabaseError error) {
//                // Failed to read value
//            }
//        });

        Switch pumb1 = (Switch) v.findViewById(R.id.sw_pumb1);
        pumb1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean checked = ((Switch) v).isChecked();
                if (checked){
                    // Your code
                    dt_sw_pumb1.setValue(1);
                }
                else{
                    // Your code
                    dt_sw_pumb1.setValue(0);
                }
            }
        });

        Switch pumb2 = (Switch) v.findViewById(R.id.sw_pumb2);
        pumb2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean checked = ((Switch) v).isChecked();
                if (checked){
                    // Your code
                    sw_pumb2.setValue(1);
                }
                else{
                    // Your code
                    sw_pumb2.setValue(0);
                }
            }
        });
        Switch light1 = (Switch) v.findViewById(R.id.sw_light1);
        light1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean checked = ((Switch) v).isChecked();
                if (checked){
                    // Your code
                    sw_light1.setValue(1);
                }
                else{
                    // Your code
                    sw_light1.setValue(0);
                }
            }
        });
        Switch light2 = (Switch) v.findViewById(R.id.sw_light2);
        light2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                boolean checked = ((Switch) v).isChecked();
                if (checked){
                    // Your code
                    sw_light2.setValue(1);
                }
                else{
                    // Your code
                    sw_light2.setValue(0);
                }
            }
        });
        return v;
    }
}
