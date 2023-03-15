package com.example.modal;

public class Customer {
    String name ;
    String dob;
    String address;
    String avarta;

    public Customer(String name, String dob, String address, String avarta) {
        this.name = name;
        this.dob = dob;
        this.address = address;
        this.avarta = avarta;
    }

    public Customer() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAvarta() {
        return avarta;
    }

    public void setAvarta(String avarta) {
        this.avarta = avarta;
    }
}
