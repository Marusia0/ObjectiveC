//
//  Patient.m
//  Assignment07
//
//  Created by Marusia Ochoa Ramírez on 31/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

//private method only accesible in Doctor.m file
@interface Patient(){
    @private
    Boolean healthCard;
    NSMutableArray *prescriptions;
}

@end

@implementation Patient

NSString *const SymptomType_toString[] = {
    [cold] = @"Cold",
    [flu] = @"Flu",
    [headache] = @"headache"
};

-(instancetype) valueWithName:(NSString *)name Age:(NSString) age HealthCard:(Boolean)card{
    
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        healthCard = card;
        _symptom = (Symptom) (arc4random() % (int) headache);
        prescriptions = [NSMutableArray array];
    }
    
    return self;
}

-(Boolean) visitDoctor:(Doctor *)doctor {
    return [doctor acceptPatient:self HealthCard:healthCard;
}

-(void) addPrescription:(Prescription)prescription{
    [prescriptions addObject:prescriptions];
                
}

            -(NSString *) description{
                return [NSString stringWithFormat:@"Patient Information: \nName: %@ \nAge: %lu \nHealthCard: %@ \nSymptom: %@\n", _name, _age, (healthCard) ? @"Valid": @"Invalid", SymptomType_toString[_symptom]];
            }


@end
