package com.model;

public class TestConnection {
    public static void main(String[] args) {
        sloginadmin admin = new sloginadmin();
        slogin s = new slogin("testuser", "testpassword"); // Use the credentials inserted into the DB
        try {
            boolean isValid = admin.StudentValidate(s);
            System.out.println("Is valid user: " + isValid);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
