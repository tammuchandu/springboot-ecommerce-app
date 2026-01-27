package com.nt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.model.Address;
import com.nt.model.User;
import com.nt.repo.AddressRepositoryINF;

@Service
public class AddressServiceImpl implements AddressServiceINF {

    @Autowired
    private AddressRepositoryINF repo;

    @Override
    public Address saveAddress(Address address, User user) {

        // Check if this user already has this address
        Address existingAddress = repo.findByUserAndHouseAndCityAndPincode(
                user,
                address.getHouse(),
                address.getCity(),
                address.getPincode()
        );

        if (existingAddress != null) {
            // Update existing address if needed
            existingAddress.setHouse(address.getHouse());
            existingAddress.setCity(address.getCity());
            existingAddress.setPincode(address.getPincode());
            return repo.save(existingAddress);
        }

        // Set user and save new address
        address.setUser(user);
        return repo.save(address);
    }
}
