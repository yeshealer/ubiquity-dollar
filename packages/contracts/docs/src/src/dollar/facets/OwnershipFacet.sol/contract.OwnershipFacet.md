# OwnershipFacet
[Git Source](https://github.com/ubiquity/ubiquity-dollar/blob/c84a9cbe167218aefb4a9feb40e2abcd74899167/src/dollar/facets/OwnershipFacet.sol)

**Inherits:**
[IERC173](/src/dollar/interfaces/IERC173.sol/interface.IERC173.md)

Used for managing contract's owner


## Functions
### transferOwnership

Sets contract's owner to a new address

*Set _newOwner to address(0) to renounce any ownership*


```solidity
function transferOwnership(address _newOwner) external override;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`_newOwner`|`address`|The address of the new owner of the contract|


### owner

Returns owner's address


```solidity
function owner() external view override returns (address owner_);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`owner_`|`address`|Owner address|


