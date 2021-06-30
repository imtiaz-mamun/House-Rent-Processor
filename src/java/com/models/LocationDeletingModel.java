/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.models;

import java.util.List;

/**
 *
 * @author antu
 */
public class LocationDeletingModel {
    private List<String> locationsToBeDeleted;

    public List<String> getLocationsToBeDeleted() {
        return locationsToBeDeleted;
    }

    public void setLocationsToBeDeleted(List<String> locationsToBeDeleted) {
        this.locationsToBeDeleted = locationsToBeDeleted;
    }

}
