// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Collections {

    /** Array collection */
    struct User {
        uint id;
        string name;
    }

    User[] public users;

    function createUser(string memory name) external {
        users.push(User(users.length, name));
    }

    function getAllUsers() external view returns(User[] memory) {
        return users;
    }

    /** Mapping collection */
    struct Dog {
        uint id;
        string name;
    }

    mapping(uint => Dog) public dogs;

    uint nextDogId;

    function createDog(string memory name) external {
        dogs[nextDogId] = Dog(nextDogId, name);
        nextDogId++;
    }
}