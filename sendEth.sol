pragma solidity ^0.8.0;

contract sendEth {
    function transfer(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed");
    }
}