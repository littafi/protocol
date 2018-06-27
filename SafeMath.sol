/**
 * Math operations with safety checks
 */
library SafeMath {
  function mul(uint256 a, uint256 b) public pure returns (uint256) {
     if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    assert( c / a == b);
    return c;
  }

  function div(uint256 a, uint256 b) public pure returns (uint256) {
    //assert(b > 0); // Solidity automatically throws when dividing by 0
    uint256 c = a / b;
    //assert(a == b * c + a % b); // There is no case in which this doesn't hold
    return c;
  }

  function sub(uint256 a, uint256 b) public pure returns (uint256) {//0x7613b207ef1cd3ca38adb0c539e5aa56caf4254b
    assert(b <= a);
    return a - b;
  }

  function add(uint256 a, uint256 b) public pure returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }

  function max64(uint64 a, uint64 b) public pure returns (uint64) {
    return a >= b ? a : b;
  }

  function min64(uint64 a, uint64 b) public pure returns (uint64) {
    return a < b ? a : b;
  }

  function max256(uint256 a, uint256 b) external pure returns (uint256) {
    return a >= b ? a : b;
  }

  function min256(uint256 a, uint256 b) external pure returns (uint256) {
    return a < b ? a : b;
  }

}
