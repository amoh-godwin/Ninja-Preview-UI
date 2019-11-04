import sys
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtCore import QResource
QResource.registerResource("../resource.rcc")
app = QGuiApplication(sys.argv)
engine = QQmlApplicationEngine()
engine.load("main.qml")
engine.quit.connect(app.quit)
sys.exit(app.exec_())
