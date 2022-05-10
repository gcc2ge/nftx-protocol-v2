// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


interface INFTXVaultListing {

    function createListings(
        uint256[] calldata nftIds,
        address[] calldata vaults,
        uint32[] calldata prices,
        uint24[] calldata amounts,
        uint32[] calldata expiries
    ) external;

    function updateListings(
        uint256[] calldata nftIds,
        address[] calldata vaults,
        bytes32[] calldata listingIds,
        uint32[] calldata prices,
        uint32[] calldata expiries,
        uint24[] calldata amounts
    ) external;

    function fillListings(
        uint256[] calldata nftIds,
        address[] calldata vaults,
        bytes32[] calldata listingIds,
        uint24[] calldata amounts
    ) external;

}