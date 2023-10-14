# lwdr
## Light Weight [[D/D|D]] Runtime for [[hw/microcontroller|Microcontrollers]]
### [[D/embedded]]

- https://forum.dlang.org/thread/giigcnoyxfoxxaevjmxy@forum.dlang.org
	- https://code.dlang.org/packages/lwdr
	- https://www.opennet.ru/opennews/art.shtml?num=55238

It is a ground-up implementation of a [[D/runtime]] targeting the [[hw/arch/ARM|ARM]] [[hw/arch/Cortex-M|Cortex-M]] microcontrollers and other [[hw/microcontroller|microcontroller]] platforms with [[RTOS/RTOS|RTOS]]es (Real Time Operating Systems).

It doesn't, and possibly may not, support all D features in order to make it viable for the constrained environments. For example, 
- all memory allocation is manually done via [[D/new]] and [[D/delete]] - no [[D/gc|GC]].

It works by providing a series of barebones API hooks ([[D/alloc]], [[D/dealloc]], [[D/assert]], etc) (defined in [[D/lwdr/rtoslink.d]]), which you must implement and/or point to your [[RTOS/RTOS|RTOS]] implementation.

##### LWDR currently supports the following language features:

- [[D/Class]] [[D/allocation]]s and deallocations (via [[D/new|new]] and [[delete]])
- [[D/Struct]] [[D/heap]] allocations and deallocations (via new and delete)
- [[Invariants]]
- [[assert]]s
- [[Contract programming]]
- Basic [[D/RTTI]] (via [[TypeInfo#stubs]])
- [[D/Interface]]s
- [[Static Array]]s
- [[Virtual function]]s and [[D/overrides]]
- [[Abstract class]]es
- [[Static class]]es
- [[D/allocation]] and deallocation of [[dynamic array]]s
- [[Concatenate]] an item to a dynamic array
- Concatenate two dynamic arrays together
- [[dynamic array#resizing]]

##### The following features are experimental:

- [[D/Exception]]s and [[D/Throwable]]s (so far are working on [[GDC]] only)

##### Not supported:

- [[D/Module#constructor]]s and destructors
- [[ModuleInfo]]
- There is no [[D/gc|gc]] implementation
- [[D/TLS]] (thread local static) variables
- [[Delegate]]s/[[closure]]s
- [[D/Associative array]]s
- [[D/Shared]]/[[D/synchronized]]
- [[Object hashing]]
- Other stuff I have forgotten :(
