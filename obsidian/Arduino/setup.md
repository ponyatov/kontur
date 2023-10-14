# `void setup()`
## [[callback]]-функция инициализации

- Функция `setup()` вызывается, когда стартует [[скетч]]. 
- Используется для 
	- инициализации переменных, 
	- определения режимов работы выводов, 
	- запуска используемых библиотек и т.д. 
- запускается только один раз, после каждой подачи питания или сброса платы [[Arduino]].

```Cpp
void setup() {
	Serial.begin(115200);
	pinMode(buttonPin, INPUT);
	pinMode(LED, OUTPUT);
}
```

- [[Arduino/Serial#begin]]
- [[pinMode]]
	- [[Arduino/INPUT]]
	- [[Arduino/OUTPUT]]
	- [[Arduino/LED]]

