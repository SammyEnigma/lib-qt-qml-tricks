import qbs

Application {
    name: "example-cobs"
    targetName: "QtCOBS"

    Depends {
        name: "Qt.core"
    }
    Depends {
        name: "cpp"
    }
    Depends {
        name: "sdk-utilities"
    }
    Group {
        name: "C++ sources"
        files: ["*.cpp"]
    }
}
