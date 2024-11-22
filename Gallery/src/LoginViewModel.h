#pragma once

#include <QObject>
#include <QtQml/qqml.h>
#include "stdafx.h"

class LoginViewModel : public QObject {
    Q_OBJECT
    Q_PROPERTY_AUTO(QString, username)
    Q_PROPERTY_AUTO(QString, password)
    QML_ELEMENT
public:
    explicit LoginViewModel(QObject *parent = nullptr);
    Q_INVOKABLE void login();
};
