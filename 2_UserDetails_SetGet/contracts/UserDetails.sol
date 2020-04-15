pragma solidity >=0.4.21 <0.7.0;

contract UserDetails{
    struct UserData {
        string firstName;
        string lastName;
        string userAddress;
    }
    mapping (uint => UserData) User;
    uint8 userCount = 0;

    function getUserCout() public view returns(uint8) {
        return userCount;
    }

    function addUserData (string memory firstName, string memory lastName, string memory userAddress) public {

        UserData memory newUserData;
        newUserData.firstName = firstName;
        newUserData.lastName = lastName;
        newUserData.userAddress = userAddress;
        User[userCount] = newUserData;
        userCount++;

    }

    function getUserDetails (uint id) public view returns(string memory,string memory,string memory) {
        return(User[id].firstName,User[id].lastName, User[id].userAddress);
    }


}