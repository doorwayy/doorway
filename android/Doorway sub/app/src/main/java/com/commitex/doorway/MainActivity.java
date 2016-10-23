package com.commitex.doorway;

import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class MainActivity extends AppCompatActivity {

    //static final String API_KEY = "USE_YOUR_OWN_API_KEY";
    //static final String API_URL = "https://api.fullcontact.com/v2/person.json?";
    static final String API_URL = "https://saas-ninja.ngrok.io/locations/closest";
    static final String API_URL2 = "https://saas-ninja.ngrok.io/beds/available";
    static final String API_URL3 = "https://saas-ninja.ngrok.io/cases/open";


    //EditText emailText;
    //TextView responseView;
    //ProgressBar progressBar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        /*
        responseView = (TextView) findViewById(R.id.responseView);
        //emailText = (EditText) findViewById(R.id.emailText);
        progressBar = (ProgressBar) findViewById(R.id.progressBar);

        Button queryButton = (Button) findViewById(R.id.queryButton);
        queryButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                new RetrieveFeedTask().execute();
            }
        });
        */

        ImageButton summaryButton = (ImageButton) findViewById(R.id.imgBtnSummary);
        summaryButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ImageView imvDisplay = (ImageView) findViewById(R.id.graph);
                imvDisplay.setImageDrawable(getResources().getDrawable(R.drawable.chart, getApplicationContext().getTheme()));
            }
        });

        /*

        ImageButton jobTraining = (ImageButton) findViewById(R.id.imgBtnJobTraining);
        summaryButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ImageView imvDisplay = (ImageView) findViewById(R.id.graph);
                imvDisplay.setImageDrawable(getResources().getDrawable(R.drawable.orders, getApplicationContext().getTheme()));
            }
        });
        */

        new RetrieveFeedTask().execute();
        new RetrieveFeedTask2().execute();
        //new RetrieveFeedTask3().execute();


    }


    //===================================================================

    //===================================================================

    class RetrieveFeedTask extends AsyncTask<Void, Void, String> {

        private Exception exception;

        protected void onPreExecute() {
            //progressBar.setVisibility(View.VISIBLE);
            //responseView.setText("");
        }

        protected String doInBackground(Void... urls) {
            /////////String email = emailText.getText().toString();
            // Do some validation here

            try {
                //URL url = new URL(API_URL + "email=" + email + "&apiKey=" + API_KEY);
                URL url = new URL(API_URL);
                HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));
                    StringBuilder stringBuilder = new StringBuilder();
                    String line;
                    while ((line = bufferedReader.readLine()) != null) {
                        stringBuilder.append(line).append("\n");
                    }
                    bufferedReader.close();
                    return stringBuilder.toString();
                } finally {
                    urlConnection.disconnect();
                }
            } catch (Exception e) {
                Log.e("ofra: ERROR", e.getMessage(), e);
                return null;
            }
        }

        protected void onPostExecute(String response) {
            if (response == null) {
                response = "ofra: THERE WAS AN ERROR";
            }
            //progressBar.setVisibility(View.GONE);
            Log.i("ofra:  INFO", response);
            JSONObject object = null;
            try {
                object = (JSONObject) new JSONTokener(response).nextValue();

            } catch (JSONException e) {
                e.printStackTrace();
            }
            try {
                Log.i("ofra: INFO", object.getString("closest"));
                TextView txtclosest = (TextView) findViewById(R.id.txtclosest);
                txtclosest.setText(object.getString("closest"));

            } catch (JSONException e) {
                e.printStackTrace();
            }

            //responseView.setText(response);
            // TODO: check this.exception
            // TODO: do something with the feed

            /*
            try {
                JSONObject object = (JSONObject) new JSONTokener(response).nextValue();
                String closestShelter = object.getString("closest");
                String requestID = object.getString("requestId");
                int likelihood = object.getInt("likelihood");
                JSONArray photos = object.getJSONArray("photos");
                Log.i("ofra:  closest", "a"+closestShelter);

            } catch (JSONException e) {
                e.printStackTrace();
            }
            */
        }
    }


    //==========================================================

    class RetrieveFeedTask2 extends AsyncTask<Void, Void, String> {

        private Exception exception;

        protected void onPreExecute() {
            //progressBar.setVisibility(View.VISIBLE);
            //responseView.setText("");
        }

        protected String doInBackground(Void... urls) {
            /////////String email = emailText.getText().toString();
            // Do some validation here

            try {
                //URL url = new URL(API_URL + "email=" + email + "&apiKey=" + API_KEY);
                URL url = new URL(API_URL2);
                HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));
                    StringBuilder stringBuilder = new StringBuilder();
                    String line;
                    while ((line = bufferedReader.readLine()) != null) {
                        stringBuilder.append(line).append("\n");
                    }
                    bufferedReader.close();
                    return stringBuilder.toString();
                } finally {
                    urlConnection.disconnect();
                }
            } catch (Exception e) {
                Log.e("ofra: ERROR 2", e.getMessage(), e);
                return null;
            }
        }

        protected void onPostExecute(String response) {
            if (response == null) {
                response = "ofra: THERE WAS AN ERROR2";
            }
            //progressBar.setVisibility(View.GONE);
            Log.i("ofra:  INFO 2", response);
            JSONObject object = null;
            try {
                object = (JSONObject) new JSONTokener(response).nextValue();
            } catch (JSONException e) {
                e.printStackTrace();
            }
            try {
                Log.i("ofra: INFO 2", object.getString("beds_count"));
                TextView txtBedsCount = (TextView) findViewById(R.id.txtBedsNum);
                txtBedsCount.setText(object.getString("beds_count") + "\nBeds Available");

            } catch (JSONException e) {
                e.printStackTrace();
            }
            //responseView.setText(response);
            // TODO: check this.exception
            // TODO: do something with the feed

            /*
            try {
                JSONObject object = (JSONObject) new JSONTokener(response).nextValue();
                String closestShelter = object.getString("closest");
                String requestID = object.getString("requestId");
                int likelihood = object.getInt("likelihood");
                JSONArray photos = object.getJSONArray("photos");
                Log.i("ofra:  closest", "a"+closestShelter);

            } catch (JSONException e) {
                e.printStackTrace();
            }
            */
        }
    }

    //===================================================================
/*
    class RetrieveFeedTask3 extends AsyncTask<Void, Void, String> {

        private Exception exception;

        protected void onPreExecute() {
            //progressBar.setVisibility(View.VISIBLE);
            //responseView.setText("");
        }

        protected String doInBackground(Void... urls) {
            /////////String email = emailText.getText().toString();
            // Do some validation here

            try {
                //URL url = new URL(API_URL + "email=" + email + "&apiKey=" + API_KEY);
                URL url = new URL(API_URL3);
                HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));
                    StringBuilder stringBuilder = new StringBuilder();
                    String line;
                    while ((line = bufferedReader.readLine()) != null) {
                        stringBuilder.append(line).append("\n");
                    }
                    bufferedReader.close();
                    return stringBuilder.toString();
                } finally {
                    urlConnection.disconnect();
                }
            } catch (Exception e) {
                Log.e("ofra: ERROR", e.getMessage(), e);
                return null;
            }
        }

        protected void onPostExecute(String response) {
            if (response == null) {
                response = "ofra: THERE WAS AN ERROR";
            }
            //progressBar.setVisibility(View.GONE);
            Log.i("ofra:  INFO", response);
            JSONObject object = null;
            try {
                object = (JSONObject) new JSONTokener(response).nextValue();

            } catch (JSONException e) {
                e.printStackTrace();
            }

            //===================================================================
            List<Map<String,String>> theList = new ArrayList<Map<String,String>>();

            try{
                JSONObject jsonResponse = new JSONObject(response);
                JSONArray jsonMainNode = jsonResponse.optJSONArray("open_cases_array");

                for(int i = 0; i<jsonMainNode.length();i++){
                    JSONObject jsonChildNode = jsonMainNode.getJSONObject(i);
                    String caseNumber = jsonChildNode.optString("case_number");
                    String subject = jsonChildNode.optString("subject");
                    String startDate = jsonChildNode.optString("start_date");
                    String outPut = caseNumber + "--->" +subject+ "--->" +startDate;
                    Log.i("ofra: INFO", "a " + caseNumber + " " + subject + " " + startDate);


                    // init list
                    HashMap<String, String> employeeNameNo = new HashMap<String, String>();
                    employeeNameNo.put(name, number);
                    countryList.add(employeeNameNo);


                    ListView listView = (ListView) findViewById(R.id.list_view1);
                    SimpleAdapter simpleAdapter =
                            new SimpleAdapter(this, countryList, android.R.layout.simple_list_item_1, new String[] {"country"}, new int[] {android.R.id.text1});
                    listView.setAdapter(simpleAdapter);

                }
            }
            catch(JSONException e){
                Toast.makeText(getApplicationContext(), "Error"+e.toString(), Toast.LENGTH_SHORT).show();
            }


            //===================================================================


            //responseView.setText(response);
            // TODO: check this.exception
            // TODO: do something with the feed


//            try {
//                JSONObject object = (JSONObject) new JSONTokener(response).nextValue();
//                String closestShelter = object.getString("closest");
//                String requestID = object.getString("requestId");
//                int likelihood = object.getInt("likelihood");
//                JSONArray photos = object.getJSONArray("photos");
//                Log.i("ofra:  closest", "a"+closestShelter);
//
//            } catch (JSONException e) {
//                e.printStackTrace();
//            }

        }
    }

*/
}
