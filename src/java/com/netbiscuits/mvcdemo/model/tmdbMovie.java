/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.netbiscuits.mvcdemo.model;

import com.google.gson.annotations.SerializedName;
import java.util.List;

/**
 *
 * @author ewagner
 */
public class tmdbMovie {
    private String score;
    private String popularity;
    private String translated;
    private String adult;
    private String language;
    private String original_name;
    private String name;
    private String alternative_name;
    private String movie_type;
    private String id;
    private String imdb_id;
    private String url;
    private String votes;
    private String rating;
    private String tagline;
    private String certification;
    private String overview;
    private String trailer;
    private String runtime;
    private String released;
    @SerializedName("posters")
    private List<tmdbPoster> posters;
    private List<tmdbPoster> backdrops;

    
    @Override
  public String toString() {
    return "Name: " + getName() + "\nRating: " + getRating() + "\nOverview: " + getOverview() + "\nImages: " + getPosters().size()+ "\nBackdrops: " + getBackdrops().size();
  }

    /**
     * @return the posters
     */
    public List<tmdbPoster> getPosters() {
        return posters;
    }


    /**
     * @return the backdrops
     */
    public List<tmdbPoster> getBackdrops() {
        return backdrops;
    }

    /**
     * @return the score
     */
    public String getScore() {
        return score;
    }

    /**
     * @param score the score to set
     */
    public void setScore(String score) {
        this.score = score;
    }

    /**
     * @return the popularity
     */
    public String getPopularity() {
        return popularity;
    }

    /**
     * @param popularity the popularity to set
     */
    public void setPopularity(String popularity) {
        this.popularity = popularity;
    }

    /**
     * @return the translated
     */
    public String getTranslated() {
        return translated;
    }

    /**
     * @param translated the translated to set
     */
    public void setTranslated(String translated) {
        this.translated = translated;
    }

    /**
     * @return the adult
     */
    public String getAdult() {
        return adult;
    }

    /**
     * @param adult the adult to set
     */
    public void setAdult(String adult) {
        this.adult = adult;
    }

    /**
     * @return the language
     */
    public String getLanguage() {
        return language;
    }

    /**
     * @param language the language to set
     */
    public void setLanguage(String language) {
        this.language = language;
    }

    /**
     * @return the original_name
     */
    public String getOriginal_name() {
        return original_name;
    }

    /**
     * @param original_name the original_name to set
     */
    public void setOriginal_name(String original_name) {
        this.original_name = original_name;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the alternative_name
     */
    public String getAlternative_name() {
        return alternative_name;
    }

    /**
     * @param alternative_name the alternative_name to set
     */
    public void setAlternative_name(String alternative_name) {
        this.alternative_name = alternative_name;
    }

    /**
     * @return the movie_type
     */
    public String getMovie_type() {
        return movie_type;
    }

    /**
     * @param movie_type the movie_type to set
     */
    public void setMovie_type(String movie_type) {
        this.movie_type = movie_type;
    }

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the imdb_id
     */
    public String getImdb_id() {
        return imdb_id;
    }

    /**
     * @param imdb_id the imdb_id to set
     */
    public void setImdb_id(String imdb_id) {
        this.imdb_id = imdb_id;
    }

    /**
     * @return the url
     */
    public String getUrl() {
        return url;
    }

    /**
     * @param url the url to set
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * @return the votes
     */
    public String getVotes() {
        return votes;
    }

    /**
     * @param votes the votes to set
     */
    public void setVotes(String votes) {
        this.votes = votes;
    }

    /**
     * @return the rating
     */
    public String getRating() {
        return rating;
    }

    /**
     * @param rating the rating to set
     */
    public void setRating(String rating) {
        this.rating = rating;
    }

    /**
     * @return the certification
     */
    public String getCertification() {
        return certification;
    }

    /**
     * @param certification the certification to set
     */
    public void setCertification(String certification) {
        this.certification = certification;
    }

    /**
     * @return the overview
     */
    public String getOverview() {
        return overview;
    }

    /**
     * @param overview the overview to set
     */
    public void setOverview(String overview) {
        this.overview = overview;
    }

    /**
     * @param posters the posters to set
     */
    public void setPosters(List<tmdbPoster> posters) {
        this.posters = posters;
    }

    /**
     * @param backdrops the backdrops to set
     */
    public void setBackdrops(List<tmdbPoster> backdrops) {
        this.backdrops = backdrops;
    }

    /**
     * @return the trailer
     */
    public String getTrailer() {
        return trailer;
    }

    /**
     * @param trailer the trailer to set
     */
    public void setTrailer(String trailer) {
        this.trailer = trailer;
    }

    /**
     * @return the tagline
     */
    public String getTagline() {
        return tagline;
    }

    /**
     * @param tagline the tagline to set
     */
    public void setTagline(String tagline) {
        this.tagline = tagline;
    }

    /**
     * @return the runtime
     */
    public String getRuntime() {
        return runtime;
    }

    /**
     * @param runtime the runtime to set
     */
    public void setRuntime(String runtime) {
        this.runtime = runtime;
    }

    /**
     * @return the released
     */
    public String getReleased() {
        return released;
    }

    /**
     * @param released the released to set
     */
    public void setReleased(String released) {
        this.released = released;
    }


}
