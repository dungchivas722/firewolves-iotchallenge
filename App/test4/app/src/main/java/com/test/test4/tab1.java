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

        TextView te1 = v.findViewById(R.id.tempareture1);
        TextView ai1 = v.findViewById(R.id.air1);
        TextView li1 = v.findViewById(R.id.light1);
        TextView hu1 = v.findViewById(R.id.humidity_soil1);

        TextView te2 = v.findViewById(R.id.tempareture2);
        TextView ai2 = v.findViewById(R.id.air2);
        TextView li2 = v.findViewById(R.id.light2);
        TextView hu2 = v.findViewById(R.id.humidity_soil2);

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

        // READ DATA FROM DATABASE
        data.addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(DataSnapshot dataSnapshot) {
                // This method is called once with the initial value and again
                // whenever data at this location is updated.
                data value = dataSnapshot.getValue(data.class);
                String[] setting = value.toString().split(",");
                int[] parts = value.toInt();

                TextView t1 = v.findViewById(R.id.tempareture1);
                TextView a1 = v.findViewById(R.id.air1);
                TextView l1 = v.findViewById(R.id.light1);
                TextView s1 = v.findViewById(R.id.hum_soil1);

                TextView t2 = v.findViewById(R.id.tempareture2);
                TextView a2 = v.findViewById(R.id.air2);
                TextView l2 = v.findViewById(R.id.light2);
                TextView s2 = v.findViewById(R.id.hum_soil2);

                s1.setText(parts[4] + "%");
                s2.setText(parts[5] + "%");
                t1.setText(parts[6] + " C");
                t2.setText(parts[7] + " C");
                a1.setText(parts[8] + "%");
                a2.setText(parts[9] + "%");
                l1.setText(parts[10] + "%");
                l2.setText(parts[11] + "%");

                if(parts[0] == 1) pumb1.setChecked(true);
                else pumb1.setChecked(false);

                if(parts[1] == 1) pumb2.setChecked(true);
                else pumb2.setChecked(false);

                if(parts[2] == 1) light1.setChecked(true);
                else light1.setChecked(false);

                if(parts[3] == 1) light2.setChecked(true);
                else light2.setChecked(false);

//                edtHour.setText(setting[0] + " :");
//                edtMinute.setText(setting[1] + " tưới");
//                edtThreshold.setText(setting[2] + "% tưới");
//                edtTime.setText(setting[3] + " phút");
            }

            @Override
            public void onCancelled(DatabaseError error) {
                // Failed to read value
            }
        });

        return v;
    }
}
