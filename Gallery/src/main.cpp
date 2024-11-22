#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QtQml/qqmlextensionplugin.h>
#include <QProcess>
#include <QQmlContext>
#include <QFont>
#include "AppInfo.h"
#include "SettingsHelper.h"
#include "Log.h"

#ifdef FLUENTUI_BUILD_STATIC_LIB
Q_IMPORT_QML_PLUGIN(FluentUIPlugin)
#endif

int main(int argc, char *argv[]) {
    // QQuickWindow::setGraphicsApi(QSGRendererInterface::GraphicsApi::OpenGL);
    qputenv("QT_QUICK_CONTROLS_CONF", ":/qt/qml/Gallery/qtquickcontrols2.conf");
    QGuiApplication::setOrganizationName(PROJECT_COMPANY);
    QGuiApplication::setOrganizationDomain(PROJECT_DOMAIN);
    QGuiApplication::setApplicationName(PROJECT_APP_NAME);
    QGuiApplication::setApplicationDisplayName(PROJECT_APP_NAME);
    QGuiApplication::setApplicationVersion(PROJECT_VERSION);
    Log::setup(argv, PROJECT_APP_NAME);
    SettingsHelper::getInstance()->init(argv);
    QGuiApplication app(argc, argv);
#ifdef Q_OS_WIN
    QFont font = QGuiApplication::font();
    font.setFamily("微软雅黑");
    QGuiApplication::setFont(font);
#endif
    QGuiApplication::setWindowIcon(QIcon(":/qt/qml/Gallery/res/image/logo.png"));
    QQmlApplicationEngine engine;
    engine.addImportPath(":/qt/qml");
    AppInfo::getInstance()->init(&engine);
    const QUrl url("qrc:/qt/qml/Gallery/res/qml/App.qml");
    QObject::connect(
        &engine, &QQmlApplicationEngine::objectCreated, &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    engine.load(url);
    const int exec = QGuiApplication::exec();
    if (exec == 931) {
#ifndef __EMSCRIPTEN__
        QProcess::startDetached(qApp->applicationFilePath(), qApp->arguments());
#endif
    }
    return exec;
}
