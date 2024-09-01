package com.abc.model;

public class Restaurant {
    private String email;
    private String websiteLink;
    private String operatingHours;
    private int seatingCapacity;
    private String deliveryPartners;
    private String restaurantDescription;

    // Getters and setters for all fields
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getWebsiteLink() { return websiteLink; }
    public void setWebsiteLink(String websiteLink) { this.websiteLink = websiteLink; }
    public String getOperatingHours() { return operatingHours; }
    public void setOperatingHours(String operatingHours) { this.operatingHours = operatingHours; }
    public int getSeatingCapacity() { return seatingCapacity; }
    public void setSeatingCapacity(int seatingCapacity) { this.seatingCapacity = seatingCapacity; }
    public String getDeliveryPartners() { return deliveryPartners; }
    public void setDeliveryPartners(String deliveryPartners) { this.deliveryPartners = deliveryPartners; }
    public String getRestaurantDescription() { return restaurantDescription; }
    public void setRestaurantDescription(String restaurantDescription) { this.restaurantDescription = restaurantDescription; }
}

