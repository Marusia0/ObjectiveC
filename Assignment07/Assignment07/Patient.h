//
//  Patient.h
//  Assignment07
//
//  Created by Marusia Ochoa Ramírez on 31/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property *name;
@property *age;
@property Symptom symptom;

-(instancetype) valueWithName:(NSString *) name Age:(NSUInteger) age HealthCard: (Boolean) card;
-(Boolean) visitDoctor: (Doctor *) doctor;
-(void) requestmedication: (Doctor *) doctor;
-(NSMutableArray *) getPrescription;
-(void) addPrescription: (Prescription *) prescription;
//Declaration of extern constant to store strings to use in when exporting and this type of constant does not affect the scope and store the constant in SymptomType_toString[] list
extern NSString * const SymptomType_toString[];

@end
