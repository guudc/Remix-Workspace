# Solidity API

## ObiNFT

### Contract
ObiNFT : COAT/test/nft.sol

 --- 
### Functions:
### constructor

```solidity
constructor() public
```

### sartAirdrop

```solidity
function sartAirdrop(uint256[] unitOfToken) public returns (bool)
```

### whiteListAddress

```solidity
function whiteListAddress(address[] _address) public returns (bool)
```

### reset

```solidity
function reset() public returns (bool)
```

inherits Airdrop:
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

inherits ERC721URIStorage:
### supportsInterface

```solidity
function supportsInterface(bytes4 interfaceId) public view virtual returns (bool)
```

_See {IERC165-supportsInterface}_

### tokenURI

```solidity
function tokenURI(uint256 tokenId) public view virtual returns (string)
```

_See {IERC721Metadata-tokenURI}._

### _setTokenURI

```solidity
function _setTokenURI(uint256 tokenId, string _tokenURI) internal virtual
```

_Sets `_tokenURI` as the tokenURI of `tokenId`.

Emits {MetadataUpdate}._

inherits ERC721:
### balanceOf

```solidity
function balanceOf(address owner) public view virtual returns (uint256)
```

_See {IERC721-balanceOf}._

### ownerOf

```solidity
function ownerOf(uint256 tokenId) public view virtual returns (address)
```

_See {IERC721-ownerOf}._

### name

```solidity
function name() public view virtual returns (string)
```

_See {IERC721Metadata-name}._

### symbol

```solidity
function symbol() public view virtual returns (string)
```

_See {IERC721Metadata-symbol}._

### _baseURI

```solidity
function _baseURI() internal view virtual returns (string)
```

_Base URI for computing {tokenURI}. If set, the resulting URI for each
token will be the concatenation of the `baseURI` and the `tokenId`. Empty
by default, can be overridden in child contracts._

### approve

```solidity
function approve(address to, uint256 tokenId) public virtual
```

_See {IERC721-approve}._

### getApproved

```solidity
function getApproved(uint256 tokenId) public view virtual returns (address)
```

_See {IERC721-getApproved}._

### setApprovalForAll

```solidity
function setApprovalForAll(address operator, bool approved) public virtual
```

_See {IERC721-setApprovalForAll}._

### isApprovedForAll

```solidity
function isApprovedForAll(address owner, address operator) public view virtual returns (bool)
```

_See {IERC721-isApprovedForAll}._

### transferFrom

```solidity
function transferFrom(address from, address to, uint256 tokenId) public virtual
```

_See {IERC721-transferFrom}._

### safeTransferFrom

```solidity
function safeTransferFrom(address from, address to, uint256 tokenId) public
```

_See {IERC721-safeTransferFrom}._

### safeTransferFrom

```solidity
function safeTransferFrom(address from, address to, uint256 tokenId, bytes data) public virtual
```

_See {IERC721-safeTransferFrom}._

### _ownerOf

```solidity
function _ownerOf(uint256 tokenId) internal view virtual returns (address)
```

_Returns the owner of the `tokenId`. Does NOT revert if token doesn't exist

IMPORTANT: Any overrides to this function that add ownership of tokens not tracked by the
core ERC-721 logic MUST be matched with the use of {_increaseBalance} to keep balances
consistent with ownership. The invariant to preserve is that for any address `a` the value returned by
`balanceOf(a)` must be equal to the number of tokens such that `_ownerOf(tokenId)` is `a`._

### _getApproved

```solidity
function _getApproved(uint256 tokenId) internal view virtual returns (address)
```

_Returns the approved address for `tokenId`. Returns 0 if `tokenId` is not minted._

### _isAuthorized

```solidity
function _isAuthorized(address owner, address spender, uint256 tokenId) internal view virtual returns (bool)
```

_Returns whether `spender` is allowed to manage `owner`'s tokens, or `tokenId` in
particular (ignoring whether it is owned by `owner`).

WARNING: This function assumes that `owner` is the actual owner of `tokenId` and does not verify this
assumption._

### _checkAuthorized

```solidity
function _checkAuthorized(address owner, address spender, uint256 tokenId) internal view virtual
```

_Checks if `spender` can operate on `tokenId`, assuming the provided `owner` is the actual owner.
Reverts if:
- `spender` does not have approval from `owner` for `tokenId`.
- `spender` does not have approval to manage all of `owner`'s assets.

WARNING: This function assumes that `owner` is the actual owner of `tokenId` and does not verify this
assumption._

### _increaseBalance

```solidity
function _increaseBalance(address account, uint128 value) internal virtual
```

_Unsafe write access to the balances, used by extensions that "mint" tokens using an {ownerOf} override.

NOTE: the value is limited to type(uint128).max. This protect against _balance overflow. It is unrealistic that
a uint256 would ever overflow from increments when these increments are bounded to uint128 values.

WARNING: Increasing an account's balance using this function tends to be paired with an override of the
{_ownerOf} function to resolve the ownership of the corresponding tokens so that balances and ownership
remain consistent with one another._

### _update

```solidity
function _update(address to, uint256 tokenId, address auth) internal virtual returns (address)
```

_Transfers `tokenId` from its current owner to `to`, or alternatively mints (or burns) if the current owner
(or `to`) is the zero address. Returns the owner of the `tokenId` before the update.

The `auth` argument is optional. If the value passed is non 0, then this function will check that
`auth` is either the owner of the token, or approved to operate on the token (by the owner).

Emits a {Transfer} event.

NOTE: If overriding this function in a way that tracks balances, see also {_increaseBalance}._

### _mint

```solidity
function _mint(address to, uint256 tokenId) internal
```

_Mints `tokenId` and transfers it to `to`.

WARNING: Usage of this method is discouraged, use {_safeMint} whenever possible

Requirements:

- `tokenId` must not exist.
- `to` cannot be the zero address.

Emits a {Transfer} event._

### _safeMint

```solidity
function _safeMint(address to, uint256 tokenId) internal
```

_Mints `tokenId`, transfers it to `to` and checks for `to` acceptance.

Requirements:

- `tokenId` must not exist.
- If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.

Emits a {Transfer} event._

### _safeMint

```solidity
function _safeMint(address to, uint256 tokenId, bytes data) internal virtual
```

_Same as {xref-ERC721-_safeMint-address-uint256-}[`_safeMint`], with an additional `data` parameter which is
forwarded in {IERC721Receiver-onERC721Received} to contract recipients._

### _burn

```solidity
function _burn(uint256 tokenId) internal
```

_Destroys `tokenId`.
The approval is cleared when the token is burned.
This is an internal function that does not check if the sender is authorized to operate on the token.

Requirements:

- `tokenId` must exist.

Emits a {Transfer} event._

### _transfer

```solidity
function _transfer(address from, address to, uint256 tokenId) internal
```

_Transfers `tokenId` from `from` to `to`.
 As opposed to {transferFrom}, this imposes no restrictions on msg.sender.

Requirements:

- `to` cannot be the zero address.
- `tokenId` token must be owned by `from`.

Emits a {Transfer} event._

### _safeTransfer

```solidity
function _safeTransfer(address from, address to, uint256 tokenId) internal
```

_Safely transfers `tokenId` token from `from` to `to`, checking that contract recipients
are aware of the ERC-721 standard to prevent tokens from being forever locked.

`data` is additional data, it has no specified format and it is sent in call to `to`.

This internal function is like {safeTransferFrom} in the sense that it invokes
{IERC721Receiver-onERC721Received} on the receiver, and can be used to e.g.
implement alternative mechanisms to perform token transfer, such as signature-based.

Requirements:

- `tokenId` token must exist and be owned by `from`.
- `to` cannot be the zero address.
- `from` cannot be the zero address.
- If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.

Emits a {Transfer} event._

### _safeTransfer

```solidity
function _safeTransfer(address from, address to, uint256 tokenId, bytes data) internal virtual
```

_Same as {xref-ERC721-_safeTransfer-address-address-uint256-}[`_safeTransfer`], with an additional `data` parameter which is
forwarded in {IERC721Receiver-onERC721Received} to contract recipients._

### _approve

```solidity
function _approve(address to, uint256 tokenId, address auth) internal
```

_Approve `to` to operate on `tokenId`

The `auth` argument is optional. If the value passed is non 0, then this function will check that `auth` is
either the owner of the token, or approved to operate on all tokens held by this owner.

Emits an {Approval} event.

Overrides to this logic should be done to the variant with an additional `bool emitEvent` argument._

### _approve

```solidity
function _approve(address to, uint256 tokenId, address auth, bool emitEvent) internal virtual
```

_Variant of `_approve` with an optional flag to enable or disable the {Approval} event. The event is not
emitted in the context of transfers._

### _setApprovalForAll

```solidity
function _setApprovalForAll(address owner, address operator, bool approved) internal virtual
```

_Approve `operator` to operate on all of `owner` tokens

Requirements:
- operator can't be the address zero.

Emits an {ApprovalForAll} event._

### _requireOwned

```solidity
function _requireOwned(uint256 tokenId) internal view returns (address)
```

_Reverts if the `tokenId` doesn't have a current owner (it hasn't been minted, or it has been burned).
Returns the owner.

Overrides to ownership logic should be done to {_ownerOf}._

inherits IERC721Errors:
inherits IERC721Metadata:
inherits IERC4906:
inherits IERC721:
inherits ERC165:
inherits IERC165:

 --- 
### Events:
inherits Airdrop:
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

inherits ERC721URIStorage:
inherits ERC721:
inherits IERC721Errors:
inherits IERC721Metadata:
inherits IERC4906:
### MetadataUpdate

```solidity
event MetadataUpdate(uint256 _tokenId)
```

_This event emits when the metadata of a token is changed.
So that the third-party platforms such as NFT market could
timely update the images and related attributes of the NFT._

### BatchMetadataUpdate

```solidity
event BatchMetadataUpdate(uint256 _fromTokenId, uint256 _toTokenId)
```

_This event emits when the metadata of a range of tokens is changed.
So that the third-party platforms such as NFT market could
timely update the images and related attributes of the NFTs._

inherits IERC721:
### Transfer

```solidity
event Transfer(address from, address to, uint256 tokenId)
```

_Emitted when `tokenId` token is transferred from `from` to `to`._

### Approval

```solidity
event Approval(address owner, address approved, uint256 tokenId)
```

_Emitted when `owner` enables `approved` to manage the `tokenId` token._

### ApprovalForAll

```solidity
event ApprovalForAll(address owner, address operator, bool approved)
```

_Emitted when `owner` enables or disables (`approved`) `operator` to manage all of its assets._

inherits ERC165:
inherits IERC165:

