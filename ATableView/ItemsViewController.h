//
//  ItemsViewController.h
//  ATableView
//
//  Created by theNotSoBrightLazyNovice on 6/26/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@class PossessionController;

@interface ItemsViewController : UITableViewController {

	PossessionController *nuStore;
	NSMutableArray *strayArray;
}

@end
