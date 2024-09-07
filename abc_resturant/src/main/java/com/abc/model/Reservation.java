package com.abc.model;

public class Reservation {
    private String id;
    private String name;
    private int numberOfPeople; 
    private String date;
    private String time;
    private String status;

   
    public Reservation(String id, String name, int numberOfPeople, String date, String time, String status) {
        this.id = id;
        this.name = name;
        this.numberOfPeople = numberOfPeople;
        this.date = date;
        this.time = time;
        this.status = status;
    }

   
    public Reservation(String name, int numberOfPeople, String date, String time) {
        this.name = name;
        this.numberOfPeople = numberOfPeople;
        this.date = date;
        this.time = time;
    }

   
    public Reservation() {}

    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNumberOfPeople() {
        return numberOfPeople;
    }

    public void setNumberOfPeople(int numberOfPeople) {
        this.numberOfPeople = numberOfPeople;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}

