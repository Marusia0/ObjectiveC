//
//  Doctor.m
//  Assignment07
//
//  Created by Marusia Ochoa Ramírez on 31/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

//@Interface declaration in .m file allows to declare private variables and METHODS usables only in this class
@interface Doctor(){
//in this case, Doctor patientList is a private object accessible only for Doctor.m Class
@private NSMutableArray *patientList;
    
}

-(NSMutableDictionary *) prescriptions;

@end

@implementation Doctor

-(instancetype) initWithName:(NSString *)name Specialization:(NSString *)spec {
    
    self = [super init];
    if (self) {
        _name = name;
        _specialization = spec;
        patientList = [NSMutableArray array];
    }
    
    return self;
}

-(Boolean) acceptPatient:(Patient *)patient HealthCard:(Boolean)healthCard{
    if (healthCard){
        [patientList addObject:patient];
        NSLog(@"Added to the Patient List");
        return true;
    }else {
        NSLog(@"Invalid HealthCard");
        
        return false;
    }
}

-(NSMutableDictionary *) prescriptions{
    static NSMutableDictionary *thePrescriptions = nil;
    if (thePrescriptions) {
        thePrescriptions = [NSMutableDictionary dictionary];
    }
    
    return thePrescriptions;

}

-(Boolean) prescribeMedication:(Patient *)patient{
    if ([patientList containsObject:patient]) {
        NSLog(@"Medication ready");
        Symptom symptom = [patient symptom];
        Prescription *prescription = [[Prescription alloc] initWithSymptom: symptom];
        [patient addPrescription:prescription];
        [[self prescriptions] setObject: [patient getPrescription] forKey:[patient name]];
        NSLog(@"%@", [NSString stringWithFormat:@"Medication for: %@", SymptomType_toString[symptom]]);
        
        return true;
    }
}


@end
