/* Copyright (c) 2012, 2013 BlackBerry Limited.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import bb.cascades 1.2

// This is the info page with some information about the application and a bit of decorations.
NavigationPane {
    id: navigation
    
    Page {
        Container {
            background: Color.create("#16B1AF")
            
            layout: DockLayout {
            }
            
            Container {
                topPadding: 50
                leftPadding: 50
                rightPadding: 50
                verticalAlignment: VerticalAlignment.Top
                horizontalAlignment: HorizontalAlignment.Center
                
                Label {
                    text: qsTr("Welcome to the weather guesser. This little app will predict (guess) the weather, not only today or tomorrow, but for forever! Sounds too good to be true? Go ahead and try it.") + Retranslate.onLanguageChanged                    
                    multiline: true
                    
                    textStyle{
                        base: SystemDefaults.TextStyles.TitleText
                        fontStyle: FontStyle.Italic
                        color: Color.White
                    }
                }
            }
            
            // Footer information
            Container {
                rightPadding: 30
                bottomPadding: 30
                verticalAlignment: VerticalAlignment.Bottom
                horizontalAlignment: HorizontalAlignment.Right
                
                ImageView {
                    imageSource: "asset:///images/info/start_cloud.png"
                }

                Label {
                    text: qsTr("Cascades sample app 2013.") + Retranslate.onLanguageChanged
                    textStyle{
                    	base: SystemDefaults.TextStyles.SmallText
                    	color: Color.White
                    }
                }
            }
        }

        // The info page has an additional action, that is placed in the overflow menu to the right.
		// When the user pressed the "More info", they are directed to the MoreInfoPage.qml.
        actions: [
            ActionItem {
                title: qsTr("More Info") + Retranslate.onLanguageChanged
                imageSource: "asset:///images/menuicons/icon_continents.png"
                
                onTriggered: {
                    var moreInfoPage = moreInfoPageDefinition.createObject();
                    navigation.push(moreInfoPage);
                }
            }
        ]
    }
    attachedObjects: [
        ComponentDefinition {
            id: moreInfoPageDefinition
            source: "MoreInfoPage.qml"
        }
    ]
}
