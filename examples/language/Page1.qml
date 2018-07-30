import QtQuick 2.7

Page1Form {
    button1.onClicked: {
        console.log("Button Pressed. Entered text: " + textField1.text)
        console.log("Locale Model List has " + localeModel.count + " locales.")
        for (var i = 0; i < localeModel.count; i++) {
            var locale = localeModel.get(i)
            console.log("locale name: " + locale.name)
            console.log("locale lcid: " + locale.lcid)
        }
    }
}
