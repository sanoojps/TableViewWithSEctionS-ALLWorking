//
//  PossessionController.h
//  RandomPossession
//
//  Created by lockUp on 6/20/13.
//  Copyright (c) 2013 lockUp. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Possession;
//Controls the Possession Class
@interface PossessionController : NSObject

{
    NSMutableArray* holderArrayForPossessionObjects;
}

-(id)randomPossesionS;
-(id)otherValues;

-(NSMutableArray* )newOtherValues;

@end
