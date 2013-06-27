//
//  Possession.m
//  RandomPossession
//
//  Created by lockUp on 6/18/13.
//  Copyright (c) 2013 lockUp. All rights reserved.
//

#import "Possession.h"

@implementation Possession
@synthesize valueInDollars;

//SETTERS and GETTERS
-(void)setPossessionName:(NSString *)pName
{
    [pName retain];
    [possessionName release];
    possessionName =  pName;
}
-(NSString *)possessionName
{
    return possessionName;
}

-(void)setSerialNumber:(NSString *)sNo;
{
    [sNo retain];
    [serialNumber release];
    serialNumber = sNo;
}
-(NSString *)serialNumber
{
    return serialNumber;
}


//-(void)setValueInDollars:(int)vInDollar
//{
  //  valueInDollars = vInDollar;
//}
//-(int)vauleInDollars
//{
    //return valueInDollars;
//}
 

/* not requred as date instance is cretaed by Possessio class
 * during INIT
 
-(void)setDateCreated:(NSDate *)dateCr
{
    [dateCr retain];
    [dateCreated release];
    dateCreated = dateCr;
}
-(NSDate *)dateCreated
{
    return dateCreated;
}

 */
 
#pragma mark -
#pragma mark Description




#pragma mark -
#pragma mark Cleanup

//Cleanup
-(void)dealloc
{
	[possessionName release];
	[serialNumber release];
    [dateCreated release];
    [super dealloc];
}
@end
