// [WriteFile Name=Web_Tiled_Layer, Category=Layers]
// [Legal]
// Copyright 2017 Esri.

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// [Legal]

import QtQuick 2.6
import Esri.ArcGISRuntime 100.1

Rectangle {
    id: rootRectangle
    clip: true
    width: 800
    height: 600

    // Map view UI presentation at top
    MapView {
        id: mapView

        anchors.fill: parent

        Map {
            Basemap {
                // Create a WebTiledLayer with a template URL, sub domains, and copyright information
                WebTiledLayer {
                    templateUrl: "http://{subDomain}.tile.stamen.com/terrain/{level}/{col}/{row}.png"
                    subDomains: ["a", "b", "c", "d"]
                    attribution: "Map tiles by <a href=\"http://stamen.com/\">Stamen Design</a>, " +
                                 "under <a href=\"http://creativecommons.org/licenses/by/3.0\">CC BY 3.0</a>. " +
                                 "Data by <a href=\"http://openstreetmap.org/\">OpenStreetMap</a>, " +
                                 "under <a href=\"http://creativecommons.org/licenses/by-sa/3.0\">CC BY SA</a>."
                }
            }

            // Set initial viewpoint
            ViewpointCenter {
                Point {
                    x: -13167861
                    y: 4382202
                    spatialReference: SpatialReference.createWebMercator()
                }
                targetScale: 50000
            }
        }
    }
}