//
//  ItemsViewController.m
//  ATableView
//
//  Created by theNotSoBrightLazyNovice on 6/26/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ItemsViewController.h"

#import "PossessionController.h"
//#import "PossessionStore.h"
#import "Possession.h"
@implementation ItemsViewController

-(id)init
{
	//superClass
	self = [super initWithStyle:UITableViewStyleGrouped];
	
	
	if (self) {
		
		nuStore = [[PossessionController alloc]init];
		//strayArray = [nuStore newOtherValues];
		strayArray = [[NSMutableArray alloc]init];
		strayArray = [nuStore newOtherValues];
		
		
	}
	
	return self;
}

-(id)iniWithStyle:(UITableViewStyle)style
{
	return [self init];
}


-(void)dealloc
 {
	 [strayArray release];
	 [nuStore release];
	 [super dealloc];
 }


#pragma mark -
#pragma mark UITableViewDataSource	

- (NSInteger)tableView:(UITableView *)tableView 
 numberOfRowsInSection:(NSInteger)section

{
	return [strayArray count];
	//return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView 
		 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	//Create a UITABleView cell
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableVIewCEll"];
	
	if (!cell) {
		
	cell = [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"UITableVIewCEll"]autorelease];
	
	}
	
	int theRow =[indexPath row];
		
	//set The text
	Possession *p;
	p = [strayArray objectAtIndex:theRow];
	
	[[cell textLabel]setText:[p possessionName]];
	
	[[cell detailTextLabel]setText:[NSString stringWithFormat:@"%d",[p valueInDollars]]];
	
	/*
	[p release];
	p = nil;
	*/
	
	
	//[[cell textLabel] setText: @"hhaha"];
	
	
	return cell;
	
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 2;
}



@end 
