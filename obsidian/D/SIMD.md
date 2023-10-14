# [[D/D|D]]/[[hw/SIMD|SIMD]]
## [[D/NEON]]

https://dlang.org/spec/simd.html

1. CPUs often support specialized vector types and vector operations (a.k.a. media instructions).
	- Vector types are a [[fixed array]] of floating or integer types, and 
	- vector operations operate simultaneously on them.
1. Specialized [[D/Vector]] types provide access to them.
2. The [[VectorBaseType]] must be a [[Static Array]]. 
	- The [[VectorElementType]] is the unqualified element type of the static array.
	- The dimension of the static array is the number of elements in the vector.
1. Implementation Defined: *Which vector types are supported depends on the target*. The implementation is expected to **only support** the vector types and operations that are **implemented in the target's hardware**.
2. Rationale: Emulating unsupported vector types and operations can exhibit such poor performance that the user is likely better off selecting a different algorithm than relying on emulation.
3. Best Practices: Use the declarations in [[core.simd]] instead of the language [[D/Vector]] grammar.
