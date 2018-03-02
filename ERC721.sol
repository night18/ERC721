pragma solidity ^0.4.18;

/**
 * @dev see https://github.com/ethereum/eips/issues/721
 * Goal: The interface of ERC721
 * Creater: Chun-Wei Chiang
 * History: [0301] First Creat
 */
contract ERC721 {
  event Transfer(address indexed _from, address indexed _to, uint256 _tokenId);
  event Approval(address indexed _owner, address indexed _approved, uint256 _tokenId);

  function name() public view returns (string name);
  function symbol() public view returns (string symbol);

  function redemption(address _to) public pure returns (bool);
  function totalSupply() public view returns (uint256 total);
  function balanceOf(address _owner) public view returns (uint256 _balance);
  function ownerOf(uint256 _tokenId) public view returns (address _owner);
  function transfer(address _to, uint256 _tokenId) public;
  function approve(address _to, uint256 _tokenId) public;
  function takeOwnership(uint256 _tokenId) public;
}