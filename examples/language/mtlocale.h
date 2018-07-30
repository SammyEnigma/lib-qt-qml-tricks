#ifndef MTLOCALE_H
#define MTLOCALE_H

#include <QObject>
#include "qqmlhelpers.h"

class Locale : public QObject
{
    Q_OBJECT
public:
    explicit Locale(QObject *parent = nullptr) : QObject(parent) {}

    QML_WRITABLE_PROPERTY(QString, name)
    QML_WRITABLE_PROPERTY(QString, lcid)

};

#endif // MTLOCALE_H
