pragma solidity ^0.4.18;

/**
 * Goal: Faucet ERC721 
 * Creater: Chun-Wei Chiang
 * History: [0302] First Create
 */


contract ERC721Faucet is ERC721Token {
  function ERC721TokenMock() ERC721Token() public { }

  function mint(address _to, uint256 _tokenId) public {
    super._mint(_to, _tokenId);
  }

  function burn(uint256 _tokenId) public {
    super._burn(_tokenId);
  }
}