// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Factory {
    Child[] public children;

    event ChildCreated(
        uint date,
        uint data,
        address childAddress
    );

    function createChild(uint _data) external {
        Child child = new Child(_data);
        children.push(child);

        emit ChildCreated(block.timestamp, _data, address(child));
    }

    function getAllChildren() external view returns(Child[] memory) {
        return children;
    }
}

contract Child {
    uint public data;

    constructor (uint _data) {
        data = _data;
    }
}