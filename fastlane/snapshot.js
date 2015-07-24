#import "SnapshotHelper.js"

var target = UIATarget.localTarget();
var app = target.frontMostApp();
var window = app.mainWindow();


target.delay(3)
captureLocalizedScreenshot('1-Intro');
target.frontMostApp().tabBar().buttons()["Gallery"].tap();
captureLocalizedScreenshot('2-Gallery');
target.frontMostApp().mainWindow().tableViews()[0].tapWithOptions({tapOffset:{x:0.46, y:0.31}});
captureLocalizedScreenshot('3-Detail');
