pragma solidity ^0.4.18;

/* 
Este contrato tiene una idea de getters y setters probado en remix

 */


contract Prueba {
    
    struct Instructor {
        uint age;
        string fName;
        string lName;
        
    }
    
    // Jugando con MAPPING like hastable
    
    mapping ( address => Instructor  ) instructors;
    
    address[] public instructorsAccts;
    
    
    function setInstructor( address _address, uint _age, string _fName, string _lName) public{
        
        var instructor = instructors[_address];
        
        instructor.age   = _age;
        instructor.fName = _fName;
        instructor.lName = _lName;
        
        instructorsAccts.push(_address) -1;
    }
    
    
    function getInstructors() view public returns(address[]) {
            return instructorsAccts;
    }
    
    function getInstructors(address _address) view public returns (uint, string, string ){
        return (instructors[_address].age, instructors[_address].fName , instructors[_address].lName);
    }    
    
    function countInstructor() view public returns (uint){
        return instructorsAccts.length;
    }
    
    
}