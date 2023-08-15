package ajiet.ise.dept.temperature_convertor;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.TextView;

import java.text.DecimalFormat;

public class MainActivity extends AppCompatActivity {

    EditText t1;
    RadioButton ic,inf,ik,oc,of,ok;
    TextView t2,tt;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        t1=findViewById(R.id.input);
        t2=findViewById(R.id.output);
        ic=findViewById(R.id.inputc);
        inf=findViewById(R.id.inputf);
        ik=findViewById(R.id.inputk);
        oc=findViewById(R.id.outputc);
        of=findViewById(R.id.outputf);
        ok=findViewById(R.id.outputk);
        tt=findViewById(R.id.temptype);



        ic.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                double temp=Double.parseDouble(t1.getText().toString().trim());
                tt.setText("°C");
                oc.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        t2.setText(temp + "°C");
                    }
                });
                of.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        double fren=(temp*(9/5))+32;
                        t2.setText(fren + "°F");
                    }
                });
                ok.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        t2.setText((temp + 273.15) + "K");
                    }
                });
            }
        });

        inf.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                double temp=Double.parseDouble(t1.getText().toString().trim());
                tt.setText("°F");
                oc.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        double cel=(temp-32)*5/9;
                        DecimalFormat decimalFormat = new DecimalFormat("#.###");
                        String cel2 = decimalFormat.format(cel);
                        t2.setText(cel2 +"°C");
                    }
                });
                of.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        t2.setText(temp + "°F");
                    }
                });
                ok.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        double cel=((temp-32)*5/9)+273.15;
                        DecimalFormat decimalFormat = new DecimalFormat("#.###");
                        String cel2 = decimalFormat.format(cel);
                        t2.setText(String.format("%sK", cel2));
                    }
                });
            }
        });

        ik.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                double temp=Double.parseDouble(t1.getText().toString().trim());
                tt.setText("K");
                oc.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        double cel=temp-273.15;
                        DecimalFormat decimalFormat = new DecimalFormat("#.###");
                        String cel2 = decimalFormat.format(cel);
                        t2.setText( cel2+ "°C");
                    }
                });
                of.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        double cel=((temp-273.15)*9/5)+32;
                        DecimalFormat decimalFormat = new DecimalFormat("#.###");
                        String cel2 = decimalFormat.format(cel);
                        t2.setText(cel2+ "°F");
                    }
                });
                ok.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        t2.setText(temp+ "K");
                    }
                });
            }
        });





    }
}