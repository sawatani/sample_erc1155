//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract OwnableERC1155 is ERC1155, Ownable {
    string private greeting;

    constructor(address _owner) ERC1155("") {
        transferOwnership(_owner);
    }

    function setURI(string memory _uri) public onlyOwner {
        _setURI(_uri);
    }

    function mint( address to, uint256 id) public onlyOwner {
        _mint(to, id, 0, "");
    }
}
