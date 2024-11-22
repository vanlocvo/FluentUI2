import QtQuick

QtObject {
    property var routes
    signal sendRouter(string val,var argument)
    function go(path,argument={}){}
    function toUrl(path){}
}
