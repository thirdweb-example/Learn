// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

import "@thirdweb-dev/contracts/base/ERC721Drop.sol";

contract Hello is ERC721Drop {
    string public message;

    constructor(
        address _defaultAdmin,
        string memory _name,
        string memory _symbol,
        address _royaltyRecipient,
        uint128 _royaltyBps,
        address _primarySaleRecipient
    )
        ERC721Drop(
            _defaultAdmin,
            _name,
            _symbol,
            _royaltyRecipient,
            _royaltyBps,
            _primarySaleRecipient
        )
    {}

    // Function to set the message
    function setMessage(string memory _newMessage) public {
        // Concatenate "Hello," with the user-provided message
        message = string(abi.encodePacked("Hello, ", _newMessage));
    }

    // Function to retrieve the message
    function getHello() public view returns (string memory) {
        return message;
    }
}
