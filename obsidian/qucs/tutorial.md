# [[qucs]]/ tutorial

https://qucs-s-help.readthedocs.io/en/latest/BasSim.html

This section describes a number of fundamental methods for launching circuit simulations from the [[qucs-s]] GUI using the [[ngspice]], [[el/Xyce]] and [[SPICE]] [[OPUS]] compatible simulator engines. [[spice4qucs]] includes built-in support for SPICE via a subsystem specifically designed for this purpose. The Ngspice, Xyce and SPICE OPUS simulators are not embedded in Qucs but operate as independent [[el/qucs/external simulators]]. Before use they must be [[el/qucs/install|installed]] on the computer operating system that you are running [[qucs-s]].

![[Xyce]]
![[OPUS]]

Although [[ngspice]], [[Xyce]] and SPICE [[OPUS]] are all compatible [[SPICE]] simulators they also include extensions to the original SPICE 3f5 [[netlist]] syntax which are often incompatible and may not simulate but generate errors. The Qucs Team is aware of this limitation and are attempting to correct such problems as quickly as possible. Please note this may take some time. However, if you do identify a compatibility bug please inform us by sending in a bug report to the Qucs web site (with an example test schematic if possible) describing the problem you have identified.

## [[el/simulation methods]]

![[el/simple RLC]]