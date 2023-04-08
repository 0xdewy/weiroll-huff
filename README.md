# Weiroll Huff

A modified version Weiroll that seperates state into calldata (provided state) and memory (return data state). This implementation uses very little memory and currently uses about 1/3 the gas compared to the solidity implementation.

There is a janky solidity planner included for building the weiroll scripts:

```javascript
    uint a = 1e18;
    uint b = 5;

    ERC20 erc20 = new ERC20();
    Math math = new Math();
    PlannerHuff planner = new PlannerHuff();

    // Plan a new static call to do some maths
    planner.staticCall(address(math), math.add.selector);
    // Add raw argument 'a'
    planner.withRawArg(abi.encode(a));
    // Add raw argument 'b'
    planner.withRawArg(abi.encode(b));
    // Tell planner to save the output of this call to use later
    (uint8 stateIndex, uint8 cmdIndex) = plannerHuff.saveOutput();

    // Plan a regular call to transfer tokens using math output for value
    planner.regularCall(address(erc20), erc20.transfer.selector);
    // to
    planner.withRawArg(abi.encode(address(0xCAFE)));
    // value
    plannerHuff.withArg(stateIndex, cmdIndex);

    // encode weiroll script
    (bytes32[] memory _commands, bytes[] memory _state) = plannerHuff.encode();

    weiroll.execute(_commands, _state);

```

`Planner.sol` is compatible with regular weiroll. 

`PlannerHuff.sol` seperates memory/calldata state values and is compatible with Weiroll.huff

## Getting Started

### Requirements

-   [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)  
    -   You'll know you've done it right if you can run `git --version`
-   [Foundry / Foundryup](https://github.com/gakonst/foundry)
    -   This will install `forge`, `cast`, and `anvil`
    -   You can test you've installed them right by running `forge --version` and get an output like: `forge 0.2.0 (92f8951 2022-08-06T00:09:32.96582Z)`
    -   To get the latest of each, just run `foundryup`
-   [Huff Compiler](https://docs.huff.sh/get-started/installing/)
    -   You'll know you've done it right if you can run `huffc --version` and get an output like: `huffc 0.3.0`

### Quickstart

1. Clone this repo


```
git clone https://github.com/kyledewy/weiroll-huff/
cd weiroll-huff
```

2. Install dependencies

```shell
forge install
```

3. Build & Test

```shell
forge build
forge test
```


## License

[The Unlicense](https://github.com/huff-language/huff-project-template/blob/master/LICENSE)


## Acknowledgements
- [huff-template](https://github.com/huff-language/huff-project-template)
- [weiroll](https://github.com/weiroll/weiroll)
- [awesome-huff](https://github.com/devtooligan/awesome-huff)

## TODO
- [x] Static calls
- [x] Regular calls
- [x] Calls with value
- [ ] Dynamic variables
- [ ] USE_STATE command
- [ ] Extended commands

## Disclaimer

_These smart contracts are being provided as is. No guarantee, representation or warranty is being made, express or implied, as to the safety or correctness of the user interface or the smart contracts. They have not been audited and as such there can be no assurance they will work as intended, and users may experience delays, failures, errors, omissions, loss of transmitted information or loss of funds. The creators are not liable for any of the foregoing. Users should proceed with caution and use at their own risk._