package com.callcenter.model;


public enum Gender {

    MALE("male"),
    FEMALE("female");

    private final String shortCode;

    Gender(String code) {
        this.shortCode = code;
    }

    public String getGender() {
        return this.shortCode;
    }
}
