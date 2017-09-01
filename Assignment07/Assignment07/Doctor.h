//
//  Doctor.h
//  Assignment07
//
//  Created by Marusia Ochoa Ramírez on 31/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Doctor : NSObject

//Defining properties
@property NSString *name;
@property NSString *specialization;

-(instancetype) initWithName: (NSString *) name Specialization: (NSString *) spec;
-(Boolean) acceptPatient: (Patient *) patient HealthCard: (Boolean) healthCard;
-(Boolean) prescribeMedication: (Patient *) patient;



@end
