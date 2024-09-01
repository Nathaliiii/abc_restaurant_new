package com.abc.model;

public class Order {
    private String customerName;
    private String contactNumber;
    private String foodItem;
    private int quantity;
    private String specialRequests;
    private String paymentMethod;

    // Constructor
    public Order(String customerName, String contactNumber, String foodItem, int quantity, String specialRequests, String paymentMethod) {
        this.customerName = customerName;
        this.contactNumber = contactNumber;
        this.foodItem = foodItem;
        this.quantity = quantity;
        this.specialRequests = specialRequests;
        this.paymentMethod = paymentMethod;
    }

    // Getters and Setters
    public String getCustomerName() { return customerName; }
    public void setCustomerName(String customerName) { this.customerName = customerName; }

    public String getContactNumber() { return contactNumber; }
    public void setContactNumber(String contactNumber) { this.contactNumber = contactNumber; }

    public String getFoodItem() { return foodItem; }
    public void setFoodItem(String foodItem) { this.foodItem = foodItem; }

    public int getQuantity() { return quantity; }
    public void setQuantity(int quantity) { this.quantity = quantity; }

    public String getSpecialRequests() { return specialRequests; }
    public void setSpecialRequests(String specialRequests) { this.specialRequests = specialRequests; }

    public String getPaymentMethod() { return paymentMethod; }
    public void setPaymentMethod(String paymentMethod) { this.paymentMethod = paymentMethod; }
}

