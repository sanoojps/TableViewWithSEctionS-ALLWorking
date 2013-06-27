//
//  PossessionController.m
//  RandomPossession
//
//  Created by lockUp on 6/20/13.
//  Copyright (c) 2013 lockUp. All rights reserved.
//

#import "PossessionController.h"
#import "Possession.h"
@implementation PossessionController

//return an instance of Possession Class
-(id)randomPossesionS
{
	//seed the random
	srand([[NSDate date]timeIntervalSince1970]);
    //Create an array of 3 adjectives
	NSArray* randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy",
                                    @"Rusty",
									@"Shiny",nil];
    //NSLog(@"randomAdjectiveList %@",[randomAdjectiveList description]);
	
	//Create an array of three nouns
	NSArray* randomNounList      = [NSArray arrayWithObjects:@"Bear",
									@"Spork",@"Mac",nil];
    //NSLog(@"randomNounList %@",[randomNounList description]);
	
	//Get the index of a random adjective/noun from the lists
	//Note:The % operrator,called modulo operator,gives
	//you th eremainder.So adjectiveIndex is a random number
	//from 0 to 1 inclusive.
	int adjectiveIndex = rand() % [randomAdjectiveList count];
	int nounIndex	   = rand() % [randomNounList count];
	
	NSString* randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue  = rand() % 100;
    
	NSString* randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
									'0' + rand() % 10,
									'A' + rand() % 26,
									'0' + rand() % 10,
									'A' + rand() % 26,
									'0' + rand() % 10];
    
    
    
    Possession *nuPossesion = [[Possession alloc]init];
    [nuPossesion setPossessionName:randomName];
    [nuPossesion setValueInDollars:randomValue];
    [nuPossesion setSerialNumber:randomSerialNumber];
    
    return [nuPossesion autorelease];
    
    }

//instead of returnng random value we return Meaningfull and different text

-(id)otherValues
{
	Possession *nuPossesion = [[Possession alloc]init];
	
	NSArray* pNAmeforPhoneDetails =  [NSArray arrayWithObjects:
					   @"Model",
					   @"Version",
					   @"Name",
					   @"Jailbroken",
					   @"UDID",
					   @"Signal Strength",
					   @"IMEA",
					   @"Total Number of apps",nil];
	
	NSArray* pNAmeforBattery =  [NSArray arrayWithObjects:
									  @"Battery \%",
									  @"Battery Left",
									  nil];
	
	NSArray* pNAmeforOperatingSystem =  [NSArray arrayWithObjects:
								 @"OS",
								 @"OS Version",
										 @"Kernel",
								 nil];
	
	NSArray* pNAmeforCPUUSage =  [NSArray arrayWithObjects:
										 @"In Use",
										 @"System",
										 @"Idle",
										 nil];
	
	NSArray* pNAmeforMemoryUSage =  [NSArray arrayWithObjects:
								  @"Total",
								  @"Used",
								  @"Free",
								  nil];
	
	NSArray* pNAmeforCellularNetwork =  [NSArray arrayWithObjects:
									 @"Status",
									 nil];
	
	NSArray* pNAmeforWiFiNetwork =  [NSArray arrayWithObjects:
										 @"MAC Address",
									 @"IP Address",
									 @"Status",
										 nil];
	
	NSArray* pNAmeforDisk =  [NSArray arrayWithObjects:
									 @"Free",
									 @"Used",
									  nil];
	
	NSArray* pNAmeforSystemRunTime =  [NSArray arrayWithObjects:
							  @"Boot Up Date",
							  @"Run Time",
							  nil];
	
	NSArray* pNAmeforHardwareSpecification =  [NSArray arrayWithObjects:
									  @"CPU",
									   @"Frequency",
									  @"Size",
									  @"Weight",
									  @"Screen Size",
									  @"Screen resolution",
									  @"Pixel density",
									  @"Battery Voltage",
									  @"Battery Capacity",
									   @"Wi-Fi - Types Supported",
									  @"BlueTooth - Version",
									   @"Rear Camera",
									  @"Front camera",
									   @"Three-axis Gyroscope - availability",
									   @"Orientation Sensor",
									  @"Distance Sensor",
									   @"Ambient Light Sensor",
									   nil];
	
	
	NSArray *arrayOfCategories = [NSArray arrayWithObjects:
								  pNAmeforPhoneDetails,
								  pNAmeforBattery,
								  pNAmeforOperatingSystem,
								  pNAmeforCPUUSage,
								  pNAmeforMemoryUSage,
								  pNAmeforCellularNetwork,
								  pNAmeforWiFiNetwork,
								  pNAmeforDisk,
								  pNAmeforSystemRunTime,
								  pNAmeforHardwareSpecification,
								  nil];
	
	for(int i =0;i<[arrayOfCategories count];i++)
	{
		for(int k =0 ; k < [[arrayOfCategories objectAtIndex:i]count];k++)
		{
			//get first Array in CategoryARRAy
			NSArray *tempArray = [arrayOfCategories objectAtIndex:i];
			//NSLog(@"tempArray --> %@",[tempArray description]);
			
			//get the element in category array
			NSString *tempString = [tempArray objectAtIndex:k];
			NSLog(@"tempString --> %@",[tempString description]);
			
			[nuPossesion setPossessionName:tempString];
			//[nuPossesion setValueInDollars:randomValue];
			//[nuPossesion setSerialNumber:randomSerialNumber];
		}
	}
		
	
   
    
    return [nuPossesion autorelease];
	
}


-(NSMutableArray* )newOtherValues
{
	NSLog(@"newOtherValues");
	
	NSArray* pNAmeforPhoneDetails =  [NSArray arrayWithObjects:
									  @"Model",
									  @"Version",
									  @"Name",
									  @"Jailbroken",
									  @"UDID",
									  @"Signal Strength",
									  @"IMEA",
									  @"Total Number of apps",nil];
	
	NSArray* pNAmeforBattery =  [NSArray arrayWithObjects:
								 @"Battery \%",
								 @"Battery Left",
								 nil];
	
	NSArray* pNAmeforOperatingSystem =  [NSArray arrayWithObjects:
										 @"OS",
										 @"OS Version",
										 @"Kernel",
										 nil];
	
	NSArray* pNAmeforCPUUSage =  [NSArray arrayWithObjects:
								  @"In Use",
								  @"System",
								  @"Idle",
								  nil];
	
	NSArray* pNAmeforMemoryUSage =  [NSArray arrayWithObjects:
									 @"Total",
									 @"Used",
									 @"Free",
									 nil];
	
	NSArray* pNAmeforCellularNetwork =  [NSArray arrayWithObjects:
										 @"Status",
										 nil];
	
	NSArray* pNAmeforWiFiNetwork =  [NSArray arrayWithObjects:
									 @"MAC Address",
									 @"IP Address",
									 @"Status",
									 nil];
	
	NSArray* pNAmeforDisk =  [NSArray arrayWithObjects:
							  @"Free",
							  @"Used",
							  nil];
	
	NSArray* pNAmeforSystemRunTime =  [NSArray arrayWithObjects:
									   @"Boot Up Date",
									   @"Run Time",
									   nil];
	
	NSArray* pNAmeforHardwareSpecification =  [NSArray arrayWithObjects:
											   @"CPU",
											   @"Frequency",
											   @"Size",
											   @"Weight",
											   @"Screen Size",
											   @"Screen resolution",
											   @"Pixel density",
											   @"Battery Voltage",
											   @"Battery Capacity",
											   @"Wi-Fi - Types Supported",
											   @"BlueTooth - Version",
											   @"Rear Camera",
											   @"Front camera",
											   @"Three-axis Gyroscope - availability",
											   @"Orientation Sensor",
											   @"Distance Sensor",
											   @"Ambient Light Sensor",
											   nil];
	
	
	NSArray *arrayOfCategories = [NSArray arrayWithObjects:
								  pNAmeforPhoneDetails,
								  pNAmeforBattery,
								  pNAmeforOperatingSystem,
								  pNAmeforCPUUSage,
								  pNAmeforMemoryUSage,
								  pNAmeforCellularNetwork,
								  pNAmeforWiFiNetwork,
								  pNAmeforDisk,
								  pNAmeforSystemRunTime,
								  pNAmeforHardwareSpecification,
								  nil];
	
	 
	for(int i =0;i<[arrayOfCategories count];i++)
	{
		for(int k =0 ; k < [[arrayOfCategories objectAtIndex:i]count];k++)
		{
			//get first Array in CategoryARRAy
			NSArray *tempArray = [arrayOfCategories objectAtIndex:i];
			//NSLog(@"tempArray --> %@",[tempArray description]);
			
			//get the element in category array
			NSString *tempString = [tempArray objectAtIndex:k];
			//NSLog(@"tempString --> %@",[tempString description]);
			
			
			Possession *nuPossesion = [[Possession alloc]init];
			[nuPossesion setPossessionName:tempString];
			[nuPossesion setValueInDollars:i];
			//[nuPossesion setSerialNumber:randomSerialNumber];
			
			//NSLog(@"possessionName --> %@",[nuPossesion possessionName]);
			//NSLog(@"valueInDollars --> %d",[nuPossesion valueInDollars]);
			
			//add it to the Holder array and release it;
			[holderArrayForPossessionObjects addObject:nuPossesion];
			//release nuPossession
			[nuPossesion release];	
		}
	}
	
	
	
    //previous logic had this return the Object
    //return [nuPossesion autorelease];
	//NSLog(@"holderArrayForPossessionObjects --> %@",[holderArrayForPossessionObjects description]);
	return holderArrayForPossessionObjects;
	
}

- (id)init
{
	NSLog(@"init");
    self = [super init];
    if (self) {
		
        // Add your subclass-specific initialization here.
        // If an error occurs here, send a [self release] message and return nil.
		//Instnatiate the array
		holderArrayForPossessionObjects = [[NSMutableArray alloc]init]; 
		
    }
    return self;
}

-(void) dealloc
{
	NSLog(@"dealloc");
	[holderArrayForPossessionObjects release];
	[super dealloc];
}

@end
