pragma solidity ^0.8.10;

library IntExtended {
  function increment(uint _self) public pure returns(uint) {
    return _self + 1;
  }

  function decrement(uint _self) public pure returns(uint) {
    return _self - 1;
  }

  function incrementByValue(uint _self, uint _value) public pure returns(uint) {
    return _self + _value;
  }

  function decrementByValue(uint _self, uint _value) public pure returns(uint) {
    return _self - _value;
  }
}

contract tutorial_4_imports_and_libraries {
  using IntExtended for uint;

  function testIncrement(uint _base) public pure returns (uint) {
    return _base.increment();
  }

  function testDecrement(uint _base) public pure returns (uint) {
    return _base.decrement();
  }

  function testIncrementByValue(uint _base, uint _value) public pure returns (uint) {
    return _base.incrementByValue(_value);
  }

  function testDecrementByValue(uint _base, uint _value) public pure returns (uint) {
    return _base.decrementByValue(_value);
  }
}