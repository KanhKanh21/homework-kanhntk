// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract NumberManager {
  uint private totalSum;
  uint public lastAddedNumber;

  constructor() {
    totalSum = 0;
    lastAddedNumber = 0;
  }

  function addNumber(uint number) public {
    totalSum += number;
    lastAddedNumber = number;
  }

  function getTotalSum() external view returns (uint) {
    return totalSum;
  }

  function incrementTotalSum(uint number) private {
    totalSum += number;
  }

  function incrementTotalSumInternal(uint value) internal {
    incrementTotalSum(value);
  }

}
