package com.nt.service;

import com.nt.model.Address;
import com.nt.model.User;

public interface AddressServiceINF {

    /**
     * Saves or updates address for a given user.
     * If the same address already exists for the user, it updates it.
     *
     *address the address info
     * user the logged-in user
     *  saved or updated Address
     */
    Address saveAddress(Address address, User user);
}
