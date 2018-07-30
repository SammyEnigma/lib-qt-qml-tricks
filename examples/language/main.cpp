#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QQmlContext>
#include "QtQmlTricks"
#include "qqmlobjectlistmodel.h"
#include "mtlocale.h"

struct ConstLocale {
    const char* name;
    const char* lcid;
} sArr[] = {
{"English", "en"},
{"English - Australia", "en-au"},
{"English - Canada", "en-ca"},
{"English - United States", "en-us"},
{"Polish", "pl"},
{"Chinese", "zh-cn"},
{NULL, NULL}
};

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlObjectListModel<Locale> *myList = new QQmlObjectListModel<Locale>(&app, "name", "name");

    for (int i = 0; sArr[i].name != NULL; i++) {
        Locale *locale = new Locale(myList);
        locale->set_name(sArr[i].name);
        locale->set_lcid(sArr[i].lcid);
        myList->append(locale);
    }

    QQmlApplicationEngine engine;
    registerQtQmlTricksModule (&engine);
    engine.rootContext()->setContextProperty ("localeModel", myList);
    engine.load(QUrl ("qrc:/main.qml"));

    return app.exec();
}
