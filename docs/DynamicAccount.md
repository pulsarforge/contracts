# DynamicAccount









## Methods

### addDeposit

```solidity
function addDeposit() external payable
```

Deposit funds for this account in Entrypoint.




### addExtension

```solidity
function addExtension(IExtension.Extension _extension) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _extension | IExtension.Extension | undefined |

### defaultExtensionSet

```solidity
function defaultExtensionSet() external view returns (address)
```

The DefaultExtensionSet that stores default extensions of the router.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |

### entryPoint

```solidity
function entryPoint() external view returns (contract IEntryPoint)
```

Returns the EIP 4337 entrypoint contract.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IEntryPoint | undefined |

### factory

```solidity
function factory() external view returns (address)
```

EIP 4337 factory for this contract.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |

### getAllActiveSigners

```solidity
function getAllActiveSigners() external view returns (struct IAccountPermissions.SignerPermissions[] signers)
```

Returns all signers with active permissions to use the account.




#### Returns

| Name | Type | Description |
|---|---|---|
| signers | IAccountPermissions.SignerPermissions[] | undefined |

### getAllAdmins

```solidity
function getAllAdmins() external view returns (address[])
```

Returns all admins of the account.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address[] | undefined |

### getAllExtensions

```solidity
function getAllExtensions() external view returns (struct IExtension.Extension[] allExtensions)
```

Returns all extensions stored. Override default lugins stored in router are          given precedence over default extensions in DefaultExtensionSet.




#### Returns

| Name | Type | Description |
|---|---|---|
| allExtensions | IExtension.Extension[] | undefined |

### getAllFunctionsOfExtension

```solidity
function getAllFunctionsOfExtension(string _extensionName) external view returns (struct IExtension.ExtensionFunction[])
```



*Returns all functions that belong to the given extension contract.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _extensionName | string | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | IExtension.ExtensionFunction[] | undefined |

### getAllSigners

```solidity
function getAllSigners() external view returns (struct IAccountPermissions.SignerPermissions[] signers)
```

Returns all active and inactive signers of the account.




#### Returns

| Name | Type | Description |
|---|---|---|
| signers | IAccountPermissions.SignerPermissions[] | undefined |

### getDeposit

```solidity
function getDeposit() external view returns (uint256)
```

Returns the balance of the account in Entrypoint.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### getExtension

```solidity
function getExtension(string _extensionName) external view returns (struct IExtension.Extension)
```



*Returns the extension metadata and functions for a given extension.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _extensionName | string | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | IExtension.Extension | undefined |

### getExtensionForFunction

```solidity
function getExtensionForFunction(bytes4 _functionSelector) external view returns (struct IExtension.ExtensionMetadata)
```



*Returns the extension metadata for a given function.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _functionSelector | bytes4 | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | IExtension.ExtensionMetadata | undefined |

### getExtensionImplementation

```solidity
function getExtensionImplementation(string _extensionName) external view returns (address)
```



*Returns the extension&#39;s implementation smart contract address.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _extensionName | string | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |

### getImplementationForFunction

```solidity
function getImplementationForFunction(bytes4 _functionSelector) external view returns (address extensionAddress)
```



*Returns the extension implementation address stored in router, for the given function.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _functionSelector | bytes4 | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| extensionAddress | address | undefined |

### getNonce

```solidity
function getNonce() external view returns (uint256)
```

Return the account nonce. This method returns the next sequential nonce. For a nonce of a specific key, use `entrypoint.getNonce(account, key)`




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### getPermissionsForSigner

```solidity
function getPermissionsForSigner(address signer) external view returns (struct IAccountPermissions.SignerPermissions)
```

Returns the restrictions under which a signer can use the smart wallet.



#### Parameters

| Name | Type | Description |
|---|---|---|
| signer | address | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | IAccountPermissions.SignerPermissions | undefined |

### initialize

```solidity
function initialize(address _defaultAdmin, bytes) external nonpayable
```

Initializes the smart contract wallet.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _defaultAdmin | address | undefined |
| _1 | bytes | undefined |

### isActiveSigner

```solidity
function isActiveSigner(address signer) external view returns (bool)
```

Returns whether the given account is an active signer on the account.



#### Parameters

| Name | Type | Description |
|---|---|---|
| signer | address | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | undefined |

### isAdmin

```solidity
function isAdmin(address _account) external view returns (bool)
```

Returns whether the given account is an admin.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _account | address | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | undefined |

### isValidSignature

```solidity
function isValidSignature(bytes32 _hash, bytes _signature) external view returns (bytes4 magicValue)
```

See EIP-1271



#### Parameters

| Name | Type | Description |
|---|---|---|
| _hash | bytes32 | undefined |
| _signature | bytes | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| magicValue | bytes4 | undefined |

### isValidSigner

```solidity
function isValidSigner(address _signer, UserOperation _userOp) external view returns (bool)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _signer | address | undefined |
| _userOp | UserOperation | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | undefined |

### multicall

```solidity
function multicall(bytes[] data) external nonpayable returns (bytes[] results)
```

Receives and executes a batch of function calls on this contract.

*Receives and executes a batch of function calls on this contract.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| data | bytes[] | The bytes data that makes up the batch of function calls to execute. |

#### Returns

| Name | Type | Description |
|---|---|---|
| results | bytes[] | The bytes data that makes up the result of the batch of function calls executed. |

### removeExtension

```solidity
function removeExtension(string _extensionName) external nonpayable
```



*Removes an existing extension from the router.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _extensionName | string | undefined |

### setAdmin

```solidity
function setAdmin(address _account, bool _isAdmin) external nonpayable
```

Adds / removes an account as an admin.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _account | address | undefined |
| _isAdmin | bool | undefined |

### setPermissionsForSigner

```solidity
function setPermissionsForSigner(IAccountPermissions.SignerPermissionRequest _req, bytes _signature) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _req | IAccountPermissions.SignerPermissionRequest | undefined |
| _signature | bytes | undefined |

### updateExtension

```solidity
function updateExtension(IExtension.Extension _extension) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _extension | IExtension.Extension | undefined |

### validateUserOp

```solidity
function validateUserOp(UserOperation userOp, bytes32 userOpHash, uint256 missingAccountFunds) external nonpayable returns (uint256 validationData)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| userOp | UserOperation | undefined |
| userOpHash | bytes32 | undefined |
| missingAccountFunds | uint256 | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| validationData | uint256 | undefined |

### verifySignerPermissionRequest

```solidity
function verifySignerPermissionRequest(IAccountPermissions.SignerPermissionRequest req, bytes signature) external view returns (bool success, address signer)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| req | IAccountPermissions.SignerPermissionRequest | undefined |
| signature | bytes | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| success | bool | undefined |
| signer | address | undefined |

### withdrawDepositTo

```solidity
function withdrawDepositTo(address payable withdrawAddress, uint256 amount) external nonpayable
```

Withdraw funds for this account from Entrypoint.



#### Parameters

| Name | Type | Description |
|---|---|---|
| withdrawAddress | address payable | undefined |
| amount | uint256 | undefined |



## Events

### AdminUpdated

```solidity
event AdminUpdated(address indexed signer, bool isAdmin)
```

Emitted when an admin is set or removed.



#### Parameters

| Name | Type | Description |
|---|---|---|
| signer `indexed` | address | undefined |
| isAdmin  | bool | undefined |

### ExtensionAdded

```solidity
event ExtensionAdded(address indexed extensionAddress, bytes4 indexed functionSelector, string functionSignature)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| extensionAddress `indexed` | address | undefined |
| functionSelector `indexed` | bytes4 | undefined |
| functionSignature  | string | undefined |

### ExtensionRemoved

```solidity
event ExtensionRemoved(address indexed extensionAddress, bytes4 indexed functionSelector, string functionSignature)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| extensionAddress `indexed` | address | undefined |
| functionSelector `indexed` | bytes4 | undefined |
| functionSignature  | string | undefined |

### ExtensionUpdated

```solidity
event ExtensionUpdated(address indexed oldExtensionAddress, address indexed newExtensionAddress, bytes4 indexed functionSelector, string functionSignature)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| oldExtensionAddress `indexed` | address | undefined |
| newExtensionAddress `indexed` | address | undefined |
| functionSelector `indexed` | bytes4 | undefined |
| functionSignature  | string | undefined |

### Initialized

```solidity
event Initialized(uint8 version)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| version  | uint8 | undefined |

### SignerPermissionsUpdated

```solidity
event SignerPermissionsUpdated(address indexed authorizingSigner, address indexed targetSigner, IAccountPermissions.SignerPermissionRequest permissions)
```

Emitted when permissions for a signer are updated.



#### Parameters

| Name | Type | Description |
|---|---|---|
| authorizingSigner `indexed` | address | undefined |
| targetSigner `indexed` | address | undefined |
| permissions  | IAccountPermissions.SignerPermissionRequest | undefined |


