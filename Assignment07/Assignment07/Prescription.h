//
//  Prescription.h
//  Assignment07
//
//  Created by Marusia Ochoa Ramírez on 31/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Prescription : NSObject

//enumerator data type is a list of predefined variables
typedef enum { cold = 0, flu, headache} Symptom;

@property Symptom symptom;

-(instancetype) initWithSymptom: (Symptom) symptom;

@end
