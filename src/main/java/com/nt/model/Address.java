package com.nt.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(
    name = "address",
    uniqueConstraints = {
        @UniqueConstraint(columnNames = {"user_id", "house", "city", "pincode"})
    }
)
public class Address {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String house;
    private String city;
    private String pincode;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;  
}
