
/// @use-src 11:"src/Weiroll.sol"
object "Weiroll_26936" {
    code {
        /// @src 11:92:4151  "contract Weiroll {..."
        mstore(64, memoryguard(160))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_Weiroll_26936()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Weiroll_26936_deployed"), datasize("Weiroll_26936_deployed"))

        setimmutable(_1, "26581", mload(128))

        return(_1, datasize("Weiroll_26936_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        function cleanup_t_uint160(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
        }

        function identity(value) -> ret {
            ret := value
        }

        function convert_t_uint160_to_t_uint160(value) -> converted {
            converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
        }

        function convert_t_uint160_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_uint160(value)
        }

        function convert_t_contract$_Weiroll_$26936_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_address(value)
        }

        /// @ast-id 26600
        /// @src 11:735:786  "constructor() {..."
        function constructor_Weiroll_26936() {

            /// @src 11:735:786  "constructor() {..."

            /// @src 11:774:778  "this"
            let expr_26595_address := address()
            /// @src 11:766:779  "address(this)"
            let expr_26596 := convert_t_contract$_Weiroll_$26936_to_t_address(expr_26595_address)
            /// @src 11:759:779  "self = address(this)"
            let _2 := expr_26596
            mstore(128, _2)
            let expr_26597 := expr_26596

        }
        /// @src 11:92:4151  "contract Weiroll {..."

    }
    /// @use-src 10:"src/CommandBuilder.sol", 11:"src/Weiroll.sol"
    object "Weiroll_26936_deployed" {
        code {
            /// @src 11:92:4151  "contract Weiroll {..."
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0xde792d5f
                {
                    // execute(bytes32[],bytes[])

                    external_fun_execute_26935()
                }

                default {}
            }

            revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74()

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                revert(0, 0)
            }

            function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
                revert(0, 0)
            }

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
            }

            function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                revert(0, 0)
            }

            function revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() {
                revert(0, 0)
            }

            function revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() {
                revert(0, 0)
            }

            // bytes32[]
            function abi_decode_t_array$_t_bytes32_$dyn_calldata_ptr(offset, end) -> arrayPos, length {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                length := calldataload(offset)
                if gt(length, 0xffffffffffffffff) { revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() }
                arrayPos := add(offset, 0x20)
                if gt(add(arrayPos, mul(length, 0x20)), end) { revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() }
            }

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
            }

            function panic_error_0x41() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x41)
                revert(0, 0x24)
            }

            function finalize_allocation(memPtr, size) {
                let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
                mstore(64, newFreePtr)
            }

            function allocate_memory(size) -> memPtr {
                memPtr := allocate_unbounded()
                finalize_allocation(memPtr, size)
            }

            function array_allocation_size_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            function revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() {
                revert(0, 0)
            }

            function array_allocation_size_t_bytes_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := round_up_to_mul_of_32(length)

                // add length slot
                size := add(size, 0x20)

            }

            function copy_calldata_to_memory(src, dst, length) {
                calldatacopy(dst, src, length)
                // clear end
                mstore(add(dst, length), 0)
            }

            function abi_decode_available_length_t_bytes_memory_ptr(src, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_bytes_memory_ptr(length))
                mstore(array, length)
                let dst := add(array, 0x20)
                if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
                copy_calldata_to_memory(src, dst, length)
            }

            // bytes
            function abi_decode_t_bytes_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := calldataload(offset)
                array := abi_decode_available_length_t_bytes_memory_ptr(add(offset, 0x20), length, end)
            }

            // bytes[]
            function abi_decode_available_length_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(offset, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(length))
                let dst := array

                mstore(array, length)
                dst := add(array, 0x20)

                let srcEnd := add(offset, mul(length, 0x20))
                if gt(srcEnd, end) {
                    revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef()
                }
                for { let src := offset } lt(src, srcEnd) { src := add(src, 0x20) }
                {

                    let innerOffset := calldataload(src)
                    if gt(innerOffset, 0xffffffffffffffff) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                    let elementPos := add(offset, innerOffset)

                    mstore(dst, abi_decode_t_bytes_memory_ptr(elementPos, end))
                    dst := add(dst, 0x20)
                }
            }

            // bytes[]
            function abi_decode_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := calldataload(offset)
                array := abi_decode_available_length_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(add(offset, 0x20), length, end)
            }

            function abi_decode_tuple_t_array$_t_bytes32_$dyn_calldata_ptrt_array$_t_bytes_memory_ptr_$dyn_memory_ptr(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0, value1 := abi_decode_t_array$_t_bytes32_$dyn_calldata_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 32))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value2 := abi_decode_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function array_length_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function array_dataslot_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function copy_memory_to_memory(src, dst, length) {
                let i := 0
                for { } lt(i, length) { i := add(i, 32) }
                {
                    mstore(add(dst, i), mload(add(src, i)))
                }
                if gt(i, length)
                {
                    // clear end
                    mstore(add(dst, length), 0)
                }
            }

            function abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr(value, pos) -> end {
                let length := array_length_t_bytes_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr(pos, length)
                copy_memory_to_memory(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encodeUpdatedPos_t_bytes_memory_ptr_to_t_bytes_memory_ptr(value0, pos) -> updatedPos {
                updatedPos := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr(value0, pos)
            }

            function array_nextElement_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(ptr) -> next {
                next := add(ptr, 0x20)
            }

            // bytes[] -> bytes[]
            function abi_encode_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_to_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_fromStack(value, pos)  -> end  {
                let length := array_length_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_fromStack(pos, length)
                let headStart := pos
                let tail := add(pos, mul(length, 0x20))
                let baseRef := array_dataslot_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(value)
                let srcPtr := baseRef
                for { let i := 0 } lt(i, length) { i := add(i, 1) }
                {
                    mstore(pos, sub(tail, headStart))
                    let elementValue0 := mload(srcPtr)
                    tail := abi_encodeUpdatedPos_t_bytes_memory_ptr_to_t_bytes_memory_ptr(elementValue0, tail)
                    srcPtr := array_nextElement_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(srcPtr)
                    pos := add(pos, 0x20)
                }
                pos := tail
                end := pos
            }

            function abi_encode_tuple_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr__to_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_to_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_fromStack(value0,  tail)

            }

            function external_fun_execute_26935() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_array$_t_bytes32_$dyn_calldata_ptrt_array$_t_bytes_memory_ptr_$dyn_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_execute_26935(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr__to_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr() -> ret {
                ret := 96
            }

            function zero_value_for_split_t_bytes32() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_bytes_memory_ptr() -> ret {
                ret := 96
            }

            function array_length_t_array$_t_bytes32_$dyn_calldata_ptr(value, len) -> length {

                length := len

            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function panic_error_0x32() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x32)
                revert(0, 0x24)
            }

            function calldata_array_index_access_t_array$_t_bytes32_$dyn_calldata_ptr(base_ref, length, index) -> addr {
                if iszero(lt(index, length)) { panic_error_0x32() }
                addr := add(base_ref, mul(index, 32))

            }

            function cleanup_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_bytes32(value) {
                if iszero(eq(value, cleanup_t_bytes32(value))) { revert(0, 0) }
            }

            function read_from_calldatat_bytes32(ptr) -> returnValue {

                let value := calldataload(ptr)
                validator_revert_t_bytes32(value)

                returnValue :=

                value

            }

            function cleanup_t_rational_32_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_32_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_32_by_1(value)))
            }

            function shift_left_dynamic(bits, value) -> newValue {
                newValue :=

                shl(bits, value)

            }

            function shift_left_t_bytes32_t_uint8(value, bits) -> result {
                bits := cleanup_t_uint8(bits)
                result := cleanup_t_bytes32(shift_left_dynamic(bits, cleanup_t_bytes32(value)))
            }

            function cleanup_t_bytes1(value) -> cleaned {
                cleaned := and(value, 0xff00000000000000000000000000000000000000000000000000000000000000)
            }

            function convert_t_bytes32_to_t_bytes1(value) -> converted {
                converted := cleanup_t_bytes1(value)
            }

            function shift_right_248_unsigned(value) -> newValue {
                newValue :=

                shr(248, value)

            }

            function convert_t_uint8_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_uint8(value)))
            }

            function convert_t_bytes1_to_t_uint8(value) -> converted {
                converted := convert_t_uint8_to_t_uint8(shift_right_248_unsigned(value))
            }

            function convert_t_uint8_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint8(value)))
            }

            function cleanup_t_rational_128_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_128_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_128_by_1(value)))
            }

            /// @src 11:383:428  "uint256 constant FLAG_EXTENDED_COMMAND = 0x80"
            function constant_FLAG_EXTENDED_COMMAND_26573() -> ret {
                /// @src 11:424:428  "0x80"
                let expr_26572 := 0x80
                let _16 := convert_t_rational_128_by_1_to_t_uint256(expr_26572)

                ret := _16
            }

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function cleanup_t_rational_40_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_40_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_40_by_1(value)))
            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
            }

            function convert_t_bytes32_to_t_uint256(value) -> converted {
                converted := convert_t_uint256_to_t_uint256(shift_right_0_unsigned(value))
            }

            function cleanup_t_rational_411376139330301510538742295639337626245683966408394965837152255_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_411376139330301510538742295639337626245683966408394965837152255_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_411376139330301510538742295639337626245683966408394965837152255_by_1(value)))
            }

            /// @src 11:482:586  "uint256 constant SHORT_COMMAND_FILL = 0x000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
            function constant_SHORT_COMMAND_FILL_26579() -> ret {
                /// @src 11:520:586  "0x000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
                let expr_26578 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffff
                let _19 := convert_t_rational_411376139330301510538742295639337626245683966408394965837152255_by_1_to_t_uint256(expr_26578)

                ret := _19
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function convert_t_uint256_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_uint256(value)))
            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if eq(value, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) { panic_error_0x11() }
                ret := add(value, 1)
            }

            function cleanup_t_rational_3_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_3_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_3_by_1(value)))
            }

            /// @src 11:341:377  "uint256 constant FLAG_CT_MASK = 0x03"
            function constant_FLAG_CT_MASK_26570() -> ret {
                /// @src 11:373:377  "0x03"
                let expr_26569 := 0x03
                let _24 := convert_t_rational_3_by_1_to_t_uint256(expr_26569)

                ret := _24
            }

            /// @src 11:154:198  "uint256 constant FLAG_CT_DELEGATECALL = 0x00"
            function constant_FLAG_CT_DELEGATECALL_26558() -> ret {
                /// @src 11:194:198  "0x00"
                let expr_26557 := 0x00
                let _25 := convert_t_rational_0_by_1_to_t_uint256(expr_26557)

                ret := _25
            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            /// @src 11:204:240  "uint256 constant FLAG_CT_CALL = 0x01"
            function constant_FLAG_CT_CALL_26561() -> ret {
                /// @src 11:236:240  "0x01"
                let expr_26560 := 0x01
                let _27 := convert_t_rational_1_by_1_to_t_uint256(expr_26560)

                ret := _27
            }

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
            }

            /// @src 11:246:288  "uint256 constant FLAG_CT_STATICCALL = 0x02"
            function constant_FLAG_CT_STATICCALL_26564() -> ret {
                /// @src 11:284:288  "0x02"
                let expr_26563 := 0x02
                let _29 := convert_t_rational_2_by_1_to_t_uint256(expr_26563)

                ret := _29
            }

            /// @src 11:294:335  "uint256 constant FLAG_CT_VALUECALL = 0x03"
            function constant_FLAG_CT_VALUECALL_26567() -> ret {
                /// @src 11:331:335  "0x03"
                let expr_26566 := 0x03
                let _31 := convert_t_rational_3_by_1_to_t_uint256(expr_26566)

                ret := _31
            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function store_literal_in_memory_c7fdd4298b1c10ef53524d3dbb9aa19b6f79064e24a88694a3e1296c07aba2af(memPtr) {

                mstore(add(memPtr, 0), "Invalid calltype")

            }

            function abi_encode_t_stringliteral_c7fdd4298b1c10ef53524d3dbb9aa19b6f79064e24a88694a3e1296c07aba2af_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 16)
                store_literal_in_memory_c7fdd4298b1c10ef53524d3dbb9aa19b6f79064e24a88694a3e1296c07aba2af(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_c7fdd4298b1c10ef53524d3dbb9aa19b6f79064e24a88694a3e1296c07aba2af__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_c7fdd4298b1c10ef53524d3dbb9aa19b6f79064e24a88694a3e1296c07aba2af_to_t_string_memory_ptr_fromStack( tail)

            }

            function memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            function convert_t_rational_32_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_32_by_1(value)))
            }

            function store_literal_in_memory_aa40e17436f2e4004a42ada7d5b9a58d55d2028d10fb758459302001968958bc(memPtr) {

                mstore(add(memPtr, 0), "_execute: value call has no valu")

                mstore(add(memPtr, 32), "e indicated.")

            }

            function abi_encode_t_stringliteral_aa40e17436f2e4004a42ada7d5b9a58d55d2028d10fb758459302001968958bc_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 44)
                store_literal_in_memory_aa40e17436f2e4004a42ada7d5b9a58d55d2028d10fb758459302001968958bc(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_aa40e17436f2e4004a42ada7d5b9a58d55d2028d10fb758459302001968958bc__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_aa40e17436f2e4004a42ada7d5b9a58d55d2028d10fb758459302001968958bc_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_aa40e17436f2e4004a42ada7d5b9a58d55d2028d10fb758459302001968958bc(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_aa40e17436f2e4004a42ada7d5b9a58d55d2028d10fb758459302001968958bc__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function convert_t_uint256_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint256(value)))
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function cleanup_t_bytes4(value) -> cleaned {
                cleaned := and(value, 0xffffffff00000000000000000000000000000000000000000000000000000000)
            }

            function convert_t_bytes32_to_t_bytes4(value) -> converted {
                converted := cleanup_t_bytes4(value)
            }

            function cleanup_t_rational_8_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_8_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_8_by_1(value)))
            }

            function cleanup_t_rational_255_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_255_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_255_by_1(value)))
            }

            /// @src 10:182:221  "uint256 constant IDX_END_OF_ARGS = 0xff"
            function constant_IDX_END_OF_ARGS_26152() -> ret {
                /// @src 10:217:221  "0xff"
                let expr_26151 := 0xff
                let _45 := convert_t_rational_255_by_1_to_t_uint256(expr_26151)

                ret := _45
            }

            function allocate_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_bytes_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function extract_returndata() -> data {

                switch returndatasize()
                case 0 {
                    data := zero_value_for_split_t_bytes_memory_ptr()
                }
                default {
                    data := allocate_memory_array_t_bytes_memory_ptr(returndatasize())
                    returndatacopy(add(data, 0x20), 0, returndatasize())
                }

            }

            function cleanup_t_bool(value) -> cleaned {
                cleaned := iszero(iszero(value))
            }

            function array_allocation_size_t_string_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := round_up_to_mul_of_32(length)

                // add length slot
                size := add(size, 0x20)

            }

            function allocate_memory_array_t_string_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_string_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function store_literal_in_memory_6ff165d3fe0272c13129fc9e1aecd998364a5fdcad04c6ae84a7d1dfc3d06a17(memPtr) {

                mstore(add(memPtr, 0), "Unknown")

            }

            function copy_literal_to_memory_6ff165d3fe0272c13129fc9e1aecd998364a5fdcad04c6ae84a7d1dfc3d06a17() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(7)
                store_literal_in_memory_6ff165d3fe0272c13129fc9e1aecd998364a5fdcad04c6ae84a7d1dfc3d06a17(add(memPtr, 32))
            }

            function convert_t_stringliteral_6ff165d3fe0272c13129fc9e1aecd998364a5fdcad04c6ae84a7d1dfc3d06a17_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_6ff165d3fe0272c13129fc9e1aecd998364a5fdcad04c6ae84a7d1dfc3d06a17()
            }

            function convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(value) -> converted  {
                converted := value

            }

            function abi_encode_t_rational_0_by_1_to_t_uint256_fromStack(value, pos) {
                mstore(pos, convert_t_rational_0_by_1_to_t_uint256(value))
            }

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function array_length_t_string_memory_ptr(value) -> length {

                length := mload(value)

            }

            function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_string_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_rational_0_by_1_t_address_t_string_memory_ptr__to_t_uint256_t_address_t_string_memory_ptr__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_rational_0_by_1_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                mstore(add(headStart, 64), sub(tail, headStart))
                tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value2,  tail)

            }

            function cleanup_t_rational_64_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_64_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_64_by_1(value)))
            }

            /// @src 11:434:475  "uint256 constant FLAG_TUPLE_RETURN = 0x40"
            function constant_FLAG_TUPLE_RETURN_26576() -> ret {
                /// @src 11:471:475  "0x40"
                let expr_26575 := 0x40
                let _74 := convert_t_rational_64_by_1_to_t_uint256(expr_26575)

                ret := _74
            }

            function cleanup_t_rational_88_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_88_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_88_by_1(value)))
            }

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            /// @ast-id 26935
            /// @src 11:792:4149  "function execute(bytes32[] calldata commands, bytes[] memory state)..."
            function fun_execute_26935(var_commands_26603_offset, var_commands_26603_length, var_state_26606_mpos) -> var__26610_mpos {
                /// @src 11:882:896  "bytes[] memory"
                let zero_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_1_mpos := zero_value_for_split_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr()
                var__26610_mpos := zero_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_1_mpos

                /// @src 11:912:927  "bytes32 command"
                let var_command_26613
                let zero_t_bytes32_2 := zero_value_for_split_t_bytes32()
                var_command_26613 := zero_t_bytes32_2
                /// @src 11:937:950  "uint256 flags"
                let var_flags_26616
                let zero_t_uint256_3 := zero_value_for_split_t_uint256()
                var_flags_26616 := zero_t_uint256_3
                /// @src 11:960:975  "bytes32 indices"
                let var_indices_26619
                let zero_t_bytes32_4 := zero_value_for_split_t_bytes32()
                var_indices_26619 := zero_t_bytes32_4
                /// @src 11:986:998  "bool success"
                let var_success_26622
                let zero_t_bool_5 := zero_value_for_split_t_bool()
                var_success_26622 := zero_t_bool_5
                /// @src 11:1008:1028  "bytes memory outdata"
                let var_outdata_26625_mpos
                let zero_t_bytes_memory_ptr_6_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var_outdata_26625_mpos := zero_t_bytes_memory_ptr_6_mpos
                /// @src 11:1064:1072  "commands"
                let _7_offset := var_commands_26603_offset
                let _7_length := var_commands_26603_length
                let expr_26629_offset := _7_offset
                let expr_26629_length := _7_length
                /// @src 11:1064:1079  "commands.length"
                let expr_26630 := array_length_t_array$_t_bytes32_$dyn_calldata_ptr(expr_26629_offset, expr_26629_length)
                /// @src 11:1039:1079  "uint256 commandsLength = commands.length"
                let var_commandsLength_26628 := expr_26630
                /// @src 11:1089:4121  "for (uint256 i; i < commandsLength;) {..."
                for {
                    /// @src 11:1094:1103  "uint256 i"
                    let var_i_26633
                    let zero_t_uint256_8 := zero_value_for_split_t_uint256()
                    var_i_26633 := zero_t_uint256_8
                    } 1 {
                }
                {
                    /// @src 11:1105:1106  "i"
                    let _9 := var_i_26633
                    let expr_26635 := _9
                    /// @src 11:1109:1123  "commandsLength"
                    let _10 := var_commandsLength_26628
                    let expr_26636 := _10
                    /// @src 11:1105:1123  "i < commandsLength"
                    let expr_26637 := lt(cleanup_t_uint256(expr_26635), cleanup_t_uint256(expr_26636))
                    if iszero(expr_26637) { break }
                    /// @src 11:1150:1158  "commands"
                    let _11_offset := var_commands_26603_offset
                    let _11_length := var_commands_26603_length
                    let expr_26639_offset := _11_offset
                    let expr_26639_length := _11_length
                    /// @src 11:1159:1160  "i"
                    let _12 := var_i_26633
                    let expr_26640 := _12
                    /// @src 11:1150:1161  "commands[i]"
                    let expr_26641 := read_from_calldatat_bytes32(calldata_array_index_access_t_array$_t_bytes32_$dyn_calldata_ptr(expr_26639_offset, expr_26639_length, expr_26640))
                    /// @src 11:1140:1161  "command = commands[i]"
                    var_command_26613 := expr_26641
                    let expr_26642 := expr_26641
                    /// @src 11:1204:1211  "command"
                    let _13 := var_command_26613
                    let expr_26651 := _13
                    /// @src 11:1215:1217  "32"
                    let expr_26652 := 0x20
                    /// @src 11:1204:1217  "command << 32"
                    let _14 := convert_t_rational_32_by_1_to_t_uint8(expr_26652)
                    let expr_26653 :=
                    shift_left_t_bytes32_t_uint8(expr_26651, _14)

                    /// @src 11:1197:1218  "bytes1(command << 32)"
                    let expr_26654 := convert_t_bytes32_to_t_bytes1(expr_26653)
                    /// @src 11:1191:1219  "uint8(bytes1(command << 32))"
                    let expr_26655 := convert_t_bytes1_to_t_uint8(expr_26654)
                    /// @src 11:1183:1220  "uint256(uint8(bytes1(command << 32)))"
                    let expr_26656 := convert_t_uint8_to_t_uint256(expr_26655)
                    /// @src 11:1175:1220  "flags = uint256(uint8(bytes1(command << 32)))"
                    var_flags_26616 := expr_26656
                    let expr_26657 := expr_26656
                    /// @src 11:1239:1244  "flags"
                    let _15 := var_flags_26616
                    let expr_26659 := _15
                    /// @src 11:1247:1268  "FLAG_EXTENDED_COMMAND"
                    let expr_26660 := constant_FLAG_EXTENDED_COMMAND_26573()
                    /// @src 11:1239:1268  "flags & FLAG_EXTENDED_COMMAND"
                    let expr_26661 := and(expr_26659, expr_26660)

                    /// @src 11:1272:1273  "0"
                    let expr_26662 := 0x00
                    /// @src 11:1239:1273  "flags & FLAG_EXTENDED_COMMAND != 0"
                    let expr_26663 := iszero(eq(cleanup_t_uint256(expr_26661), convert_t_rational_0_by_1_to_t_uint256(expr_26662)))
                    /// @src 11:1235:1432  "if (flags & FLAG_EXTENDED_COMMAND != 0) {..."
                    switch expr_26663
                    case 0 {
                        /// @src 11:1381:1388  "command"
                        let _17 := var_command_26613
                        let expr_26677 := _17
                        /// @src 11:1392:1394  "40"
                        let expr_26678 := 0x28
                        /// @src 11:1381:1394  "command << 40"
                        let _18 := convert_t_rational_40_by_1_to_t_uint8(expr_26678)
                        let expr_26679 :=
                        shift_left_t_bytes32_t_uint8(expr_26677, _18)

                        /// @src 11:1373:1395  "uint256(command << 40)"
                        let expr_26680 := convert_t_bytes32_to_t_uint256(expr_26679)
                        /// @src 11:1398:1416  "SHORT_COMMAND_FILL"
                        let expr_26681 := constant_SHORT_COMMAND_FILL_26579()
                        /// @src 11:1373:1416  "uint256(command << 40) | SHORT_COMMAND_FILL"
                        let expr_26682 := or(expr_26680, expr_26681)

                        /// @src 11:1365:1417  "bytes32(uint256(command << 40) | SHORT_COMMAND_FILL)"
                        let expr_26683 := convert_t_uint256_to_t_bytes32(expr_26682)
                        /// @src 11:1355:1417  "indices = bytes32(uint256(command << 40) | SHORT_COMMAND_FILL)"
                        var_indices_26619 := expr_26683
                        let expr_26684 := expr_26683
                        /// @src 11:1235:1432  "if (flags & FLAG_EXTENDED_COMMAND != 0) {..."
                    }
                    default {
                        /// @src 11:1303:1311  "commands"
                        let _20_offset := var_commands_26603_offset
                        let _20_length := var_commands_26603_length
                        let expr_26665_offset := _20_offset
                        let expr_26665_length := _20_length
                        /// @src 11:1312:1315  "i++"
                        let _22 := var_i_26633
                        let _21 := increment_t_uint256(_22)
                        var_i_26633 := _21
                        let expr_26667 := _22
                        /// @src 11:1303:1316  "commands[i++]"
                        let expr_26668 := read_from_calldatat_bytes32(calldata_array_index_access_t_array$_t_bytes32_$dyn_calldata_ptr(expr_26665_offset, expr_26665_length, expr_26667))
                        /// @src 11:1293:1316  "indices = commands[i++]"
                        var_indices_26619 := expr_26668
                        let expr_26669 := expr_26668
                        /// @src 11:1235:1432  "if (flags & FLAG_EXTENDED_COMMAND != 0) {..."
                    }
                    /// @src 11:1450:1455  "flags"
                    let _23 := var_flags_26616
                    let expr_26688 := _23
                    /// @src 11:1458:1470  "FLAG_CT_MASK"
                    let expr_26689 := constant_FLAG_CT_MASK_26570()
                    /// @src 11:1450:1470  "flags & FLAG_CT_MASK"
                    let expr_26690 := and(expr_26688, expr_26689)

                    /// @src 11:1474:1494  "FLAG_CT_DELEGATECALL"
                    let expr_26691 := constant_FLAG_CT_DELEGATECALL_26558()
                    /// @src 11:1450:1494  "flags & FLAG_CT_MASK == FLAG_CT_DELEGATECALL"
                    let expr_26692 := eq(cleanup_t_uint256(expr_26690), cleanup_t_uint256(expr_26691))
                    /// @src 11:1446:3406  "if (flags & FLAG_CT_MASK == FLAG_CT_DELEGATECALL) {..."
                    switch expr_26692
                    case 0 {
                        /// @src 11:1835:1840  "flags"
                        let _26 := var_flags_26616
                        let expr_26719 := _26
                        /// @src 11:1843:1855  "FLAG_CT_MASK"
                        let expr_26720 := constant_FLAG_CT_MASK_26570()
                        /// @src 11:1835:1855  "flags & FLAG_CT_MASK"
                        let expr_26721 := and(expr_26719, expr_26720)

                        /// @src 11:1859:1871  "FLAG_CT_CALL"
                        let expr_26722 := constant_FLAG_CT_CALL_26561()
                        /// @src 11:1835:1871  "flags & FLAG_CT_MASK == FLAG_CT_CALL"
                        let expr_26723 := eq(cleanup_t_uint256(expr_26721), cleanup_t_uint256(expr_26722))
                        /// @src 11:1831:3406  "if (flags & FLAG_CT_MASK == FLAG_CT_CALL) {..."
                        switch expr_26723
                        case 0 {
                            /// @src 11:2204:2209  "flags"
                            let _28 := var_flags_26616
                            let expr_26750 := _28
                            /// @src 11:2212:2224  "FLAG_CT_MASK"
                            let expr_26751 := constant_FLAG_CT_MASK_26570()
                            /// @src 11:2204:2224  "flags & FLAG_CT_MASK"
                            let expr_26752 := and(expr_26750, expr_26751)

                            /// @src 11:2228:2246  "FLAG_CT_STATICCALL"
                            let expr_26753 := constant_FLAG_CT_STATICCALL_26564()
                            /// @src 11:2204:2246  "flags & FLAG_CT_MASK == FLAG_CT_STATICCALL"
                            let expr_26754 := eq(cleanup_t_uint256(expr_26752), cleanup_t_uint256(expr_26753))
                            /// @src 11:2200:3406  "if (flags & FLAG_CT_MASK == FLAG_CT_STATICCALL) {..."
                            switch expr_26754
                            case 0 {
                                /// @src 11:2585:2590  "flags"
                                let _30 := var_flags_26616
                                let expr_26781 := _30
                                /// @src 11:2593:2605  "FLAG_CT_MASK"
                                let expr_26782 := constant_FLAG_CT_MASK_26570()
                                /// @src 11:2585:2605  "flags & FLAG_CT_MASK"
                                let expr_26783 := and(expr_26781, expr_26782)

                                /// @src 11:2609:2626  "FLAG_CT_VALUECALL"
                                let expr_26784 := constant_FLAG_CT_VALUECALL_26567()
                                /// @src 11:2585:2626  "flags & FLAG_CT_MASK == FLAG_CT_VALUECALL"
                                let expr_26785 := eq(cleanup_t_uint256(expr_26783), cleanup_t_uint256(expr_26784))
                                /// @src 11:2581:3406  "if (flags & FLAG_CT_MASK == FLAG_CT_VALUECALL) {..."
                                switch expr_26785
                                case 0 {
                                    /// @src 11:3365:3391  "revert(\"Invalid calltype\")"
                                    {
                                        let _32 := allocate_unbounded()
                                        mstore(_32, 3963877391197344453575983046348115674221700746820753546331534351508065746944)
                                        let _33 := abi_encode_tuple_t_stringliteral_c7fdd4298b1c10ef53524d3dbb9aa19b6f79064e24a88694a3e1296c07aba2af__to_t_string_memory_ptr__fromStack(add(_32, 4) )
                                        revert(_32, sub(_33, _32))
                                    }/// @src 11:2581:3406  "if (flags & FLAG_CT_MASK == FLAG_CT_VALUECALL) {..."
                                }
                                default {
                                    /// @src 11:2646:2661  "uint256 calleth"
                                    let var_calleth_26787
                                    let zero_t_uint256_34 := zero_value_for_split_t_uint256()
                                    var_calleth_26787 := zero_t_uint256_34
                                    /// @src 11:2696:2701  "state"
                                    let _35_mpos := var_state_26606_mpos
                                    let expr_26791_mpos := _35_mpos
                                    /// @src 11:2715:2722  "indices"
                                    let _36 := var_indices_26619
                                    let expr_26796 := _36
                                    /// @src 11:2708:2723  "bytes1(indices)"
                                    let expr_26797 := convert_t_bytes32_to_t_bytes1(expr_26796)
                                    /// @src 11:2702:2724  "uint8(bytes1(indices))"
                                    let expr_26798 := convert_t_bytes1_to_t_uint8(expr_26797)
                                    /// @src 11:2696:2725  "state[uint8(bytes1(indices))]"
                                    let _37_mpos := mload(memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_26791_mpos, convert_t_uint8_to_t_uint256(expr_26798)))
                                    let expr_26799_mpos := _37_mpos
                                    /// @src 11:2679:2725  "bytes memory v = state[uint8(bytes1(indices))]"
                                    let var_v_26790_mpos := expr_26799_mpos
                                    /// @src 11:2751:2752  "v"
                                    let _38_mpos := var_v_26790_mpos
                                    let expr_26802_mpos := _38_mpos
                                    /// @src 11:2751:2759  "v.length"
                                    let expr_26803 := array_length_t_bytes_memory_ptr(expr_26802_mpos)
                                    /// @src 11:2763:2765  "32"
                                    let expr_26804 := 0x20
                                    /// @src 11:2751:2765  "v.length == 32"
                                    let expr_26805 := eq(cleanup_t_uint256(expr_26803), convert_t_rational_32_by_1_to_t_uint256(expr_26804))
                                    /// @src 11:2743:2814  "require(v.length == 32, \"_execute: value call has no value indicated.\")"
                                    require_helper_t_stringliteral_aa40e17436f2e4004a42ada7d5b9a58d55d2028d10fb758459302001968958bc(expr_26805)
                                    /// @src 11:2832:2911  "assembly {..."
                                    {
                                        var_calleth_26787 := mload(add(var_v_26790_mpos, 0x20))
                                    }
                                    /// @src 11:2973:2980  "command"
                                    let _39 := var_command_26613
                                    let expr_26819 := _39
                                    /// @src 11:2965:2981  "uint256(command)"
                                    let expr_26820 := convert_t_bytes32_to_t_uint256(expr_26819)
                                    /// @src 11:2957:2982  "uint160(uint256(command))"
                                    let expr_26821 := convert_t_uint256_to_t_uint160(expr_26820)
                                    /// @src 11:2949:2983  "address(uint160(uint256(command)))"
                                    let expr_26822 := convert_t_uint160_to_t_address(expr_26821)
                                    /// @src 11:2949:2988  "address(uint160(uint256(command))).call"
                                    let expr_26823_address := expr_26822
                                    /// @src 11:3027:3034  "calleth"
                                    let _40 := var_calleth_26787
                                    let expr_26824 := _40
                                    /// @src 11:2949:3052  "address(uint160(uint256(command))).call{ // target..."
                                    let expr_26825_address := expr_26823_address
                                    let expr_26825_value := expr_26824
                                    /// @src 11:3104:3109  "state"
                                    let _41_mpos := var_state_26606_mpos
                                    let expr_26826_mpos := _41_mpos
                                    /// @src 11:3104:3121  "state.buildInputs"
                                    let expr_26827_self_mpos := expr_26826_mpos
                                    /// @src 11:3189:3196  "command"
                                    let _42 := var_command_26613
                                    let expr_26830 := _42
                                    /// @src 11:3182:3197  "bytes4(command)"
                                    let expr_26831 := convert_t_bytes32_to_t_bytes4(expr_26830)
                                    /// @src 11:3239:3246  "indices"
                                    let _43 := var_indices_26619
                                    let expr_26836 := _43
                                    /// @src 11:3250:3251  "8"
                                    let expr_26837 := 0x08
                                    /// @src 11:3239:3251  "indices << 8"
                                    let _44 := convert_t_rational_8_by_1_to_t_uint8(expr_26837)
                                    let expr_26838 :=
                                    shift_left_t_bytes32_t_uint8(expr_26836, _44)

                                    /// @src 11:3231:3252  "uint256(indices << 8)"
                                    let expr_26839 := convert_t_bytes32_to_t_uint256(expr_26838)
                                    /// @src 11:3255:3269  "CommandBuilder"
                                    let expr_26840_address := linkersymbol("src/CommandBuilder.sol:CommandBuilder")
                                    /// @src 11:3255:3285  "CommandBuilder.IDX_END_OF_ARGS"
                                    let expr_26841 := constant_IDX_END_OF_ARGS_26152()
                                    /// @src 11:3231:3285  "uint256(indices << 8) | CommandBuilder.IDX_END_OF_ARGS"
                                    let expr_26842 := or(expr_26839, expr_26841)

                                    /// @src 11:3223:3286  "bytes32(uint256(indices << 8) | CommandBuilder.IDX_END_OF_ARGS)"
                                    let expr_26843 := convert_t_uint256_to_t_bytes32(expr_26842)
                                    /// @src 11:3104:3308  "state.buildInputs(..."
                                    let expr_26844_mpos := fun_buildInputs_26400(expr_26827_self_mpos, expr_26831, expr_26843)
                                    /// @src 11:2949:3326  "address(uint160(uint256(command))).call{ // target..."

                                    let _46 := add(expr_26844_mpos, 0x20)
                                    let _47 := mload(expr_26844_mpos)

                                    let expr_26845_component_1 := call(gas(), expr_26825_address,  expr_26825_value,  _46, _47, 0, 0)
                                    let expr_26845_component_2_mpos := extract_returndata()
                                    /// @src 11:2928:3326  "(success, outdata) = address(uint160(uint256(command))).call{ // target..."
                                    var_outdata_26625_mpos := expr_26845_component_2_mpos
                                    var_success_26622 := expr_26845_component_1
                                    /// @src 11:2581:3406  "if (flags & FLAG_CT_MASK == FLAG_CT_VALUECALL) {..."
                                }
                                /// @src 11:2200:3406  "if (flags & FLAG_CT_MASK == FLAG_CT_STATICCALL) {..."
                            }
                            default {
                                /// @src 11:2311:2318  "command"
                                let _48 := var_command_26613
                                let expr_26764 := _48
                                /// @src 11:2303:2319  "uint256(command)"
                                let expr_26765 := convert_t_bytes32_to_t_uint256(expr_26764)
                                /// @src 11:2295:2320  "uint160(uint256(command))"
                                let expr_26766 := convert_t_uint256_to_t_uint160(expr_26765)
                                /// @src 11:2287:2321  "address(uint160(uint256(command)))"
                                let expr_26767 := convert_t_uint160_to_t_address(expr_26766)
                                /// @src 11:2287:2332  "address(uint160(uint256(command))).staticcall"
                                let expr_26768_address := expr_26767
                                /// @src 11:2394:2399  "state"
                                let _49_mpos := var_state_26606_mpos
                                let expr_26769_mpos := _49_mpos
                                /// @src 11:2394:2411  "state.buildInputs"
                                let expr_26770_self_mpos := expr_26769_mpos
                                /// @src 11:2479:2486  "command"
                                let _50 := var_command_26613
                                let expr_26773 := _50
                                /// @src 11:2472:2487  "bytes4(command)"
                                let expr_26774 := convert_t_bytes32_to_t_bytes4(expr_26773)
                                /// @src 11:2513:2520  "indices"
                                let _51 := var_indices_26619
                                let expr_26775 := _51
                                /// @src 11:2394:2542  "state.buildInputs(..."
                                let expr_26776_mpos := fun_buildInputs_26400(expr_26770_self_mpos, expr_26774, expr_26775)
                                /// @src 11:2287:2560  "address(uint160(uint256(command))).staticcall( // target..."

                                let _52 := add(expr_26776_mpos, 0x20)
                                let _53 := mload(expr_26776_mpos)

                                let expr_26777_component_1 := staticcall(gas(), expr_26768_address,  _52, _53, 0, 0)
                                let expr_26777_component_2_mpos := extract_returndata()
                                /// @src 11:2266:2560  "(success, outdata) = address(uint160(uint256(command))).staticcall( // target..."
                                var_outdata_26625_mpos := expr_26777_component_2_mpos
                                var_success_26622 := expr_26777_component_1
                                /// @src 11:2200:3406  "if (flags & FLAG_CT_MASK == FLAG_CT_STATICCALL) {..."
                            }
                            /// @src 11:1831:3406  "if (flags & FLAG_CT_MASK == FLAG_CT_CALL) {..."
                        }
                        default {
                            /// @src 11:1936:1943  "command"
                            let _54 := var_command_26613
                            let expr_26733 := _54
                            /// @src 11:1928:1944  "uint256(command)"
                            let expr_26734 := convert_t_bytes32_to_t_uint256(expr_26733)
                            /// @src 11:1920:1945  "uint160(uint256(command))"
                            let expr_26735 := convert_t_uint256_to_t_uint160(expr_26734)
                            /// @src 11:1912:1946  "address(uint160(uint256(command)))"
                            let expr_26736 := convert_t_uint160_to_t_address(expr_26735)
                            /// @src 11:1912:1951  "address(uint160(uint256(command))).call"
                            let expr_26737_address := expr_26736
                            /// @src 11:2013:2018  "state"
                            let _55_mpos := var_state_26606_mpos
                            let expr_26738_mpos := _55_mpos
                            /// @src 11:2013:2030  "state.buildInputs"
                            let expr_26739_self_mpos := expr_26738_mpos
                            /// @src 11:2098:2105  "command"
                            let _56 := var_command_26613
                            let expr_26742 := _56
                            /// @src 11:2091:2106  "bytes4(command)"
                            let expr_26743 := convert_t_bytes32_to_t_bytes4(expr_26742)
                            /// @src 11:2132:2139  "indices"
                            let _57 := var_indices_26619
                            let expr_26744 := _57
                            /// @src 11:2013:2161  "state.buildInputs(..."
                            let expr_26745_mpos := fun_buildInputs_26400(expr_26739_self_mpos, expr_26743, expr_26744)
                            /// @src 11:1912:2179  "address(uint160(uint256(command))).call( // target..."

                            let _58 := add(expr_26745_mpos, 0x20)
                            let _59 := mload(expr_26745_mpos)

                            let expr_26746_component_1 := call(gas(), expr_26737_address,  0,  _58, _59, 0, 0)
                            let expr_26746_component_2_mpos := extract_returndata()
                            /// @src 11:1891:2179  "(success, outdata) = address(uint160(uint256(command))).call( // target..."
                            var_outdata_26625_mpos := expr_26746_component_2_mpos
                            var_success_26622 := expr_26746_component_1
                            /// @src 11:1831:3406  "if (flags & FLAG_CT_MASK == FLAG_CT_CALL) {..."
                        }
                        /// @src 11:1446:3406  "if (flags & FLAG_CT_MASK == FLAG_CT_DELEGATECALL) {..."
                    }
                    default {
                        /// @src 11:1559:1566  "command"
                        let _60 := var_command_26613
                        let expr_26702 := _60
                        /// @src 11:1551:1567  "uint256(command)"
                        let expr_26703 := convert_t_bytes32_to_t_uint256(expr_26702)
                        /// @src 11:1543:1568  "uint160(uint256(command))"
                        let expr_26704 := convert_t_uint256_to_t_uint160(expr_26703)
                        /// @src 11:1535:1569  "address(uint160(uint256(command)))"
                        let expr_26705 := convert_t_uint160_to_t_address(expr_26704)
                        /// @src 11:1535:1582  "address(uint160(uint256(command))).delegatecall"
                        let expr_26706_address := expr_26705
                        /// @src 11:1644:1649  "state"
                        let _61_mpos := var_state_26606_mpos
                        let expr_26707_mpos := _61_mpos
                        /// @src 11:1644:1661  "state.buildInputs"
                        let expr_26708_self_mpos := expr_26707_mpos
                        /// @src 11:1729:1736  "command"
                        let _62 := var_command_26613
                        let expr_26711 := _62
                        /// @src 11:1722:1737  "bytes4(command)"
                        let expr_26712 := convert_t_bytes32_to_t_bytes4(expr_26711)
                        /// @src 11:1763:1770  "indices"
                        let _63 := var_indices_26619
                        let expr_26713 := _63
                        /// @src 11:1644:1792  "state.buildInputs(..."
                        let expr_26714_mpos := fun_buildInputs_26400(expr_26708_self_mpos, expr_26712, expr_26713)
                        /// @src 11:1535:1810  "address(uint160(uint256(command))).delegatecall( // target..."

                        let _64 := add(expr_26714_mpos, 0x20)
                        let _65 := mload(expr_26714_mpos)

                        let expr_26715_component_1 := delegatecall(gas(), expr_26706_address,  _64, _65, 0, 0)
                        let expr_26715_component_2_mpos := extract_returndata()
                        /// @src 11:1514:1810  "(success, outdata) = address(uint160(uint256(command))).delegatecall( // target..."
                        var_outdata_26625_mpos := expr_26715_component_2_mpos
                        var_success_26622 := expr_26715_component_1
                        /// @src 11:1446:3406  "if (flags & FLAG_CT_MASK == FLAG_CT_DELEGATECALL) {..."
                    }
                    /// @src 11:3425:3432  "success"
                    let _66 := var_success_26622
                    let expr_26858 := _66
                    /// @src 11:3424:3432  "!success"
                    let expr_26859 := cleanup_t_bool(iszero(expr_26858))
                    /// @src 11:3420:3855  "if (!success) {..."
                    if expr_26859 {
                        /// @src 11:3456:3463  "outdata"
                        let _67_mpos := var_outdata_26625_mpos
                        let expr_26860_mpos := _67_mpos
                        /// @src 11:3456:3470  "outdata.length"
                        let expr_26861 := array_length_t_bytes_memory_ptr(expr_26860_mpos)
                        /// @src 11:3473:3474  "0"
                        let expr_26862 := 0x00
                        /// @src 11:3456:3474  "outdata.length > 0"
                        let expr_26863 := gt(cleanup_t_uint256(expr_26861), convert_t_rational_0_by_1_to_t_uint256(expr_26862))
                        /// @src 11:3452:3600  "if (outdata.length > 0) {..."
                        if expr_26863 {
                            /// @src 11:3498:3582  "assembly {..."
                            {
                                var_outdata_26625_mpos := add(var_outdata_26625_mpos, 68)
                            }
                            /// @src 11:3452:3600  "if (outdata.length > 0) {..."
                        }
                        /// @src 11:3677:3678  "0"
                        let expr_26868 := 0x00
                        /// @src 11:3732:3739  "command"
                        let _68 := var_command_26613
                        let expr_26875 := _68
                        /// @src 11:3724:3740  "uint256(command)"
                        let expr_26876 := convert_t_bytes32_to_t_uint256(expr_26875)
                        /// @src 11:3716:3741  "uint160(uint256(command))"
                        let expr_26877 := convert_t_uint256_to_t_uint160(expr_26876)
                        /// @src 11:3708:3742  "address(uint160(uint256(command)))"
                        let expr_26878 := convert_t_uint160_to_t_address(expr_26877)
                        /// @src 11:3773:3780  "outdata"
                        let _69_mpos := var_outdata_26625_mpos
                        let expr_26879_mpos := _69_mpos
                        /// @src 11:3773:3787  "outdata.length"
                        let expr_26880 := array_length_t_bytes_memory_ptr(expr_26879_mpos)
                        /// @src 11:3790:3791  "0"
                        let expr_26881 := 0x00
                        /// @src 11:3773:3791  "outdata.length > 0"
                        let expr_26882 := gt(cleanup_t_uint256(expr_26880), convert_t_rational_0_by_1_to_t_uint256(expr_26881))
                        /// @src 11:3773:3821  "outdata.length > 0 ? string(outdata) : \"Unknown\""
                        let expr_26888_mpos
                        switch expr_26882
                        case 0 {
                            expr_26888_mpos := convert_t_stringliteral_6ff165d3fe0272c13129fc9e1aecd998364a5fdcad04c6ae84a7d1dfc3d06a17_to_t_string_memory_ptr()
                        }
                        default {
                            /// @src 11:3801:3808  "outdata"
                            let _70_mpos := var_outdata_26625_mpos
                            let expr_26885_mpos := _70_mpos
                            /// @src 11:3794:3809  "string(outdata)"
                            let expr_26886_mpos := convert_array_t_bytes_memory_ptr_to_t_string_memory_ptr(expr_26885_mpos)
                            /// @src 11:3773:3821  "outdata.length > 0 ? string(outdata) : \"Unknown\""
                            expr_26888_mpos := expr_26886_mpos
                        }
                        /// @src 11:3624:3840  "ExecutionFailed({..."
                        {
                            let _71 := allocate_unbounded()
                            mstore(_71, 108211950803978040105857975037789795827943740500214421538035376402453611151360)
                            let _72 := abi_encode_tuple_t_rational_0_by_1_t_address_t_string_memory_ptr__to_t_uint256_t_address_t_string_memory_ptr__fromStack(add(_71, 4) , expr_26868, expr_26878, expr_26888_mpos)
                            revert(_71, sub(_72, _71))
                        }/// @src 11:3420:3855  "if (!success) {..."
                    }
                    /// @src 11:3873:3878  "flags"
                    let _73 := var_flags_26616
                    let expr_26893 := _73
                    /// @src 11:3881:3898  "FLAG_TUPLE_RETURN"
                    let expr_26894 := constant_FLAG_TUPLE_RETURN_26576()
                    /// @src 11:3873:3898  "flags & FLAG_TUPLE_RETURN"
                    let expr_26895 := and(expr_26893, expr_26894)

                    /// @src 11:3902:3903  "0"
                    let expr_26896 := 0x00
                    /// @src 11:3873:3903  "flags & FLAG_TUPLE_RETURN != 0"
                    let expr_26897 := iszero(eq(cleanup_t_uint256(expr_26895), convert_t_rational_0_by_1_to_t_uint256(expr_26896)))
                    /// @src 11:3869:4083  "if (flags & FLAG_TUPLE_RETURN != 0) {..."
                    switch expr_26897
                    case 0 {
                        /// @src 11:4018:4023  "state"
                        let _75_mpos := var_state_26606_mpos
                        let expr_26912_mpos := _75_mpos
                        /// @src 11:4018:4036  "state.writeOutputs"
                        let expr_26913_self_mpos := expr_26912_mpos
                        /// @src 11:4044:4051  "command"
                        let _76 := var_command_26613
                        let expr_26916 := _76
                        /// @src 11:4055:4057  "88"
                        let expr_26917 := 0x58
                        /// @src 11:4044:4057  "command << 88"
                        let _77 := convert_t_rational_88_by_1_to_t_uint8(expr_26917)
                        let expr_26918 :=
                        shift_left_t_bytes32_t_uint8(expr_26916, _77)

                        /// @src 11:4037:4058  "bytes1(command << 88)"
                        let expr_26919 := convert_t_bytes32_to_t_bytes1(expr_26918)
                        /// @src 11:4060:4067  "outdata"
                        let _78_mpos := var_outdata_26625_mpos
                        let expr_26920_mpos := _78_mpos
                        /// @src 11:4018:4068  "state.writeOutputs(bytes1(command << 88), outdata)"
                        let expr_26921_mpos := fun_writeOutputs_26482(expr_26913_self_mpos, expr_26919, expr_26920_mpos)
                        /// @src 11:4010:4068  "state = state.writeOutputs(bytes1(command << 88), outdata)"
                        var_state_26606_mpos := expr_26921_mpos
                        let _79_mpos := var_state_26606_mpos
                        let expr_26922_mpos := _79_mpos
                        /// @src 11:3869:4083  "if (flags & FLAG_TUPLE_RETURN != 0) {..."
                    }
                    default {
                        /// @src 11:3923:3928  "state"
                        let _80_mpos := var_state_26606_mpos
                        let expr_26898_mpos := _80_mpos
                        /// @src 11:3923:3939  "state.writeTuple"
                        let expr_26900_self_mpos := expr_26898_mpos
                        /// @src 11:3947:3954  "command"
                        let _81 := var_command_26613
                        let expr_26903 := _81
                        /// @src 11:3958:3960  "88"
                        let expr_26904 := 0x58
                        /// @src 11:3947:3960  "command << 88"
                        let _82 := convert_t_rational_88_by_1_to_t_uint8(expr_26904)
                        let expr_26905 :=
                        shift_left_t_bytes32_t_uint8(expr_26903, _82)

                        /// @src 11:3940:3961  "bytes1(command << 88)"
                        let expr_26906 := convert_t_bytes32_to_t_bytes1(expr_26905)
                        /// @src 11:3963:3970  "outdata"
                        let _83_mpos := var_outdata_26625_mpos
                        let expr_26907_mpos := _83_mpos
                        fun_writeTuple_26532(expr_26900_self_mpos, expr_26906, expr_26907_mpos)
                        /// @src 11:3869:4083  "if (flags & FLAG_TUPLE_RETURN != 0) {..."
                    }
                    /// @src 11:4106:4109  "++i"
                    let _85 := var_i_26633
                    let _84 := increment_wrapping_t_uint256(_85)
                    var_i_26633 := _84
                    let expr_26927 := _84
                }
                /// @src 11:4137:4142  "state"
                let _86_mpos := var_state_26606_mpos
                let expr_26932_mpos := _86_mpos
                /// @src 11:4130:4142  "return state"
                var__26610_mpos := expr_26932_mpos
                leave

            }
            /// @src 11:92:4151  "contract Weiroll {..."

            function shift_left_248(value) -> newValue {
                newValue :=

                shl(248, value)

            }

            /// @src 10:89:132  "uint256 constant IDX_VARIABLE_LENGTH = 0x80"
            function constant_IDX_VARIABLE_LENGTH_26146() -> ret {
                /// @src 10:128:132  "0x80"
                let expr_26145 := 0x80
                let _100 := convert_t_rational_128_by_1_to_t_uint256(expr_26145)

                ret := _100
            }

            function cleanup_t_rational_127_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_127_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_127_by_1(value)))
            }

            /// @src 10:138:176  "uint256 constant IDX_VALUE_MASK = 0x7f"
            function constant_IDX_VALUE_MASK_26149() -> ret {
                /// @src 10:172:176  "0x7f"
                let expr_26148 := 0x7f
                let _103 := convert_t_rational_127_by_1_to_t_uint256(expr_26148)

                ret := _103
            }

            function store_literal_in_memory_906af06c7db4e99906c2ffa4bc20ae22a26fb5b872f61c0f88aea19bb519ed99(memPtr) {

                mstore(add(memPtr, 0), "Static state variables must be 3")

                mstore(add(memPtr, 32), "2 bytes")

            }

            function abi_encode_t_stringliteral_906af06c7db4e99906c2ffa4bc20ae22a26fb5b872f61c0f88aea19bb519ed99_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 39)
                store_literal_in_memory_906af06c7db4e99906c2ffa4bc20ae22a26fb5b872f61c0f88aea19bb519ed99(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_906af06c7db4e99906c2ffa4bc20ae22a26fb5b872f61c0f88aea19bb519ed99__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_906af06c7db4e99906c2ffa4bc20ae22a26fb5b872f61c0f88aea19bb519ed99_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_906af06c7db4e99906c2ffa4bc20ae22a26fb5b872f61c0f88aea19bb519ed99(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_906af06c7db4e99906c2ffa4bc20ae22a26fb5b872f61c0f88aea19bb519ed99__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                // overflow, if x > (maxValue - y)
                if gt(x, sub(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, y)) { panic_error_0x11() }

                sum := add(x, y)
            }

            function cleanup_t_rational_254_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_254_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_254_by_1(value)))
            }

            /// @src 10:227:264  "uint256 constant IDX_USE_STATE = 0xfe"
            function constant_IDX_USE_STATE_26155() -> ret {
                /// @src 10:260:264  "0xfe"
                let expr_26154 := 0xfe
                let _108 := convert_t_rational_254_by_1_to_t_uint256(expr_26154)

                ret := _108
            }

            function panic_error_0x12() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x12)
                revert(0, 0x24)
            }

            function mod_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }
                r := mod(x, y)
            }

            function store_literal_in_memory_9eb5bd96dd2f01a09d89b62c4cb2f71684b502338db54aa97ae5533490d0ad27(memPtr) {

                mstore(add(memPtr, 0), "Dynamic state variables must be ")

                mstore(add(memPtr, 32), "a multiple of 32 bytes")

            }

            function abi_encode_t_stringliteral_9eb5bd96dd2f01a09d89b62c4cb2f71684b502338db54aa97ae5533490d0ad27_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 54)
                store_literal_in_memory_9eb5bd96dd2f01a09d89b62c4cb2f71684b502338db54aa97ae5533490d0ad27(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_9eb5bd96dd2f01a09d89b62c4cb2f71684b502338db54aa97ae5533490d0ad27__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_9eb5bd96dd2f01a09d89b62c4cb2f71684b502338db54aa97ae5533490d0ad27_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_9eb5bd96dd2f01a09d89b62c4cb2f71684b502338db54aa97ae5533490d0ad27(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_9eb5bd96dd2f01a09d89b62c4cb2f71684b502338db54aa97ae5533490d0ad27__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function wrapping_add_t_uint256(x, y) -> sum {
                sum := cleanup_t_uint256(add(x, y))
            }

            function cleanup_t_rational_4_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4_by_1(value)))
            }

            function zero_memory_chunk_t_bytes1(dataStart, dataSizeInBytes) {
                calldatacopy(dataStart, calldatasize(), dataSizeInBytes)
            }

            function allocate_and_zero_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_bytes_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_bytes_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_memory_chunk_t_bytes1(dataStart, dataSize)
            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                if lt(x, y) { panic_error_0x11() }

                diff := sub(x, y)
            }

            /// @ast-id 26400
            /// @src 10:271:3454  "function buildInputs(..."
            function fun_buildInputs_26400(var_state_26158_mpos, var_selector_26160, var_indices_26162) -> var_ret_26165_mpos {
                /// @src 10:401:417  "bytes memory ret"
                let zero_t_bytes_memory_ptr_87_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var_ret_26165_mpos := zero_t_bytes_memory_ptr_87_mpos

                /// @src 10:429:442  "uint256 count"
                let var_count_26168
                let zero_t_uint256_88 := zero_value_for_split_t_uint256()
                var_count_26168 := zero_t_uint256_88
                /// @src 10:500:512  "uint256 free"
                let var_free_26171
                let zero_t_uint256_89 := zero_value_for_split_t_uint256()
                var_free_26171 := zero_t_uint256_89
                /// @src 10:576:598  "bytes memory stateData"
                let var_stateData_26174_mpos
                let zero_t_bytes_memory_ptr_90_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var_stateData_26174_mpos := zero_t_bytes_memory_ptr_90_mpos
                /// @src 10:672:683  "uint256 idx"
                let var_idx_26177
                let zero_t_uint256_91 := zero_value_for_split_t_uint256()
                var_idx_26177 := zero_t_uint256_91
                /// @src 10:746:1884  "for (uint256 i; i < 32;) {..."
                for {
                    /// @src 10:751:760  "uint256 i"
                    let var_i_26180
                    let zero_t_uint256_92 := zero_value_for_split_t_uint256()
                    var_i_26180 := zero_t_uint256_92
                    } 1 {
                }
                {
                    /// @src 10:762:763  "i"
                    let _93 := var_i_26180
                    let expr_26182 := _93
                    /// @src 10:766:768  "32"
                    let expr_26183 := 0x20
                    /// @src 10:762:768  "i < 32"
                    let expr_26184 := lt(cleanup_t_uint256(expr_26182), convert_t_rational_32_by_1_to_t_uint256(expr_26183))
                    if iszero(expr_26184) { break }
                    /// @src 10:797:804  "indices"
                    let _94 := var_indices_26162
                    let expr_26188 := _94
                    /// @src 10:805:806  "i"
                    let _95 := var_i_26180
                    let expr_26189 := _95
                    /// @src 10:797:807  "indices[i]"
                    let _96 := expr_26189

                    if iszero(lt(_96, 32)) { panic_error_0x32() }
                    let expr_26190 := shift_left_248(byte(_96, expr_26188))
                    /// @src 10:791:808  "uint8(indices[i])"
                    let expr_26191 := convert_t_bytes1_to_t_uint8(expr_26190)
                    /// @src 10:785:808  "idx = uint8(indices[i])"
                    let _97 := convert_t_uint8_to_t_uint256(expr_26191)
                    var_idx_26177 := _97
                    let expr_26192 := _97
                    /// @src 10:826:829  "idx"
                    let _98 := var_idx_26177
                    let expr_26194 := _98
                    /// @src 10:833:848  "IDX_END_OF_ARGS"
                    let expr_26195 := constant_IDX_END_OF_ARGS_26152()
                    /// @src 10:826:848  "idx == IDX_END_OF_ARGS"
                    let expr_26196 := eq(cleanup_t_uint256(expr_26194), cleanup_t_uint256(expr_26195))
                    /// @src 10:822:855  "if (idx == IDX_END_OF_ARGS) break"
                    if expr_26196 {
                        /// @src 10:850:855  "break"
                        break
                        /// @src 10:822:855  "if (idx == IDX_END_OF_ARGS) break"
                    }
                    /// @src 10:874:877  "idx"
                    let _99 := var_idx_26177
                    let expr_26199 := _99
                    /// @src 10:880:899  "IDX_VARIABLE_LENGTH"
                    let expr_26200 := constant_IDX_VARIABLE_LENGTH_26146()
                    /// @src 10:874:899  "idx & IDX_VARIABLE_LENGTH"
                    let expr_26201 := and(expr_26199, expr_26200)

                    /// @src 10:903:904  "0"
                    let expr_26202 := 0x00
                    /// @src 10:874:904  "idx & IDX_VARIABLE_LENGTH != 0"
                    let expr_26203 := iszero(eq(cleanup_t_uint256(expr_26201), convert_t_rational_0_by_1_to_t_uint256(expr_26202)))
                    /// @src 10:870:1811  "if (idx & IDX_VARIABLE_LENGTH != 0) {..."
                    switch expr_26203
                    case 0 {
                        /// @src 10:1646:1651  "state"
                        let _101_mpos := var_state_26158_mpos
                        let expr_26254_mpos := _101_mpos
                        /// @src 10:1652:1655  "idx"
                        let _102 := var_idx_26177
                        let expr_26255 := _102
                        /// @src 10:1658:1672  "IDX_VALUE_MASK"
                        let expr_26256 := constant_IDX_VALUE_MASK_26149()
                        /// @src 10:1652:1672  "idx & IDX_VALUE_MASK"
                        let expr_26257 := and(expr_26255, expr_26256)

                        /// @src 10:1646:1673  "state[idx & IDX_VALUE_MASK]"
                        let _104_mpos := mload(memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_26254_mpos, expr_26257))
                        let expr_26258_mpos := _104_mpos
                        /// @src 10:1646:1680  "state[idx & IDX_VALUE_MASK].length"
                        let expr_26259 := array_length_t_bytes_memory_ptr(expr_26258_mpos)
                        /// @src 10:1684:1686  "32"
                        let expr_26260 := 0x20
                        /// @src 10:1646:1686  "state[idx & IDX_VALUE_MASK].length == 32"
                        let expr_26261 := eq(cleanup_t_uint256(expr_26259), convert_t_rational_32_by_1_to_t_uint256(expr_26260))
                        /// @src 10:1617:1767  "require(..."
                        require_helper_t_stringliteral_906af06c7db4e99906c2ffa4bc20ae22a26fb5b872f61c0f88aea19bb519ed99(expr_26261)
                        /// @src 10:1794:1796  "32"
                        let expr_26266 := 0x20
                        /// @src 10:1785:1796  "count += 32"
                        let _105 := convert_t_rational_32_by_1_to_t_uint256(expr_26266)
                        let _106 := var_count_26168
                        let expr_26267 := checked_add_t_uint256(_106, _105)

                        var_count_26168 := expr_26267
                        /// @src 10:870:1811  "if (idx & IDX_VARIABLE_LENGTH != 0) {..."
                    }
                    default {
                        /// @src 10:928:931  "idx"
                        let _107 := var_idx_26177
                        let expr_26204 := _107
                        /// @src 10:935:948  "IDX_USE_STATE"
                        let expr_26205 := constant_IDX_USE_STATE_26155()
                        /// @src 10:928:948  "idx == IDX_USE_STATE"
                        let expr_26206 := eq(cleanup_t_uint256(expr_26204), cleanup_t_uint256(expr_26205))
                        /// @src 10:924:1579  "if (idx == IDX_USE_STATE) {..."
                        switch expr_26206
                        case 0 {
                            /// @src 10:1309:1314  "state"
                            let _109_mpos := var_state_26158_mpos
                            let expr_26228_mpos := _109_mpos
                            /// @src 10:1315:1318  "idx"
                            let _110 := var_idx_26177
                            let expr_26229 := _110
                            /// @src 10:1321:1335  "IDX_VALUE_MASK"
                            let expr_26230 := constant_IDX_VALUE_MASK_26149()
                            /// @src 10:1315:1335  "idx & IDX_VALUE_MASK"
                            let expr_26231 := and(expr_26229, expr_26230)

                            /// @src 10:1309:1336  "state[idx & IDX_VALUE_MASK]"
                            let _111_mpos := mload(memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_26228_mpos, expr_26231))
                            let expr_26232_mpos := _111_mpos
                            /// @src 10:1309:1343  "state[idx & IDX_VALUE_MASK].length"
                            let expr_26233 := array_length_t_bytes_memory_ptr(expr_26232_mpos)
                            /// @src 10:1292:1343  "uint256 arglen = state[idx & IDX_VALUE_MASK].length"
                            let var_arglen_26227 := expr_26233
                            /// @src 10:1398:1404  "arglen"
                            let _112 := var_arglen_26227
                            let expr_26236 := _112
                            /// @src 10:1407:1409  "32"
                            let expr_26237 := 0x20
                            /// @src 10:1398:1409  "arglen % 32"
                            let expr_26238 := mod_t_uint256(expr_26236, convert_t_rational_32_by_1_to_t_uint256(expr_26237))

                            /// @src 10:1413:1414  "0"
                            let expr_26239 := 0x00
                            /// @src 10:1398:1414  "arglen % 32 == 0"
                            let expr_26240 := eq(cleanup_t_uint256(expr_26238), convert_t_rational_0_by_1_to_t_uint256(expr_26239))
                            /// @src 10:1365:1518  "require(..."
                            require_helper_t_stringliteral_9eb5bd96dd2f01a09d89b62c4cb2f71684b502338db54aa97ae5533490d0ad27(expr_26240)
                            /// @src 10:1549:1555  "arglen"
                            let _113 := var_arglen_26227
                            let expr_26245 := _113
                            /// @src 10:1558:1560  "32"
                            let expr_26246 := 0x20
                            /// @src 10:1549:1560  "arglen + 32"
                            let expr_26247 := checked_add_t_uint256(expr_26245, convert_t_rational_32_by_1_to_t_uint256(expr_26246))

                            /// @src 10:1540:1560  "count += arglen + 32"
                            let _114 := var_count_26168
                            let expr_26248 := checked_add_t_uint256(_114, expr_26247)

                            var_count_26168 := expr_26248
                            /// @src 10:924:1579  "if (idx == IDX_USE_STATE) {..."
                        }
                        default {
                            /// @src 10:976:985  "stateData"
                            let _115_mpos := var_stateData_26174_mpos
                            let expr_26207_mpos := _115_mpos
                            /// @src 10:976:992  "stateData.length"
                            let expr_26208 := array_length_t_bytes_memory_ptr(expr_26207_mpos)
                            /// @src 10:996:997  "0"
                            let expr_26209 := 0x00
                            /// @src 10:976:997  "stateData.length == 0"
                            let expr_26210 := eq(cleanup_t_uint256(expr_26208), convert_t_rational_0_by_1_to_t_uint256(expr_26209))
                            /// @src 10:972:1077  "if (stateData.length == 0) {..."
                            if expr_26210 {
                                /// @src 10:1048:1053  "state"
                                let _116_mpos := var_state_26158_mpos
                                let expr_26214_mpos := _116_mpos
                                /// @src 10:1037:1054  "abi.encode(state)"

                                let expr_26215_mpos := allocate_unbounded()
                                let _117 := add(expr_26215_mpos, 0x20)

                                let _118 := abi_encode_tuple_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr__to_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr__fromStack(_117, expr_26214_mpos)
                                mstore(expr_26215_mpos, sub(_118, add(expr_26215_mpos, 0x20)))
                                finalize_allocation(expr_26215_mpos, sub(_118, expr_26215_mpos))
                                /// @src 10:1025:1054  "stateData = abi.encode(state)"
                                var_stateData_26174_mpos := expr_26215_mpos
                                let _119_mpos := var_stateData_26174_mpos
                                let expr_26216_mpos := _119_mpos
                                /// @src 10:972:1077  "if (stateData.length == 0) {..."
                            }
                            /// @src 10:1107:1116  "stateData"
                            let _120_mpos := var_stateData_26174_mpos
                            let expr_26221_mpos := _120_mpos
                            /// @src 10:1107:1123  "stateData.length"
                            let expr_26222 := array_length_t_bytes_memory_ptr(expr_26221_mpos)
                            /// @src 10:1098:1123  "count += stateData.length"
                            let _121 := var_count_26168
                            let expr_26223 := checked_add_t_uint256(_121, expr_26222)

                            var_count_26168 := expr_26223
                            /// @src 10:924:1579  "if (idx == IDX_USE_STATE) {..."
                        }
                        /// @src 10:870:1811  "if (idx & IDX_VARIABLE_LENGTH != 0) {..."
                    }
                    /// @src 10:1842:1844  "32"
                    let expr_26272 := 0x20
                    /// @src 10:1834:1844  "free += 32"
                    let _122 := convert_t_rational_32_by_1_to_t_uint256(expr_26272)
                    let _123 := var_free_26171
                    let expr_26273 := wrapping_add_t_uint256(_123, _122)

                    var_free_26171 := expr_26273
                    /// @src 10:1869:1872  "++i"
                    let _125 := var_i_26180
                    let _124 := increment_wrapping_t_uint256(_125)
                    var_i_26180 := _124
                    let expr_26277 := _124
                }
                /// @src 10:1931:1936  "count"
                let _126 := var_count_26168
                let expr_26285 := _126
                /// @src 10:1939:1940  "4"
                let expr_26286 := 0x04
                /// @src 10:1931:1940  "count + 4"
                let expr_26287 := checked_add_t_uint256(expr_26285, convert_t_rational_4_by_1_to_t_uint256(expr_26286))

                /// @src 10:1921:1941  "new bytes(count + 4)"
                let expr_26288_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(expr_26287)
                /// @src 10:1915:1941  "ret = new bytes(count + 4)"
                var_ret_26165_mpos := expr_26288_mpos
                let _127_mpos := var_ret_26165_mpos
                let expr_26289_mpos := _127_mpos
                /// @src 10:1951:2014  "assembly {..."
                {
                    mstore(add(var_ret_26165_mpos, 32), var_selector_26160)
                }
                /// @src 10:2031:2032  "0"
                let expr_26293 := 0x00
                /// @src 10:2023:2032  "count = 0"
                let _128 := convert_t_rational_0_by_1_to_t_uint256(expr_26293)
                var_count_26168 := _128
                let expr_26294 := _128
                /// @src 10:2042:3448  "for (uint256 i; i < 32;) {..."
                for {
                    /// @src 10:2047:2056  "uint256 i"
                    let var_i_26297
                    let zero_t_uint256_129 := zero_value_for_split_t_uint256()
                    var_i_26297 := zero_t_uint256_129
                    } 1 {
                }
                {
                    /// @src 10:2058:2059  "i"
                    let _130 := var_i_26297
                    let expr_26299 := _130
                    /// @src 10:2062:2064  "32"
                    let expr_26300 := 0x20
                    /// @src 10:2058:2064  "i < 32"
                    let expr_26301 := lt(cleanup_t_uint256(expr_26299), convert_t_rational_32_by_1_to_t_uint256(expr_26300))
                    if iszero(expr_26301) { break }
                    /// @src 10:2093:2100  "indices"
                    let _131 := var_indices_26162
                    let expr_26305 := _131
                    /// @src 10:2101:2102  "i"
                    let _132 := var_i_26297
                    let expr_26306 := _132
                    /// @src 10:2093:2103  "indices[i]"
                    let _133 := expr_26306

                    if iszero(lt(_133, 32)) { panic_error_0x32() }
                    let expr_26307 := shift_left_248(byte(_133, expr_26305))
                    /// @src 10:2087:2104  "uint8(indices[i])"
                    let expr_26308 := convert_t_bytes1_to_t_uint8(expr_26307)
                    /// @src 10:2081:2104  "idx = uint8(indices[i])"
                    let _134 := convert_t_uint8_to_t_uint256(expr_26308)
                    var_idx_26177 := _134
                    let expr_26309 := _134
                    /// @src 10:2122:2125  "idx"
                    let _135 := var_idx_26177
                    let expr_26311 := _135
                    /// @src 10:2129:2144  "IDX_END_OF_ARGS"
                    let expr_26312 := constant_IDX_END_OF_ARGS_26152()
                    /// @src 10:2122:2144  "idx == IDX_END_OF_ARGS"
                    let expr_26313 := eq(cleanup_t_uint256(expr_26311), cleanup_t_uint256(expr_26312))
                    /// @src 10:2118:2151  "if (idx == IDX_END_OF_ARGS) break"
                    if expr_26313 {
                        /// @src 10:2146:2151  "break"
                        break
                        /// @src 10:2118:2151  "if (idx == IDX_END_OF_ARGS) break"
                    }
                    /// @src 10:2170:2173  "idx"
                    let _136 := var_idx_26177
                    let expr_26316 := _136
                    /// @src 10:2176:2195  "IDX_VARIABLE_LENGTH"
                    let expr_26317 := constant_IDX_VARIABLE_LENGTH_26146()
                    /// @src 10:2170:2195  "idx & IDX_VARIABLE_LENGTH"
                    let expr_26318 := and(expr_26316, expr_26317)

                    /// @src 10:2199:2200  "0"
                    let expr_26319 := 0x00
                    /// @src 10:2170:2200  "idx & IDX_VARIABLE_LENGTH != 0"
                    let expr_26320 := iszero(eq(cleanup_t_uint256(expr_26318), convert_t_rational_0_by_1_to_t_uint256(expr_26319)))
                    /// @src 10:2166:3374  "if (idx & IDX_VARIABLE_LENGTH != 0) {..."
                    switch expr_26320
                    case 0 {
                        /// @src 10:3208:3213  "state"
                        let _137_mpos := var_state_26158_mpos
                        let expr_26379_mpos := _137_mpos
                        /// @src 10:3214:3217  "idx"
                        let _138 := var_idx_26177
                        let expr_26380 := _138
                        /// @src 10:3220:3234  "IDX_VALUE_MASK"
                        let expr_26381 := constant_IDX_VALUE_MASK_26149()
                        /// @src 10:3214:3234  "idx & IDX_VALUE_MASK"
                        let expr_26382 := and(expr_26380, expr_26381)

                        /// @src 10:3208:3235  "state[idx & IDX_VALUE_MASK]"
                        let _139_mpos := mload(memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_26379_mpos, expr_26382))
                        let expr_26383_mpos := _139_mpos
                        /// @src 10:3184:3235  "bytes memory statevar = state[idx & IDX_VALUE_MASK]"
                        let var_statevar_26378_mpos := expr_26383_mpos
                        /// @src 10:3253:3360  "assembly {..."
                        {
                            mstore(add(add(var_ret_26165_mpos, 36), var_count_26168), mload(add(var_statevar_26378_mpos, 32)))
                        }
                        /// @src 10:2166:3374  "if (idx & IDX_VARIABLE_LENGTH != 0) {..."
                    }
                    default {
                        /// @src 10:2224:2227  "idx"
                        let _140 := var_idx_26177
                        let expr_26321 := _140
                        /// @src 10:2231:2244  "IDX_USE_STATE"
                        let expr_26322 := constant_IDX_USE_STATE_26155()
                        /// @src 10:2224:2244  "idx == IDX_USE_STATE"
                        let expr_26323 := eq(cleanup_t_uint256(expr_26321), cleanup_t_uint256(expr_26322))
                        /// @src 10:2220:3090  "if (idx == IDX_USE_STATE) {..."
                        switch expr_26323
                        case 0 {
                            /// @src 10:2558:2563  "state"
                            let _141_mpos := var_state_26158_mpos
                            let expr_26348_mpos := _141_mpos
                            /// @src 10:2564:2567  "idx"
                            let _142 := var_idx_26177
                            let expr_26349 := _142
                            /// @src 10:2570:2584  "IDX_VALUE_MASK"
                            let expr_26350 := constant_IDX_VALUE_MASK_26149()
                            /// @src 10:2564:2584  "idx & IDX_VALUE_MASK"
                            let expr_26351 := and(expr_26349, expr_26350)

                            /// @src 10:2558:2585  "state[idx & IDX_VALUE_MASK]"
                            let _143_mpos := mload(memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_26348_mpos, expr_26351))
                            let expr_26352_mpos := _143_mpos
                            /// @src 10:2558:2592  "state[idx & IDX_VALUE_MASK].length"
                            let expr_26353 := array_length_t_bytes_memory_ptr(expr_26352_mpos)
                            /// @src 10:2541:2592  "uint256 arglen = state[idx & IDX_VALUE_MASK].length"
                            let var_arglen_26347 := expr_26353
                            /// @src 10:2716:2811  "assembly {..."
                            {
                                mstore(add(add(var_ret_26165_mpos, 36), var_count_26168), var_free_26171)
                            }
                            /// @src 10:2864:2869  "state"
                            let _144_mpos := var_state_26158_mpos
                            let expr_26357_mpos := _144_mpos
                            /// @src 10:2870:2873  "idx"
                            let _145 := var_idx_26177
                            let expr_26358 := _145
                            /// @src 10:2876:2890  "IDX_VALUE_MASK"
                            let expr_26359 := constant_IDX_VALUE_MASK_26149()
                            /// @src 10:2870:2890  "idx & IDX_VALUE_MASK"
                            let expr_26360 := and(expr_26358, expr_26359)

                            /// @src 10:2864:2891  "state[idx & IDX_VALUE_MASK]"
                            let _146_mpos := mload(memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_26357_mpos, expr_26360))
                            let expr_26361_mpos := _146_mpos
                            /// @src 10:2917:2918  "0"
                            let expr_26362 := 0x00
                            /// @src 10:2944:2947  "ret"
                            let _147_mpos := var_ret_26165_mpos
                            let expr_26363_mpos := _147_mpos
                            /// @src 10:2973:2977  "free"
                            let _148 := var_free_26171
                            let expr_26364 := _148
                            /// @src 10:2980:2981  "4"
                            let expr_26365 := 0x04
                            /// @src 10:2973:2981  "free + 4"
                            let expr_26366 := checked_add_t_uint256(expr_26364, convert_t_rational_4_by_1_to_t_uint256(expr_26365))

                            /// @src 10:3007:3013  "arglen"
                            let _149 := var_arglen_26347
                            let expr_26367 := _149
                            /// @src 10:2832:3035  "memcpy(..."
                            let _150 := convert_t_rational_0_by_1_to_t_uint256(expr_26362)
                            fun_memcpy_26547(expr_26361_mpos, _150, expr_26363_mpos, expr_26366, expr_26367)
                            /// @src 10:3065:3071  "arglen"
                            let _151 := var_arglen_26347
                            let expr_26371 := _151
                            /// @src 10:3057:3071  "free += arglen"
                            let _152 := var_free_26171
                            let expr_26372 := checked_add_t_uint256(_152, expr_26371)

                            var_free_26171 := expr_26372
                            /// @src 10:2220:3090  "if (idx == IDX_USE_STATE) {..."
                        }
                        default {
                            /// @src 10:2268:2363  "assembly {..."
                            {
                                mstore(add(add(var_ret_26165_mpos, 36), var_count_26168), var_free_26171)
                            }
                            /// @src 10:2391:2400  "stateData"
                            let _153_mpos := var_stateData_26174_mpos
                            let expr_26326_mpos := _153_mpos
                            /// @src 10:2402:2404  "32"
                            let expr_26327 := 0x20
                            /// @src 10:2406:2409  "ret"
                            let _154_mpos := var_ret_26165_mpos
                            let expr_26328_mpos := _154_mpos
                            /// @src 10:2411:2415  "free"
                            let _155 := var_free_26171
                            let expr_26329 := _155
                            /// @src 10:2418:2419  "4"
                            let expr_26330 := 0x04
                            /// @src 10:2411:2419  "free + 4"
                            let expr_26331 := checked_add_t_uint256(expr_26329, convert_t_rational_4_by_1_to_t_uint256(expr_26330))

                            /// @src 10:2421:2430  "stateData"
                            let _156_mpos := var_stateData_26174_mpos
                            let expr_26332_mpos := _156_mpos
                            /// @src 10:2421:2437  "stateData.length"
                            let expr_26333 := array_length_t_bytes_memory_ptr(expr_26332_mpos)
                            /// @src 10:2440:2442  "32"
                            let expr_26334 := 0x20
                            /// @src 10:2421:2442  "stateData.length - 32"
                            let expr_26335 := checked_sub_t_uint256(expr_26333, convert_t_rational_32_by_1_to_t_uint256(expr_26334))

                            /// @src 10:2384:2443  "memcpy(stateData, 32, ret, free + 4, stateData.length - 32)"
                            let _157 := convert_t_rational_32_by_1_to_t_uint256(expr_26327)
                            fun_memcpy_26547(expr_26326_mpos, _157, expr_26328_mpos, expr_26331, expr_26335)
                            /// @src 10:2473:2482  "stateData"
                            let _158_mpos := var_stateData_26174_mpos
                            let expr_26339_mpos := _158_mpos
                            /// @src 10:2473:2489  "stateData.length"
                            let expr_26340 := array_length_t_bytes_memory_ptr(expr_26339_mpos)
                            /// @src 10:2492:2494  "32"
                            let expr_26341 := 0x20
                            /// @src 10:2473:2494  "stateData.length - 32"
                            let expr_26342 := checked_sub_t_uint256(expr_26340, convert_t_rational_32_by_1_to_t_uint256(expr_26341))

                            /// @src 10:2465:2494  "free += stateData.length - 32"
                            let _159 := var_free_26171
                            let expr_26343 := checked_add_t_uint256(_159, expr_26342)

                            var_free_26171 := expr_26343
                            /// @src 10:2220:3090  "if (idx == IDX_USE_STATE) {..."
                        }
                        /// @src 10:2166:3374  "if (idx & IDX_VARIABLE_LENGTH != 0) {..."
                    }
                    /// @src 10:3406:3408  "32"
                    let expr_26389 := 0x20
                    /// @src 10:3397:3408  "count += 32"
                    let _160 := convert_t_rational_32_by_1_to_t_uint256(expr_26389)
                    let _161 := var_count_26168
                    let expr_26390 := wrapping_add_t_uint256(_161, _160)

                    var_count_26168 := expr_26390
                    /// @src 10:3433:3436  "++i"
                    let _163 := var_i_26297
                    let _162 := increment_wrapping_t_uint256(_163)
                    var_i_26297 := _162
                    let expr_26394 := _162
                }

            }
            /// @src 11:92:4151  "contract Weiroll {..."

            function store_literal_in_memory_b0fc8ad5b8b37f26811acb604e049d99340a9bbaf3448952bd96b041d94b3f9c(memPtr) {

                mstore(add(memPtr, 0), "Only one return value permitted ")

                mstore(add(memPtr, 32), "(static)")

            }

            function abi_encode_t_stringliteral_b0fc8ad5b8b37f26811acb604e049d99340a9bbaf3448952bd96b041d94b3f9c_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 40)
                store_literal_in_memory_b0fc8ad5b8b37f26811acb604e049d99340a9bbaf3448952bd96b041d94b3f9c(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_b0fc8ad5b8b37f26811acb604e049d99340a9bbaf3448952bd96b041d94b3f9c__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_b0fc8ad5b8b37f26811acb604e049d99340a9bbaf3448952bd96b041d94b3f9c_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_b0fc8ad5b8b37f26811acb604e049d99340a9bbaf3448952bd96b041d94b3f9c(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_b0fc8ad5b8b37f26811acb604e049d99340a9bbaf3448952bd96b041d94b3f9c__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_f48535e39df07c0c1f84e87b0f036ac99d8d409fbb2023b71292f5d8a2723164(memPtr) {

                mstore(add(memPtr, 0), "Only one return value permitted ")

                mstore(add(memPtr, 32), "(variable)")

            }

            function abi_encode_t_stringliteral_f48535e39df07c0c1f84e87b0f036ac99d8d409fbb2023b71292f5d8a2723164_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 42)
                store_literal_in_memory_f48535e39df07c0c1f84e87b0f036ac99d8d409fbb2023b71292f5d8a2723164(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_f48535e39df07c0c1f84e87b0f036ac99d8d409fbb2023b71292f5d8a2723164__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_f48535e39df07c0c1f84e87b0f036ac99d8d409fbb2023b71292f5d8a2723164_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_f48535e39df07c0c1f84e87b0f036ac99d8d409fbb2023b71292f5d8a2723164(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_f48535e39df07c0c1f84e87b0f036ac99d8d409fbb2023b71292f5d8a2723164__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function abi_decode_available_length_t_bytes_memory_ptr_fromMemory(src, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_bytes_memory_ptr(length))
                mstore(array, length)
                let dst := add(array, 0x20)
                if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
                copy_memory_to_memory(src, dst, length)
            }

            // bytes
            function abi_decode_t_bytes_memory_ptr_fromMemory(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := mload(offset)
                array := abi_decode_available_length_t_bytes_memory_ptr_fromMemory(add(offset, 0x20), length, end)
            }

            // bytes[]
            function abi_decode_available_length_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_fromMemory(offset, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(length))
                let dst := array

                mstore(array, length)
                dst := add(array, 0x20)

                let srcEnd := add(offset, mul(length, 0x20))
                if gt(srcEnd, end) {
                    revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef()
                }
                for { let src := offset } lt(src, srcEnd) { src := add(src, 0x20) }
                {

                    let innerOffset := mload(src)
                    if gt(innerOffset, 0xffffffffffffffff) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                    let elementPos := add(offset, innerOffset)

                    mstore(dst, abi_decode_t_bytes_memory_ptr_fromMemory(elementPos, end))
                    dst := add(dst, 0x20)
                }
            }

            // bytes[]
            function abi_decode_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_fromMemory(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := mload(offset)
                array := abi_decode_available_length_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_fromMemory(add(offset, 0x20), length, end)
            }

            function abi_decode_tuple_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := mload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            /// @ast-id 26482
            /// @src 10:3460:4977  "function writeOutputs(..."
            function fun_writeOutputs_26482(var_state_26403_mpos, var_index_26405, var_output_26407_mpos) -> var__26411_mpos {
                /// @src 10:3592:3606  "bytes[] memory"
                let zero_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_164_mpos := zero_value_for_split_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr()
                var__26411_mpos := zero_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_164_mpos

                /// @src 10:3638:3643  "index"
                let _165 := var_index_26405
                let expr_26417 := _165
                /// @src 10:3632:3644  "uint8(index)"
                let expr_26418 := convert_t_bytes1_to_t_uint8(expr_26417)
                /// @src 10:3618:3644  "uint256 idx = uint8(index)"
                let var_idx_26414 := convert_t_uint8_to_t_uint256(expr_26418)
                /// @src 10:3658:3661  "idx"
                let _166 := var_idx_26414
                let expr_26420 := _166
                /// @src 10:3665:3680  "IDX_END_OF_ARGS"
                let expr_26421 := constant_IDX_END_OF_ARGS_26152()
                /// @src 10:3658:3680  "idx == IDX_END_OF_ARGS"
                let expr_26422 := eq(cleanup_t_uint256(expr_26420), cleanup_t_uint256(expr_26421))
                /// @src 10:3654:3694  "if (idx == IDX_END_OF_ARGS) return state"
                if expr_26422 {
                    /// @src 10:3689:3694  "state"
                    let _167_mpos := var_state_26403_mpos
                    let expr_26423_mpos := _167_mpos
                    /// @src 10:3682:3694  "return state"
                    var__26411_mpos := expr_26423_mpos
                    leave
                    /// @src 10:3654:3694  "if (idx == IDX_END_OF_ARGS) return state"
                }
                /// @src 10:3709:3712  "idx"
                let _168 := var_idx_26414
                let expr_26426 := _168
                /// @src 10:3715:3734  "IDX_VARIABLE_LENGTH"
                let expr_26427 := constant_IDX_VARIABLE_LENGTH_26146()
                /// @src 10:3709:3734  "idx & IDX_VARIABLE_LENGTH"
                let expr_26428 := and(expr_26426, expr_26427)

                /// @src 10:3738:3739  "0"
                let expr_26429 := 0x00
                /// @src 10:3709:3739  "idx & IDX_VARIABLE_LENGTH != 0"
                let expr_26430 := iszero(eq(cleanup_t_uint256(expr_26428), convert_t_rational_0_by_1_to_t_uint256(expr_26429)))
                /// @src 10:3705:4948  "if (idx & IDX_VARIABLE_LENGTH != 0) {..."
                switch expr_26430
                case 0 {
                    /// @src 10:4793:4799  "output"
                    let _169_mpos := var_output_26407_mpos
                    let expr_26462_mpos := _169_mpos
                    /// @src 10:4793:4806  "output.length"
                    let expr_26463 := array_length_t_bytes_memory_ptr(expr_26462_mpos)
                    /// @src 10:4810:4812  "32"
                    let expr_26464 := 0x20
                    /// @src 10:4793:4812  "output.length == 32"
                    let expr_26465 := eq(cleanup_t_uint256(expr_26463), convert_t_rational_32_by_1_to_t_uint256(expr_26464))
                    /// @src 10:4768:4886  "require(..."
                    require_helper_t_stringliteral_b0fc8ad5b8b37f26811acb604e049d99340a9bbaf3448952bd96b041d94b3f9c(expr_26465)
                    /// @src 10:4931:4937  "output"
                    let _170_mpos := var_output_26407_mpos
                    let expr_26474_mpos := _170_mpos
                    /// @src 10:4901:4906  "state"
                    let _171_mpos := var_state_26403_mpos
                    let expr_26469_mpos := _171_mpos
                    /// @src 10:4907:4910  "idx"
                    let _172 := var_idx_26414
                    let expr_26470 := _172
                    /// @src 10:4913:4927  "IDX_VALUE_MASK"
                    let expr_26471 := constant_IDX_VALUE_MASK_26149()
                    /// @src 10:4907:4927  "idx & IDX_VALUE_MASK"
                    let expr_26472 := and(expr_26470, expr_26471)

                    /// @src 10:4901:4937  "state[idx & IDX_VALUE_MASK] = output"
                    mstore(memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_26469_mpos, expr_26472), expr_26474_mpos)
                    let _173_mpos := mload(memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_26469_mpos, expr_26472))
                    let expr_26475_mpos := _173_mpos
                    /// @src 10:3705:4948  "if (idx & IDX_VARIABLE_LENGTH != 0) {..."
                }
                default {
                    /// @src 10:3759:3762  "idx"
                    let _174 := var_idx_26414
                    let expr_26431 := _174
                    /// @src 10:3766:3779  "IDX_USE_STATE"
                    let expr_26432 := constant_IDX_USE_STATE_26155()
                    /// @src 10:3759:3779  "idx == IDX_USE_STATE"
                    let expr_26433 := eq(cleanup_t_uint256(expr_26431), cleanup_t_uint256(expr_26432))
                    /// @src 10:3755:4711  "if (idx == IDX_USE_STATE) {..."
                    switch expr_26433
                    case 0 {
                        /// @src 10:3969:3983  "uint256 argptr"
                        let var_argptr_26447
                        let zero_t_uint256_175 := zero_value_for_split_t_uint256()
                        var_argptr_26447 := zero_t_uint256_175
                        /// @src 10:4001:4082  "assembly {..."
                        {
                            var_argptr_26447 := mload(add(var_output_26407_mpos, 32))
                        }
                        /// @src 10:4128:4134  "argptr"
                        let _176 := var_argptr_26447
                        let expr_26451 := _176
                        /// @src 10:4138:4140  "32"
                        let expr_26452 := 0x20
                        /// @src 10:4128:4140  "argptr == 32"
                        let expr_26453 := eq(cleanup_t_uint256(expr_26451), convert_t_rational_32_by_1_to_t_uint256(expr_26452))
                        /// @src 10:4099:4224  "require(..."
                        require_helper_t_stringliteral_f48535e39df07c0c1f84e87b0f036ac99d8d409fbb2023b71292f5d8a2723164(expr_26453)
                        /// @src 10:4243:4697  "assembly {..."
                        {
                            mstore(add(var_output_26407_mpos, 32), sub(mload(var_output_26407_mpos), 32))
                            mstore(add(add(var_state_26403_mpos, 32), mul(and(var_idx_26414, 127), 32)), add(var_output_26407_mpos, 32))
                        }
                        /// @src 10:3755:4711  "if (idx == IDX_USE_STATE) {..."
                    }
                    default {
                        /// @src 10:3818:3824  "output"
                        let _177_mpos := var_output_26407_mpos
                        let expr_26437_mpos := _177_mpos
                        /// @src 10:3807:3836  "abi.decode(output, (bytes[]))"

                        let expr_26442_mpos :=  abi_decode_tuple_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_fromMemory(add(expr_26437_mpos, 32), add(add(expr_26437_mpos, 32), array_length_t_bytes_memory_ptr(expr_26437_mpos)))
                        /// @src 10:3799:3836  "state = abi.decode(output, (bytes[]))"
                        var_state_26403_mpos := expr_26442_mpos
                        let _178_mpos := var_state_26403_mpos
                        let expr_26443_mpos := _178_mpos
                        /// @src 10:3755:4711  "if (idx == IDX_USE_STATE) {..."
                    }
                    /// @src 10:3705:4948  "if (idx & IDX_VARIABLE_LENGTH != 0) {..."
                }
                /// @src 10:4965:4970  "state"
                let _179_mpos := var_state_26403_mpos
                let expr_26479_mpos := _179_mpos
                /// @src 10:4958:4970  "return state"
                var__26411_mpos := expr_26479_mpos
                leave

            }
            /// @src 11:92:4151  "contract Weiroll {..."

            /// @ast-id 26532
            /// @src 10:4983:5429  "function writeTuple(..."
            function fun_writeTuple_26532(var_state_26485_mpos, var_index_26487, var_output_26489_mpos) {

                /// @src 10:5142:5147  "index"
                let _180 := var_index_26487
                let expr_26498 := _180
                /// @src 10:5136:5148  "uint8(index)"
                let expr_26499 := convert_t_bytes1_to_t_uint8(expr_26498)
                /// @src 10:5128:5149  "uint256(uint8(index))"
                let expr_26500 := convert_t_uint8_to_t_uint256(expr_26499)
                /// @src 10:5114:5149  "uint256 idx = uint256(uint8(index))"
                let var_idx_26493 := expr_26500
                /// @src 10:5163:5166  "idx"
                let _181 := var_idx_26493
                let expr_26502 := _181
                /// @src 10:5170:5185  "IDX_END_OF_ARGS"
                let expr_26503 := constant_IDX_END_OF_ARGS_26152()
                /// @src 10:5163:5185  "idx == IDX_END_OF_ARGS"
                let expr_26504 := eq(cleanup_t_uint256(expr_26502), cleanup_t_uint256(expr_26503))
                /// @src 10:5159:5194  "if (idx == IDX_END_OF_ARGS) return;"
                if expr_26504 {
                    /// @src 10:5187:5194  "return;"
                    leave
                    /// @src 10:5159:5194  "if (idx == IDX_END_OF_ARGS) return;"
                }
                /// @src 10:5248:5254  "output"
                let _182_mpos := var_output_26489_mpos
                let expr_26514_mpos := _182_mpos
                /// @src 10:5248:5261  "output.length"
                let expr_26515 := array_length_t_bytes_memory_ptr(expr_26514_mpos)
                /// @src 10:5264:5266  "32"
                let expr_26516 := 0x20
                /// @src 10:5248:5266  "output.length + 32"
                let expr_26517 := checked_add_t_uint256(expr_26515, convert_t_rational_32_by_1_to_t_uint256(expr_26516))

                /// @src 10:5238:5267  "new bytes(output.length + 32)"
                let expr_26518_mpos := allocate_and_zero_memory_array_t_bytes_memory_ptr(expr_26517)
                /// @src 10:5225:5230  "state"
                let _183_mpos := var_state_26485_mpos
                let expr_26509_mpos := _183_mpos
                /// @src 10:5231:5234  "idx"
                let _184 := var_idx_26493
                let expr_26510 := _184
                /// @src 10:5225:5267  "state[idx] = new bytes(output.length + 32)"
                mstore(memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_26509_mpos, expr_26510), expr_26518_mpos)
                let _185_mpos := mload(memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_26509_mpos, expr_26510))
                let expr_26519_mpos := _185_mpos
                /// @src 10:5204:5267  "bytes memory entry = state[idx] = new bytes(output.length + 32)"
                let var_entry_26508_mpos := expr_26519_mpos
                /// @src 10:5284:5290  "output"
                let _186_mpos := var_output_26489_mpos
                let expr_26522_mpos := _186_mpos
                /// @src 10:5292:5293  "0"
                let expr_26523 := 0x00
                /// @src 10:5295:5300  "entry"
                let _187_mpos := var_entry_26508_mpos
                let expr_26524_mpos := _187_mpos
                /// @src 10:5302:5304  "32"
                let expr_26525 := 0x20
                /// @src 10:5306:5312  "output"
                let _188_mpos := var_output_26489_mpos
                let expr_26526_mpos := _188_mpos
                /// @src 10:5306:5319  "output.length"
                let expr_26527 := array_length_t_bytes_memory_ptr(expr_26526_mpos)
                /// @src 10:5277:5320  "memcpy(output, 0, entry, 32, output.length)"
                let _189 := convert_t_rational_0_by_1_to_t_uint256(expr_26523)
                let _190 := convert_t_rational_32_by_1_to_t_uint256(expr_26525)
                fun_memcpy_26547(expr_26522_mpos, _189, expr_26524_mpos, _190, expr_26527)
                /// @src 10:5330:5423  "assembly {..."
                {
                    let usr$l := mload(var_output_26489_mpos)
                    mstore(add(var_entry_26508_mpos, 32), usr$l)
                }

            }
            /// @src 11:92:4151  "contract Weiroll {..."

            /// @ast-id 26547
            /// @src 10:5435:5902  "function memcpy(..."
            function fun_memcpy_26547(var_src_26534_mpos, var_srcidx_26536, var_dest_26538_mpos, var_destidx_26540, var_len_26542) {

                /// @src 10:5604:5896  "assembly {..."
                {
                    pop(staticcall(gas(), 4, add(add(var_src_26534_mpos, 32), var_srcidx_26536), var_len_26542, add(add(var_dest_26538_mpos, 32), var_destidx_26540), var_len_26542))
                }

            }
            /// @src 11:92:4151  "contract Weiroll {..."

        }

        data ".metadata" hex"a264697066735822122041caa7f55c9fb68a7272ea67a7a592487cbd32900df40fa4a25bd3201ae0ad4a64736f6c634300080f0033"
    }

}


