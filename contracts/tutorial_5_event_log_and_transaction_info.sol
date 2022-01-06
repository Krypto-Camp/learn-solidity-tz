pragma solidity ^0.8.10;

contract tutorial_5_event_log_and_transaction_info {

  event SenderLogger(address);
  event ValueLogger(uint);

  address private owner;

  constructor() {
    owner = msg.sender;
  }

  modifier isOwner {
    require(owner == msg.sender);
    _;
  }

  modifier validValue {
    require(msg.value >= 1 ether);
    _;
  }
  function transaction() public {
    owner = msg.sender;
  }
  fallback() external payable isOwner validValue{
    emit SenderLogger(msg.sender);
    emit ValueLogger(msg.value);
  }
}