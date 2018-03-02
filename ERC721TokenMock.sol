pragma solidity ^0.4.18;

import "./ERC721Token.sol";

/**
 * Goal: ERC721 token Mock
 * Creater: Chun-Wei Chiang
 * History: [0302] First Create
 */


contract ERC721TokenMock is ERC721Token {
  uint256 _pizzaId = 1;    
  function ERC721TokenMock() ERC721Token() public { }

  function mint(address _to) public {
    super._mint(_to, _pizzaId);
    _pizzaId = _pizzaId + 1;
  }

  function burn(uint256 _tokenId) public {
    super._burn(_tokenId);
  }
}