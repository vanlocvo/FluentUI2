#include "LoginViewModel.h"

#include <QDebug>

LoginViewModel::LoginViewModel(QObject *parent) : QObject{parent} {
}

void LoginViewModel::login() {
    qDebug() << this->username();
    qDebug() << this->password();
}
