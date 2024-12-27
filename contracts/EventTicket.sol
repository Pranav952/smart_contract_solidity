// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract EventTicket {
    uint public numberOfTicket;
    uint public ticketPrice;
    uint public totalAmount;
    uint public startAt;
    uint public endAt;
    uint public timeRange;

    string public message = "Buy your first ticket";

    constructor(uint _ticketPrice) {
        ticketPrice = _ticketPrice;
        startAt = block.timestamp;
        endAt = block.timestamp + 7 days;
        timeRange = (endAt - startAt) / 60 / 60 / 24;
    }

    function buyTicket(uint _value) public returns (uint ticketId) {
        numberOfTicket++;
        totalAmount += _value;
        ticketId = numberOfTicket;
    }
}
