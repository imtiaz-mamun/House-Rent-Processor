/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.models;

/**
 *
 * @author antu
 */
public class LocationInfoModeling {

    private String location_name;
    private double latitude_x;
    private double longitude_y;
    

    public String getLocation_name() {
        return location_name;
    }

    public void setLocation_name(String location_name) {
        this.location_name = location_name;
    }

    public double getLatitude_x() {
        return latitude_x;
    }

    public void setLatitude_x(double Latitude_x) {
        this.latitude_x = Latitude_x;
    }

    public double getLongitude_y() {
        return longitude_y;
    }

    public void setLongitude_y(double Longitude_y) {
        this.longitude_y = Longitude_y;
    }

}
