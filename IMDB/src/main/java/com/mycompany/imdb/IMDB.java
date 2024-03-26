/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.imdb;

import Connect.ConnectDB;

/**
 *
 * @author kakas
 */
public class IMDB {
    public ConnectDB db = new ConnectDB();
    public static void main(String[] args) {
        System.out.println("Hello World!");
        //db.
        ConnectDB.insertNationality("Costarricense");
    }
}
