//
//  PossessionStore.m
//  ATableView
//
//  Created by theNotSoBrightLazyNovice on 6/26/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "PossessionStore.h"
#import "PossessionController.h"
#import "Possession.h"

@interface PossessionStore ()



@end


@implementation PossessionStore

-(id)init
{
	NSLog(@"PossessionStore - init");
	self = [super init];
	if (self) {
			
		allPossessions = [[NSMutableArray alloc]init];
	}
	return self;
}

-(NSArray *)allPossessions
{
	return allPossessions;
}

-(void)dealloc
{
	NSLog(@"PossessionStore - dealloc");
	[allPossessions release];
	[super dealloc];
}

-(Possession *)createPossession
{
	PossessionController *pc = [[PossessionController alloc]init];
	Possession *poss = [[pc randomPossesionS]retain];
	[allPossessions addObject:poss];
	
	[pc release];
	pc = nil;
	
	return [poss autorelease];
}
	

@end
