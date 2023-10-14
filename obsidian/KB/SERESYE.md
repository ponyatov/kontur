# SERESYE
## Swarm-oriented [[Erlang]] [[Expert System]] Engine

https://github.com/afiniate/seresye

![[Eresye project]]

As it is widely known, a [[rule-based system]] is composed by a [[Knowledge Base]], which stores a set of [[fact]]s representing the 'universe of discourse' of a given application, and a set of [[production rules]], which are used to infer knowledge and/or [[reasoning]] about the [[knowledge]]. A [[KB/rule]] is activated when one or more facts [[KB/rule#match]] the template(s) given in the [[rule#declaration]]: in such a case, the body of the rule contains a code that is thus executed.


In SERESYE, 
- [[fact]]s are expressed by means of [[Erlang]] [[tuple]]s or [[record]]s, while 
- [[rule]]s are written using standard [[Erlang/function]] clauses, 
	- whose declaration reports, in the clause head, the facts or fact templates that have to be matched for the 
	- rule to be activated and executed.

For more information about SERESYE please refer to the paper docs directory.

For more information about rule-based inference engines and expert systems, you can refer to the book: 
![[KB/bib#russel]]
