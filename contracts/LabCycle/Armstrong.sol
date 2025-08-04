// SPDX-License-Identifier:GPL-3.0

pragma solidity ^0.8.14;

contract Armstrong{

    function armstrong(int16 n)public pure returns(string memory){
        
        int16 temp = n;
        int16 sum = 0;
        int16 r = 0;
        int16 temp1 = n;
        int8 count=0;
        while(temp!=0){
            temp/=10;
            count++;
        }

        while(temp1!=0){
            r = temp1%10;
            int16 power = 1;

            for (int8 i = 0; i < count; i++) {
                power *= r;
            }

            sum += power;
            temp1 /= 10;
        }
        

        if(sum==n){
            return "Armstrong number!!!";
        }else{
            return "Not an Armstrong number...";
        }
    }

}