pragma solidity >=0.4.21 <0.7.0;

contract HelloWorld {
    string hello = 'Hello World';

    function sayHello() public view returns(string memory) {
        return hello;
    }
}