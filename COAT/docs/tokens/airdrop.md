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

### startAirdrop

```solidity
function startAirdrop(uint256[] unitOfToken) public returns (bool)
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
function getEligibility(address _address, uint256 tokenId) public view returns (bool)
```

_Checks if an address is eligible for an airdrop._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _address | address | Address to check. |
| tokenId | uint256 | Token ID (used only for ERC721). |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | True if eligible, false otherwise. |

### whiteList

```solidity
function whiteList(address[] _address) public returns (bool)
```

_Adds addresses to the whitelist._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _address | address[] | Array of addresses to whitelist. |

### removeFromWhiteList

```solidity
function removeFromWhiteList(address _address) public returns (bool)
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

### resetAirdrop

```solidity
function resetAirdrop() public returns (bool)
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

### _checkReceiver

```solidity
function _checkReceiver(address to, uint256 tokenId) internal returns (bool)
```

inherits Ownable:
### owner

```solidity
function owner() public view virtual returns (address)
```

_Returns the address of the current owner._

### _checkOwner

```solidity
function _checkOwner() internal view virtual
```

_Throws if the sender is not the owner._

### renounceOwnership

```solidity
function renounceOwnership() public virtual
```

_Leaves the contract without owner. It will not be possible to call
`onlyOwner` functions. Can only be called by the current owner.

NOTE: Renouncing ownership will leave the contract without an owner,
thereby disabling any functionality that is only available to the owner._

### transferOwnership

```solidity
function transferOwnership(address newOwner) public virtual
```

_Transfers ownership of the contract to a new account (`newOwner`).
Can only be called by the current owner._

### _transferOwnership

```solidity
function _transferOwnership(address newOwner) internal virtual
```

_Transfers ownership of the contract to a new account (`newOwner`).
Internal function without access restriction._

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
event TOKENtransfered(uint256 tokenId, bool success)
```

### addressAddedToWhitelist

```solidity
event addressAddedToWhitelist(address[] _address)
```

### removedAddress

```solidity
event removedAddress(address _address)
```

inherits Ownable:
### OwnershipTransferred

```solidity
event OwnershipTransferred(address previousOwner, address newOwner)
```

