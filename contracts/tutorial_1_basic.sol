pragma solidity ^0.8.10;

contract tutorial_1_basic {
  string private name;
  uint private age;

  function setName(string memory newName) public {
    name = newName;
  }

  function getName() public view returns(string memory) {
    return name;
  }

  function setAge(uint myAge) public {
    age = myAge;
  }

  function getAge() public view returns(uint) {
    return age;
  }
}