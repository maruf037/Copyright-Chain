pragma solidity ^0.8.11;

contract Copyright {
    //Create the events
    event RegisteredContent(uint256 counter, bytes32 indexed hashId, 
    string indexed contentUrl, address indexed owner, 
    uint256 timestamp, string email, string termsofUse);

    //Create the variables that we'll use
    struct Content {
        uint256 counter;
        bytes32 hashId; //The half keccak256 hash since we can't store the entire 64 bit hash 
        string contentUrl;
        address owner;
        uint256 timestamp;
        string email; //We need a valid email to contact the owner of the content
        string termsofUse;
    }    

    mapping (bytes32 => Content) public copyrightsById;

    uint256 public counter = 0;
    address payable public owner;
}





