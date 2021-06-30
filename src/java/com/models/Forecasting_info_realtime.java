/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.models;

/**
 *
 * @author Sajid
 */
public class Forecasting_info_realtime {

    private String startLocation;
    private String endLocation;
    private double forecasting;
    private int forecastingHour;
    private int forecastingMin;

    public String getStartLocation() {
        return startLocation;
    }

    public void setStartLocation(String startLocation) {
        this.startLocation = startLocation;
    }

    public String getEndLocation() {
        return endLocation;
    }

    public void setEndLocation(String endLocation) {
        this.endLocation = endLocation;
    }

    public double getForecasting() {
        return forecasting;
    }

    public void setForecasting(double forecasting) {
        this.forecasting = forecasting;
    }

    public int getForecastingHour() {
        return forecastingHour;
    }

    public void setForecastingHour(int forecastingHour) {
        this.forecastingHour = forecastingHour;
    }

    public int getForecastingMin() {
        return forecastingMin;
    }

    public void setForecastingMin(int forecastingMin) {
        this.forecastingMin = forecastingMin;
    }
    

    
}
