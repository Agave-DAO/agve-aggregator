pragma solidity 0.4.24;

import "./interfaces/IUniswapV2Pair.sol";

contract LPConnector {

    address agve = 0x3a97704a1b25F08aa230ae53B352e2e72ef52843;

    // takes a voters address and an LP token address
    // returns the ammount of AGVE the LP token represents
    function votingPower(address _voter, address _lpToken) public view returns (uint256) {
        IUniswapV2Pair lpToken = IUniswapV2Pair(_lpToken);
        address token0 = lpToken.token0();
        address token1 = lpToken.token1();
        require(token0 == agve || token0 == agve);

        uint256 totalLp = lpToken.totalSupply();
        uint256 userLpAmount = lpToken.balanceOf(_voter);

        uint112 reserve;        
        (uint112 reserve0 , uint112 reserve1, ) = lpToken.getReserves();

        if (token0 == agve){
            reserve = reserve0;
        } else {
            reserve = reserve1;
        }
        // calculate the percentage of the AGVE reserve the voter has in the pl pool
        return uint256(1);
    }
}