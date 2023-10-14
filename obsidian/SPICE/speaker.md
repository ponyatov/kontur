# Speaker simulation
## моделирование динамика

- https://hackaday.com/2018/11/20/simulating-a-speaker/
	- https://circuitdigest.com/electronic-circuits/simulate-speaker-with-equivalent-rlc-circuit
- http://www.silcom.com/~aludwig/Sysdes/Thiel_small_analysis.htm
	- https://www.diyaudio.com/community/threads/spice-speaker-models.41015/
- http://users.ece.gatech.edu/~mleach/
- https://www.linkwitzlab.com/thor-design.htm

If you are working with any [Audio related project,](https://circuitdigest.com/audio-circuits) the least concerned component is the Speaker but **the speaker is an essential part of any audio related circuit**. A good speaker can override the noises and can provide a smooth output whereas a bad speaker can destroy your all efforts even the rest of the circuit is exceptionally good. So this is a large concern as the speaker output can be completely different in different types of acoustic environments.

![[speaker.png]]

Speaker act as an Energy converter, which converts Electrical energy into Mechanical Energy. A speaker has two level of constructions, one is Mechanical and another one is the Electrical.

![[speaker_model.png]]

## electrical

- `Rc` coil active resistance
- `Lc` coil induction

## mechanical

- **податливость подвески** suspension compliance `Lsc`
	- это свойство материала, при котором материал подвергается упругой деформации или испытывает изменение объема под действием приложенной силы.
- **сопротивление подвески** suspension resistance `Rsr`
	- **механическое демпфирование** mechanical damping
	- это нагрузка, с которой сталкивается конус при удалении от подвеса
- **подвижная масса** moving mass `Cmems`
	- это общая масса катушки, конуса и т.д.
- **сопротивление воздуха** load of the air `Cal`
	- проталкиваемого через дрейвер

So by considering all the points, we could make a physical model of the speaker using few electronics or electrical components. Those above 6 points can be modeled using three basic passive components: 
- [[el/R]] Resistors, 
- [[L]] Inductors, and 
- [[el/C]] Capacitors 

which are denoted as [[RLC]] circuit.

Now we got the equivalent model, but how to calculate the value of the components.  For this, we need
![[Thiele small Parameters of the Loud Speaker#parameters]].

