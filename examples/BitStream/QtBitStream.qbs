import qbs

Application {
    name: "example-bitstream"
    targetName: "QtBitStream"

    Depends {
        name: "Qt.quick"
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
