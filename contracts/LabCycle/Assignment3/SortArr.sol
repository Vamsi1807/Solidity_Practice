// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.14;

contract SortArr {
    uint[12] arr = [2, 433, 1, 4, 3, 235, 656, 9, 87, 6, 50, 15];

    function sort() public view returns (uint[12] memory) {
        uint[12] memory sortedArr = arr; // Copy original array

        for (uint i = 1; i < sortedArr.length; i++) {
            uint key = sortedArr[i];
            uint j = i;

            while (j > 0 && sortedArr[j - 1] > key) {
                sortedArr[j] = sortedArr[j - 1];
                j--;
            }
            sortedArr[j] = key;
        }

        return sortedArr;
    }
}
