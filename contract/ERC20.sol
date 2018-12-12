pragma solidity >=0.4.11 < 0.6.0

contract ERC20 {

    function totalSupply() public view returns(uint256);

    function balanceOf(address tokenOwner) public view returns(uint256 balance);

    function allowance(address tokenOwner, address spender) public view returns(uint256);

    function transfer(address to, uint256 amount) public returns(bool success);

    function transferFrom(address from, address to, uint256 amount) public returns(bool success);

    function approve(address spender, uint256 amount) public returns(bool success);

    event LogTransfer(address indexed from, address indexed to, uint256 amount);

    event LogApprove(address indexed tokenOwner, address indexed spender, uint256 amount);
}

contract MyToken is ERC20 {
    uint256 public supply;

    string public tokenName;

    address public owner;

    mapping(address => uint256) balances;

    mapping(address => mapping(address => uint256)) allowed;

    // Add Function
    constructor() public {
        owner = msg.sender;
    }

}