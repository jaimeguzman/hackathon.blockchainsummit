pragma solidity ^0.4.18;

contract Coursetro {

    string fname;
    uint age;

    event Instructor(
       string name,
       uint age
    );


    function setInstructor (string _fName, uint _age) public {
        fname   = _fName;
        age     = _age;

        Instructor(_fName,_age);  
    }


    function getInstructor() public constant returns (string, uint){
        return (fname,age);
    }



}