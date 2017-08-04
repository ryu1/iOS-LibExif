#import <UIKit/UIKit.h>

@class LibExifTestViewController;

@interface LibExifTestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    LibExifTestViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet LibExifTestViewController *viewController;

@end

