import qbs

Application {
    name: "example-jsonpath"
    targetName: "QtJsonPath"

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
