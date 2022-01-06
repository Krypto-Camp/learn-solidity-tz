pragma solidity ^0.8.10;

interface Regulator {
  function checkSaving(uint amount) external returns (bool);
  function loan() external returns (bool);
}
contract Bank is Regulator {
  uint private saving;

  constructor(uint amount) {
    saving = amount;
  }

  function deposit(uint amount) public {
    saving +=amount;
  }

  function withdraw(uint amount) public {
    if (checkSaving((amount))) {
     saving -=amount;
    }
  }

  function balance() public view returns(uint) {
    return saving;
  }

  function checkSaving(uint amount) public view returns (bool) {
    return saving >= amount;
  }

  function loan() public view returns (bool) {
    return saving > 0;
  }
}
contract tutorial_3_modifiers_and_error_handle is Bank(10) {
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