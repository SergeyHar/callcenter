package com.callcenter.model;


public enum UserRole {
    ADMIN("admin"),
    COMPANY("company"),
    AGENT("agent"),
    QA("qa");

    private final String shortCode;

    UserRole(String code) {
        this.shortCode = code;
    }

    public String getRoleType() {
        return this.shortCode;
    }

}
