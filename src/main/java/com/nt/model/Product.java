package com.nt.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "myproduct")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Lob
    private byte[] image;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private double price;
}
