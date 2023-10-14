# [[kicad_pcb]] Layers

https://dev-docs.kicad.org/en/file-formats/sexpr-intro/#_layers

```lisp
(layer
	(0  F.Cu signal)
	(31 B.Cu signal)
)
```

- 60 total layers.
- 32 copper layers.
	- 0..30 Front Layers
		- 0 `F.Cu`
	- 31..60 Back Layers
		- 31 `B.Cu`
- 8 *paired* technical layers for [[silk screen]], [[solder mask]], [[solder paste]], and [[adhesive]].
- 4 user pre-defined layers for drawings, engineering change order ([[PCB/ECO]]), and comments.


