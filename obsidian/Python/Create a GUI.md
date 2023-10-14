# Create a [[GUI]]
#Py #Qt 

https://build-system.fman.io/pyqt5-tutorial#:~:text=set%20up%20PyQt5.-,Create%20a%20GUI

```py
from PyQt5.QtWidgets import QApplication, QLabel

app = QApplication([])
label = QLabel('Hello')

if __name__ == '__main__':
    label.show()
    app.exec()
```

- [[PyQt5]]
	- [[QtWidgets]]
		- [[QApplication]]
			- [[QApplication#exec]]
		- [[QLabel]]

First, we tell Python to load PyQt via the import statement.

Next, we create a [[QApplication]] with the command
```py
app = QApplication(sys.argv)
```

Now, to actually see something, we create a simple [[QLabel]]:
```py
label = QLabel('Hello World!')
```

Then, we tell Qt to show the label on the screen: [[QLabel#show]]

Depending on your operating system, this already opens a tiny little window:

![[PyQt01.png]]

The last step is to hand control over to Qt and ask it to "run the application until the user closes it". This is done via the command:
```py
app.exec()
```

## Widgets

![[widget]]

The following screenshot shows the most common [[QtWidgets]]:

![[QtWidgets.png]]

Top-to-bottom, left-to-right, they are:

- [[QLabel]]
- [[QComboBox]]
- [[QCheckBox]]
- [[QRadioButton]]
- [[QPushButton]]
- [[QTableWidget]]
- [[QLineEdit]]
- [[QSlider]]
- [[QProgressBar]]

## [[Qt/Layout]]s
## [[Qt/style sheet]]
## [[Qt/signal]]