//
//  Prescription.m
//  Assignment07
//
//  Created by Marusia Ochoa Ramírez on 31/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

-(instancetype) initWithSymptom:(Symptom)symptom{
    
    self = [super init];
    if (self) {
        _symptom = symptom;
        
    }
    
    return self;
}

@end
