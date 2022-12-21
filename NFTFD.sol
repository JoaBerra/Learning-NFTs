pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFTFD is ERC721URIStorage {
  address public founder;
  
  constructor() ERC721("NFTs For Dummies", "NFTFD") {
    founder = msg.sender;
    
    for (uint tokenID=1; tokenID<=5; tokenID++){
      _mint(founder, tokenID);
      _setTokenURI(tokenID, "NFTFD Limited Edition Initial Release");
    }
  }

  function mintNFT(
    address to,
    uint256 tokenID,
    string memory tokenURI
  )
    public
  {
    require(msg.sender == founder, "not an authorised minter");
    _mint(to, tokenID);
    _setTokenURI(tokenID, tokenURI);
  }
  //Me touching the file for GitHUB CLI test
  // git config --global user.email "joakim.bergelin@gmail.com"
  // Med ovanstående kommando kommer alltid email addressen att användas
  // för alla repos på datorn
  // git add NFTDF.sol
  // git commit -m 'Min Förändring'
  // git push


  //Me doing a second test.
  // git config user.email "joakim.bergelin@gmail.com"
  // Med ovanstående kommando kommer git att överrida global email
  // git add NFTDF.sol
  // git commit -m 'Min Förändring'
  // git push

  //Me doing a third test
  // git config --global user.name "JoaBerra"
  // Med ovanstående kommando kommer git alltid använda name vid commits
  // git add NFTDF.sol
  // git commit -m 'Min andra förändring'
  // git push
}
