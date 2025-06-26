// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataType2 {
    // String 상태변수
    string private message = "Hello, Solidity!";

    function getMessage() public view returns (string memory) {
        return message;
    }

    function setMessage(string memory _message) public {
        message = _message;
    }

    // uint 배열
    uint256[] private numbers;

    function getNumbers() public view returns (uint256[] memory) {
        return numbers;
    }

    function addNumber(uint256 _number) public {
        numbers.push(_number);
    }

    function getNumber(uint256 index) public view returns (uint256) {
        require(index < numbers.length, "Index out of bounds");
        return numbers[index];
    }

    // string 배열
    string[] private names;

    function getNames() public view returns (string[] memory) {
        return names;
    }

    function addName(string memory _name) public {
        names.push(_name);
    }

    // mapping과 struct
    struct User {
        string name;
        uint256 age;
    }

    mapping(address => uint256) private balances;
    mapping(address => User) private users;

    function setBalance(address _user, uint256 _amount) public {
        balances[_user] = _amount;
    }

    function getBalance(address _user) public view returns (uint256) {
        return balances[_user];
    }

    function setUser(address _user, string memory _name, uint256 _age) public {
        users[_user] = User(_name, _age);
    }

    function getUser(address _user) public view returns (string memory, uint256) {
        User memory user = users[_user];
        return (user.name, user.age);
    }

    // bytes 값들
    bytes private dynamicData;
    bytes32 private fixedData = 0xabcdef1234560000000000000000000000000000000000000000000000000000;

    function setDynamicData(bytes memory _data) public {
        dynamicData = _data;
    }

    function getDynamicData() public view returns (bytes memory) {
        return dynamicData;
    }

    function setFixedData(bytes32 _data) public {
        fixedData = _data;
    }

    function getFixedData() public view returns (bytes32) {
        return fixedData;
    }

    // 6. getDetails()
    function getDetails() public view returns (
        string memory,
        uint256[] memory,
        string[] memory,
        bytes32,
        bytes memory
    ) {
        return (
            message,
            numbers,
            names,
            fixedData,
            dynamicData
        );
    }
}
