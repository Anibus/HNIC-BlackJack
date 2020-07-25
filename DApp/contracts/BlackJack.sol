pragma solidity >=0.4.22 <0.7.0;
pragma experimental ABIEncoderV2;

/**
 * @title Blackjack
 * @dev Crypto Cards
 */
contract Blackjack {
    /*
You4:26 PM
{shortName: "h6", suit: "h", rank: 6, name: "H6", faceUp: false, …}
You4:30 PM
Blackjack Smartcontract will store: Player Name, Rank, Suit, Bet
*/
    address player1;
    address player2;
    uint256[] deck = new uint256[](52);
    uint256 turns = 0;
    uint256 pot; //the pot for all players
    //player/game metadata
    struct BlackJackPlayer {
        string playername;
        uint256 card;
        string suit; //card suites D,C,H,S
        uint256 bet;
    }
    BlackJackPlayer blackjack;

    // constructor() public {

    // }

    //Setters
    function setPlayerName(string memory p) public {
        blackjack.playername = p;
    }

    function setRank(uint256 c) public {
        blackjack.card = c;
    }

    function setSuit(string memory s) public {
        blackjack.suit = s;
    }

    function setBet(uint256 b) public payable {
        blackjack.bet = b;
    }

    function setPot(uint256 p) public {
        pot = p;
    }

    //Getters
    function getPlayerName() public view returns (string memory) {
        return blackjack.playername;
    }

    function getRank() public view returns (uint256) {
        return blackjack.card;
    }

    function getSuit() public view returns (string memory) {
        return blackjack.suit;
    }

    function getBet() public view returns (uint256) {
        return blackjack.bet;
    }

    function getBlackjackPlayer() public view returns (BlackJackPlayer memory) {
        return blackjack;
    }
}
