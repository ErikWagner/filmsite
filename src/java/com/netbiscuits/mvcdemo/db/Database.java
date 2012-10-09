package com.netbiscuits.mvcdemo.db;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.netbiscuits.mvcdemo.model.tmdbMovie;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Database {

    private static ArrayList<tmdbMovie> tmdbMovies = new ArrayList<tmdbMovie>();
    private static ArrayList<tmdbMovie> tmdbMovieDetails = new ArrayList<tmdbMovie>();
    //Note: no actual real time connection to The Movie Database is made a this time. All data has been captured and stored locally.
    private static final String JSONURL = "http://ec2-184-73-24-243.compute-1.amazonaws.com/mvcdemo/top100.json";

    private static void log(String toLog) {
        Logger.getLogger(Database.class.getName()).log(Level.INFO, toLog);
    }

    private static String readUrl(String urlString) throws Exception {
        BufferedReader reader = null;
        try {
            URL url = new URL(urlString);
            reader = new BufferedReader(new InputStreamReader(url.openStream()));
            StringBuilder buffer = new StringBuilder();
            int read;
            char[] chars = new char[1024];
            while ((read = reader.read(chars)) != -1) {
                buffer.append(chars, 0, read);
            }

            return buffer.toString();
        } finally {
            if (reader != null) {
                reader.close();
            }
        }

    }

    public static Collection<tmdbMovie> getTmdbMovies() {
        if (tmdbMovies.isEmpty()) {
            try {
                String json = readUrl(JSONURL);
                Logger.getLogger(Database.class.getName()).log(Level.INFO, null, "Database starting to fetch movies from: " + JSONURL);

                Gson gson = new Gson();
                JsonParser parser = new JsonParser();
                JsonArray Jarray = parser.parse(json).getAsJsonArray();

                for (JsonElement obj : Jarray) {
                    tmdbMovie cse = gson.fromJson(obj, tmdbMovie.class);
                    tmdbMovies.add(cse);
                }

            } catch (IOException ex) {
                Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            } catch (Exception ex) {
                Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
            }
        }
        return tmdbMovies;
    }

    private static tmdbMovie getMovieFromArray(String id) {

        try {
        for (int i = 0; i < tmdbMovieDetails.size(); i++) {
            if (tmdbMovieDetails.get(i).getId().equals(id)) {
                return tmdbMovieDetails.get(i);
            }
        }
        } catch (NullPointerException ex) {
            return null;
        } finally {
            return null;
        }
    }

    private static tmdbMovie loadFromFile(String id) {
        tmdbMovie myMovie = null;
        try {

            String jsonURL = "http://ec2-184-73-24-243.compute-1.amazonaws.com/mvcdemo/ajax/" + id + ".json";
            log("Database starting to fetch movies from: " + jsonURL);
            String json = readUrl(jsonURL);
            log(json);
            Gson gson = new Gson();
            JsonParser parser = new JsonParser();
            JsonArray Jarray = parser.parse(json).getAsJsonArray();

            for (JsonElement obj : Jarray) {
                myMovie = gson.fromJson(obj, tmdbMovie.class);

            }


        } catch (Exception ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
        return myMovie;
    }

    public static tmdbMovie getMovieById(String id) {
        log("in getTmdbMovieDetails");
        tmdbMovie myMovie;
        if (tmdbMovieDetails.isEmpty()) {
            log("array is empty");
            //loadMovie from File and add to Array
            myMovie = loadFromFile(id);
            tmdbMovieDetails.add(myMovie);
        } else {
            //search for Movie in Array
            myMovie = getMovieFromArray(id);
            //if doesn't exist loadFromFile and add to Array
            if (myMovie == null) {
                myMovie = loadFromFile(id);
                tmdbMovieDetails.add(myMovie);
            }
            //if does exist return
        }
        return myMovie;

    }
}
