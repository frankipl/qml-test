import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick 2.6
import QtPositioning 5.8
import QtLocation 5.8


ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Rectangle {
        id:topRect
        anchors.fill: parent

        Map {
            id: naviMap
            objectName: "naviMapObject"
            anchors.fill: parent
            plugin: Plugin { name: "osm"
                PluginParameter { name: "osm.useragent"; value: "My great Qt OSM application" }
            }
            zoomLevel: 15
        }
    }
}
