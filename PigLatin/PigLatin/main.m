//
//  main.m
//  PigLatin
//
//  Created by Marusia Ochoa Ramírez on 25/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *string = @"lets see how it works";
        
        NSLog(@"%@", string);
        NSLog(@"%@", [string stringByPigLatinization]);
        
        
    }
    return 0;
}
