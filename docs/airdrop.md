# Solidity API

## Airdrop

### Contract
Airdrop : COAT/tokens/airdrop.sol

 --- 
### Functions:
### constructor

```solidity
constructor(address _tokenAddress, address _fromAddress, uint256 _airdropType) public
```

_Contract constructor initializes the airdrop settings._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _tokenAddress | address | Address of the ERC20 or ERC721 token. |
| _fromAddress | address | Address from which the tokens will be sent. |
| _airdropType | uint256 | Airdrop type (0 = ERC20, 1 = ERC721). |

### _startAirdrop

```solidity
function _startAirdrop(uint256[] unitOfToken) internal returns (bool)
```

_Starts the airdrop process for either ERC20 or ERC721 tokens._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| unitOfToken | uint256[] | Array specifying the amount (for ERC20) or token ID (for ERC721) to be sent. |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | True if the airdrop was successful. |

### getEligibility

```solidity
function getEligibility(address _address) public view returns (bool)
```

_Checks if an address is eligible for an airdrop._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _address | address | Address to check. |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | True if eligible, false otherwise. |

### _whiteListAddress

```solidity
function _whiteListAddress(address[] _address) internal returns (bool)
```

_Adds addresses to the whitelist._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _address | address[] | Array of addresses to whitelist. |

### _removeFromWhiteList

```solidity
function _removeFromWhiteList(address _address) internal returns (bool)
```

_Removes an address from the whitelist._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _address | address | Address to remove. |

### getWhiteList

```solidity
function getWhiteList() public view returns (address[])
```

_Returns the list of whitelisted addresses._

### airdropVersion

```solidity
function airdropVersion() public view returns (uint256)
```

_Returns the current airdrop version state
Useful to know the current airdrop version_

### isWhiteListed

```solidity
function isWhiteListed(address _address) public view returns (bool)
```

_Checks if an address is in the whitelist._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _address | address | Address to check. |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | True if whitelisted, false otherwise. |

### _resetAirdrop

```solidity
function _resetAirdrop() internal returns (bool)
```

_Reset an aurdrop._

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | True. |

### onERC721Received

```solidity
function onERC721Received(address operator, address from, uint256 tokenId, bytes data) public returns (bytes4)
```

### checkAddress

```solidity
function checkAddress(address target) internal view returns (bool)
```

_Checks if an address exists in the whitelist._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| target | address | Address to check. |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | True if found, false otherwise. |

 --- 
### Events:
### airdroped

```solidity
event airdroped(address[] recipients, uint256[] unitOfToken)
```

### receivedTokens

```solidity
event receivedTokens(address operator, address from, uint256 tokenId, bytes data)
```

### TOKENtransfered

```solidity
event TOKENtransfered(uint256 unitOfToken, string airdropType)
```

### addressAddedToWhitelist

```solidity
event addressAddedToWhitelist(address[] _address)
```

### removedAddress

```solidity
event removedAddress(address _address)
```

