//
//  HumboldtAppDelegate.m
//  Humboldt
//
//  Created by Peter Pistorius on 2009/02/06.
//  Copyright appfactory 2009. All rights reserved.
//

#import "HumboldtAppDelegate.h"


#import "FinderTableViewController.h"
#import "SpotlightTableViewController.h"

//#import "FilesTableViewController.h"
//#import "SearchTableViewController.h"
//#import "SharingTableViewController.h"


@implementation HumboldtAppDelegate


@synthesize window;
@synthesize tabBarController;


- (void)dealloc 
{
	[tabBarController release];
  [window release];
  [super dealloc];
}


# pragma mark -
# pragma mark Application setup


- (void)applicationDidFinishLaunching:(UIApplication *)application 
{

	// Prevent sleep
	[UIApplication sharedApplication].idleTimerDisabled = YES;
	

	FinderTableViewController *finder = [FinderTableViewController finderWithPath:[NSHomeDirectory() stringByAppendingPathComponent:@"Documents/Files/"]];
	UINavigationController *finderNavigationController = [[UINavigationController alloc] initWithRootViewController:finder];
	[finder release];
	
	SpotlightTableViewController *spotlight = [[SpotlightTableViewController alloc] initWithStyle:UITableViewStylePlain];
	UINavigationController *spotlightNavigationController = [[UINavigationController alloc] initWithRootViewController:spotlight];
	[spotlight release];
	

//	
//	
//	// Server view controller...
//	SharingTableViewController *sharingTableViewController = [[SharingTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
//	UINavigationController *sharingNavigationController = [[UINavigationController alloc] initWithRootViewController:sharingTableViewController];
//	[sharingTableViewController release];

	// Tab bar controller
	self.tabBarController = [[UITabBarController alloc] init];
	tabBarController.viewControllers  = [NSArray arrayWithObjects:finderNavigationController, spotlightNavigationController, nil]; //searchNavigationController, sharingNavigationController, nil];
	tabBarController.selectedIndex = 0;
//	
//	
//
	[finderNavigationController release];
	[spotlightNavigationController release];
//	[sharingNavigationController release];
	

	[window addSubview:tabBarController.view];
	[window makeKeyAndVisible];
}






@end
