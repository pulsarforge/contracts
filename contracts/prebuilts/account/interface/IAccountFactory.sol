// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.12;

import "./IAccountFactoryCore.sol";

interface IAccountFactory is IAccountFactoryCore {
    /*///////////////////////////////////////////////////////////////
                        Callback Functions
    //////////////////////////////////////////////////////////////*/

    /// @notice Callback function for an Account to register its signers.
    function onSignerAdded(
        address signer,
        address creatorAdmin,
        bytes memory data
    ) external;

    /// @notice Callback function for an Account to un-register its signers.
    function onSignerRemoved(
        address signer,
        address creatorAdmin,
        bytes memory data
    ) external;
}
