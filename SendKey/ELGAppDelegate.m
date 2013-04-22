//
//  ELGAppDelegate.m
//  SendKey
//
//  Created by Eric Gorr on 4/22/13.
//  Copyright (c) 2013 Eric Gorr. All rights reserved.
//

#import "ELGAppDelegate.h"

@implementation ELGAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	NSString*		scriptPath	= [[NSBundle mainBundle] pathForResource:@"sendkey" ofType:@"scpt"];
	NSURL*			scriptURL	= [NSURL fileURLWithPath:scriptPath];
	NSDictionary*	errors;
	NSAppleScript*	script		= [[NSAppleScript alloc] initWithContentsOfURL:scriptURL error:&errors];
	
	NSLog( @"%@", errors );
	
	[script executeAndReturnError:&errors];
	
	NSLog( @"%@", errors );
}

@end
