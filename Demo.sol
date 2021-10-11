//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.6;

contract MoneySavingSystem
{
public string poolCreator;
public uint256 poolDecidedAmount;
public uint256 returnDecidedAmount;

string personReturnSaving;
uint256 returnSaving;

struct FirstPersonData{
string firstPerson;
uint256 FirstPersonAmount;
uint256 returnsaving;
}

FirstPersonData Alson;

struct SecondPersonData
{
string secondPerson;
uint256 secondPersonAmount;
uint256 returnsaving;
}

SecondPersonData Parkor; 



function CreatePool(string memory _poolCreator, uint256 _poolDecidedAmount ) public {
poolCreator=_poolCreator;
poolDecidedAmount=_poolDecidedAmount;

}

function FirstPersonDeposit() public {
Alson=FirstPersonData(firstPerson,FirstPersonAmount);

}

function FirstPersonAmount_return() public view returns (string memory,uint256) 
{
   require(Alson.FirstPersonAmount>poolDecidedAmount);
   return(Alson.FirstPersonAmount);

}

function SecondPersonDeposit() public {
Parkor=SecondPersonData(secondPerson,secondPersonAmount);
}

function secondPersonAmount_return() public view returns (string memory,uint256) 
{
   require(Parkor.secondPersonAmount>poolDecidedAmount);
   return(Parkor.secondPersonAmount);

}


function ReturnSavingFunction() public returns (uint256)
{
returnsaving = Alson.FirstPersonAmount+Parkor.secondPersonAmount;
return returnsaving;

}
 
function returnPersonName(string _personReturnSaving) public {

     personReturnSaving=_personReturnSaving
 }

function returnAmount() public 
{
     if (personReturnSaving="Alson")
     {
             Alson.returnsaving=returnsaving;

     }
     else
     {
          Parkor.returnsaving=returnsaving;

     }

}

}