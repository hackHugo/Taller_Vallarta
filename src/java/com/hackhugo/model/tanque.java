/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hackhugo.model;

/**
 *
 * @author hackhugo
 */
public class tanque {

    Integer id_tanque;
    String nombre_tanque, color;
    Double volumen;

    public Integer getId_tanque() {
        return id_tanque;
    }

    public void setId_tanque(Integer id_tanque) {
        this.id_tanque = id_tanque;
    }

    public String getNombre_tanque() {
        return nombre_tanque;
    }

    public void setNombre_tanque(String nombre_tanque) {
        this.nombre_tanque = nombre_tanque;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public Double getVolumen() {
        return volumen;
    }

    public void setVolumen(Double volumen) {
        this.volumen = volumen;
    }



}
