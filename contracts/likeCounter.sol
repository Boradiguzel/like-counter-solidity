// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LikeCounter {
    uint public likeCount;
    mapping(address => bool) public likedUsers;
    event Liked(address user);


   function like() public {
    require(!likedUsers[msg.sender], "Zaten like atilmis.");
    likeCount += 1;
    likedUsers[msg.sender] = true;

    emit Liked(msg.sender); 
}

    function hasLiked(address user) public view  returns (bool) {
        return likedUsers[user];
    }
}
