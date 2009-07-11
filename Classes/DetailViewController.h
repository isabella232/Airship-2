//
//  DetailViewController.h
//  Humboldt
//
//  Created by Peter Pistorius on 2009/05/24.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DirectoryItem;

@interface DetailViewController : UIViewController {

	DirectoryItem *file;
	UIWebView *webView;

}

@property (nonatomic, retain) DirectoryItem *file;
@property (nonatomic, retain) UIWebView *webView;

- (void)openFile:(DirectoryItem *)item;


@end
