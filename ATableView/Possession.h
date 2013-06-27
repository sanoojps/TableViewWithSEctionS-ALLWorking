//
//  Possession.h
//  RandomPossession
//
//  Created by lockUp on 6/18/13.
//  Copyright (c) 2013 lockUp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Possession : NSObject
{
    NSString        *possessionName;
    NSString        *serialNumber;
    int             valueInDollars;
    NSDate          *dateCreated;
    
    //description
   // NSString        *descriptionString;
}

//SETTERS and GETTERS
-(void)setPossessionName:(NSString *)pName;
-(NSString *)possessionName;
//same as @property(nonatomic,retain) NSString        *possessionName;

-(void)setSerialNumber:(NSString *)sNo;
-(NSString *)serialNumber;
//same as @property(nonatomic,retain) NSString        *serialNumber;

/*
-(void)setValueInDollars:(int)vInDollar;
-(int)vauleInDollars;
 */
//same as
@property(nonatomic,assign) int             valueInDollars;

/* not requred as date instance is created by Possession class
 * during INIT

-(void)setDateCreated:(NSDate *)dateCr;
-(NSDate *)dateCreated;
*/
//can be declared as : @property(nonatomic,readonly)NSDate          *dateCreated;

/*
//CLass Methods
-(id)randomPossesion;
*/
@end
