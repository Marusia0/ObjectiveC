//
//  main.m
//  Assignment07
//
//  Created by Marusia Ochoa Ramírez on 30/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import <Foundation/Foundation.h>

//Fordward declaration of a class, is used when the implementation of that class must be/is unknown
@class Patient;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Doctor *doc1 = [[Doctor alloc] initWithName:@"Paul" Specialization:@"Pediatrics"];
        Patient *pat1 = [[Patient alloc] initWithName: @"Lea" Age: 30 HealthCare:true];
        
        if([pat1 visitDoctor:doc1]){
            NSLog(@"\n%@", pat1);
            [pat1 requestMedication:doc1];
        }else{
            NSLog(@"Bye");
        }
        
        
    }
    return 0;
}
