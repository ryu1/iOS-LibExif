#import "LibExifTestAppDelegate.h"
#import "LibExifTestViewController.h"

@implementation LibExifTestAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    //[window addSubview:viewController.view];
    window.rootViewController = viewController;
    [window makeKeyAndVisible];
}

@end
