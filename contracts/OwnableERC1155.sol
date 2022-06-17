//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract OwnableERC1155 is ERC1155, Ownable {
    string private greeting;

    constructor(address _owner, string memory _baseURI) ERC1155(_baseURI) {
        transferOwnership(_owner);
    }

    function mint( address to, uint256 id) public onlyOwner {
        _mint(to, id, 0, "");
    }
}
