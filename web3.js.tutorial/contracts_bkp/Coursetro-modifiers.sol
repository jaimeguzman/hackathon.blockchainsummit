pragma solidity ^0.4.18;

contract Coursetro {

    string fname;
    uint age;
    address owner;




    function Coursetro() public { 
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }


    event Instructor(
       string name,
       uint age
    );

    function setInstructor (string _fName, uint _age ) onlyOwner public {
        fname   = _fName;
        age     = _age;

        Instructor(_fName,_age);  
    }


    function getInstructor() public constant returns (string, uint){
        return (fname,age);
    }



}