package com.nt.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import com.nt.model.Address;
import com.nt.model.User;

public interface AddressRepositoryINF extends JpaRepository<Address, Long> {

    // Find if user already has this address
    Address findByUserAndHouseAndCityAndPincode(User user, String house, String city, String pincode);
}
