// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.14;

contract PrimeCheck {
    function prime(int n) public pure returns (string memory) {
        if (n < 2) {
            return "Not Prime";
        }
        
        for (int i = 2; i <= n / 2; i++) {
            if (n % i == 0) {
                return "Not Prime";
            }
        }
        
        return "Prime";
    }
}
