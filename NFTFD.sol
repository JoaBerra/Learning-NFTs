pragma solidity ⁰.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFTFD is ERC721URIStorage {
  address public founder;
  
  constructor() ERC721("NFTs For Dummies", "NFTFD") {
    founder = msg.sender;
    
    for (uint tokemID=1; tokenID<=5; tokenID++){
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
}