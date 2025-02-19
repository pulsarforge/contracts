// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

import { PlatformFeeStorage } from "../PlatformFee.sol";

contract PlatformFeeInit {
    event PlatformFeeInfoUpdated(address indexed platformFeeRecipient, uint256 platformFeeBps);

    /// @dev Lets a contract admin update the platform fee recipient and bps
    function _setupPlatformFeeInfo(address _platformFeeRecipient, uint256 _platformFeeBps) internal {
        PlatformFeeStorage.Data storage data = PlatformFeeStorage.data();
        if (_platformFeeBps > 10_000) {
            revert("Exceeds max bps");
        }

        data.platformFeeBps = uint16(_platformFeeBps);
        data.platformFeeRecipient = _platformFeeRecipient;

        emit PlatformFeeInfoUpdated(_platformFeeRecipient, _platformFeeBps);
    }
}
