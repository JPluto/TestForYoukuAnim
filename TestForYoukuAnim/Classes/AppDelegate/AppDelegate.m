/**
 * @file AppDelegate.m
 * @brief app delegate, just delegate
 * @author hu jian
 * @version 0.1
 * @date 2/27/12.
 */

#import "AppDelegate.h"
#import "test.h"

@implementation AppDelegate
@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	_window.backgroundColor = [UIColor whiteColor];
    [_window makeKeyAndVisible];
	
    test* t = [[test alloc] initWithNibName:nil bundle:nil];
    [_window addSubview:t.view];
    
	return YES;
}

- (void)applicationWillTerminate:(UIApplication *) application{

}

- (void)applicationDidEnterBackground:(UIApplication *) application{

}

- (void)applicationDidBecomeActive:(UIApplication *) application{
	
}

- (void)dealloc {
	self.window = nil;
    [super dealloc];
}


@end
