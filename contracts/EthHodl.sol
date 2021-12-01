pragma solidity ^0.5.0;
 
contract ethhodl {
    
    address payable owner;
    uint256 public amount;
    uint public unLockTime = block.timestamp + 365 days;   // amount of time to hodl your eth...
    
    function hodl() payable public {
        owner = msg.sender;
        amount = msg.value;
    }
    
    modifier onlyOwnerAtTime {
        require(msg.sender == owner && unLockTime < block.timestamp);
        _;
    }
 
    function send() public onlyOwnerAtTime {
            selfdestruct(owner);
    }
}