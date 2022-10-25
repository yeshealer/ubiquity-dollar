// SPDX-License-Identifier: UNLICENSED
// !! THIS FILE WAS AUTOGENERATED BY abi-to-sol. SEE BELOW FOR SOURCE. !!
pragma solidity 0.8.16;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IMasterChef {
    struct UserInfo {
        uint256 amount; // How many LP tokens the user has provided.
        uint256 rewardDebt; // Reward debt. See explanation below.
    }

    struct PoolInfo {
        uint256 lastRewardBlock; // Last block number that SUSHI distribution occurs.
        uint256 accuGOVPerShare; // Accumulated SUSHI per share, times 1e12. See below.
    }

    event Deposit(address indexed user, uint256 amount);
    event Withdraw(address indexed user, uint256 amount);

    function deposit(uint256 _amount, address sender) external;

    // Withdraw LP tokens from MasterChef.
    function withdraw(uint256 _amount, address sender) external;

    // View function to see pending SUSHIs on frontend.
    function pendingUGOV(address _user) external view returns (uint256);
}

// THIS FILE WAS AUTOGENERATED FROM THE FOLLOWING ABI JSON:
