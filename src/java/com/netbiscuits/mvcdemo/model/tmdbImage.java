/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.netbiscuits.mvcdemo.model;

import com.google.gson.annotations.SerializedName;
import java.text.DecimalFormat;

/**
 *
 * @author ewagner
 */
public class tmdbImage {

    private String type;
    private String size;
    private String height;
    private String width;
    @SerializedName("url")
    private String url;
    private String id;
    
    public String getAspectRatio() {
        
        float w = new Float(this.getWidth());
        float h = new Float(this.getHeight());
        
        DecimalFormat df = new DecimalFormat("#0.##");
        return df.format(w/h);

        
        //return "" + Math.round(w/h);
    }
    
     @Override
  public String toString() {
    return "URL: " + getUrl() + "\nDimension: " + getWidth() + "x" + getHeight() +"\nType: " + getType() + "\nAspect Ratio: " + getAspectRatio();
  }

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * @return the size
     */
    public String getSize() {
        return size;
    }

    /**
     * @param size the size to set
     */
    public void setSize(String size) {
        this.size = size;
    }

    /**
     * @return the height
     */
    public String getHeight() {
        return height;
    }

    /**
     * @param height the height to set
     */
    public void setHeight(String height) {
        this.height = height;
    }

    /**
     * @return the width
     */
    public String getWidth() {
        return width;
    }

    /**
     * @param width the width to set
     */
    public void setWidth(String width) {
        this.width = width;
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
    
     
     
}
