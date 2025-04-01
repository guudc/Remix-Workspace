# Solidity API

## BUSD

### Contract
BUSD : COAT/test/token.sol

 --- 
### Functions:
### constructor

```solidity
constructor() public
```

### mint

```solidity
function mint(uint256 amount) external returns (bool)
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

### _checkReceiver

```solidity
function _checkReceiver(address to, uint256 tokenId) internal returns (bool)
```

inherits ERC20:
### name

```solidity
function name() public view virtual returns (string)
```

_Returns the name of the token._

### symbol

```solidity
function symbol() public view virtual returns (string)
```

_Returns the symbol of the token, usually a shorter version of the
name._

### decimals

```solidity
function decimals() public view virtual returns (uint8)
```

_Returns the number of decimals used to get its user representation.
For example, if `decimals` equals `2`, a balance of `505` tokens should
be displayed to a user as `5.05` (`505 / 10 ** 2`).

Tokens usually opt for a value of 18, imitating the relationship between
Ether and Wei. This is the default value returned by this function, unless
it's overridden.

NOTE: This information is only used for _display_ purposes: it in
no way affects any of the arithmetic of the contract, including
{IERC20-balanceOf} and {IERC20-transfer}._

### totalSupply

```solidity
function totalSupply() public view virtual returns (uint256)
```

_See {IERC20-totalSupply}._

### balanceOf

```solidity
function balanceOf(address account) public view virtual returns (uint256)
```

_See {IERC20-balanceOf}._

### transfer

```solidity
function transfer(address to, uint256 value) public virtual returns (bool)
```

_See {IERC20-transfer}.

Requirements:

- `to` cannot be the zero address.
- the caller must have a balance of at least `value`._

### allowance

```solidity
function allowance(address owner, address spender) public view virtual returns (uint256)
```

_See {IERC20-allowance}._

### approve

```solidity
function approve(address spender, uint256 value) public virtual returns (bool)
```

_See {IERC20-approve}.

NOTE: If `value` is the maximum `uint256`, the allowance is not updated on
`transferFrom`. This is semantically equivalent to an infinite approval.

Requirements:

- `spender` cannot be the zero address._

### transferFrom

```solidity
function transferFrom(address from, address to, uint256 value) public virtual returns (bool)
```

_See {IERC20-transferFrom}.

Skips emitting an {Approval} event indicating an allowance update. This is not
required by the ERC. See {xref-ERC20-_approve-address-address-uint256-bool-}[_approve].

NOTE: Does not update the allowance if the current allowance
is the maximum `uint256`.

Requirements:

- `from` and `to` cannot be the zero address.
- `from` must have a balance of at least `value`.
- the caller must have allowance for ``from``'s tokens of at least
`value`._

### _transfer

```solidity
function _transfer(address from, address to, uint256 value) internal
```

_Moves a `value` amount of tokens from `from` to `to`.

This internal function is equivalent to {transfer}, and can be used to
e.g. implement automatic token fees, slashing mechanisms, etc.

Emits a {Transfer} event.

NOTE: This function is not virtual, {_update} should be overridden instead._

### _update

```solidity
function _update(address from, address to, uint256 value) internal virtual
```

_Transfers a `value` amount of tokens from `from` to `to`, or alternatively mints (or burns) if `from`
(or `to`) is the zero address. All customizations to transfers, mints, and burns should be done by overriding
this function.

Emits a {Transfer} event._

### _mint

```solidity
function _mint(address account, uint256 value) internal
```

_Creates a `value` amount of tokens and assigns them to `account`, by transferring it from address(0).
Relies on the `_update` mechanism

Emits a {Transfer} event with `from` set to the zero address.

NOTE: This function is not virtual, {_update} should be overridden instead._

### _burn

```solidity
function _burn(address account, uint256 value) internal
```

_Destroys a `value` amount of tokens from `account`, lowering the total supply.
Relies on the `_update` mechanism.

Emits a {Transfer} event with `to` set to the zero address.

NOTE: This function is not virtual, {_update} should be overridden instead_

### _approve

```solidity
function _approve(address owner, address spender, uint256 value) internal
```

_Sets `value` as the allowance of `spender` over the `owner` s tokens.

This internal function is equivalent to `approve`, and can be used to
e.g. set automatic allowances for certain subsystems, etc.

Emits an {Approval} event.

Requirements:

- `owner` cannot be the zero address.
- `spender` cannot be the zero address.

Overrides to this logic should be done to the variant with an additional `bool emitEvent` argument._

### _approve

```solidity
function _approve(address owner, address spender, uint256 value, bool emitEvent) internal virtual
```

_Variant of {_approve} with an optional flag to enable or disable the {Approval} event.

By default (when calling {_approve}) the flag is set to true. On the other hand, approval changes made by
`_spendAllowance` during the `transferFrom` operation set the flag to false. This saves gas by not emitting any
`Approval` event during `transferFrom` operations.

Anyone who wishes to continue emitting `Approval` events on the`transferFrom` operation can force the flag to
true using the following override:

```solidity
function _approve(address owner, address spender, uint256 value, bool) internal virtual override {
    super._approve(owner, spender, value, true);
}
```

Requirements are the same as {_approve}._

### _spendAllowance

```solidity
function _spendAllowance(address owner, address spender, uint256 value) internal virtual
```

_Updates `owner` s allowance for `spender` based on spent `value`.

Does not update the allowance value in case of infinite allowance.
Revert if not enough allowance is available.

Does not emit an {Approval} event._

inherits IERC20Errors:
inherits IERC20Metadata:
inherits IERC20:

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

inherits ERC20:
inherits IERC20Errors:
inherits IERC20Metadata:
inherits IERC20:
### Transfer

```solidity
event Transfer(address from, address to, uint256 value)
```

_Emitted when `value` tokens are moved from one account (`from`) to
another (`to`).

Note that `value` may be zero._

### Approval

```solidity
event Approval(address owner, address spender, uint256 value)
```

_Emitted when the allowance of a `spender` for an `owner` is set by
a call to {approve}. `value` is the new allowance._

