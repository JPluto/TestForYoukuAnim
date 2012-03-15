/**
 * @file AppDelegate.h
 * @brief app delegate, just delegate
 * @author hu jian
 * @version 0.1
 * @date 2/27/12.
 */

#import <UIKit/UIKit.h>

@interface AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *_window;
}

@property (nonatomic, retain) UIWindow *window;
@end

