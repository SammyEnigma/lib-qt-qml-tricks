import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    id: item1
    property alias currentIndex: comboBox.currentIndex
    property alias textRole: comboBox.textRole
    property alias model: comboBox.model
    property alias comboBox: comboBox

    ComboBox {
        id: comboBox
        x: 37
        y: 60
        width: 166
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        currentIndex: -2
    }
}
