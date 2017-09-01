//
//  QuestionFactory.m
//  MATHS
//
//  Created by Marusia Ochoa Ramírez on 29/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

-(instancetype) init{
    
    self = [super init];
    if (self) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    
    return self;
}

-(Question *) generateRandomQuestion{
    NSString *questionType = [_questionSubclassNames: objectAtIndex:arc4random_uniform(4)];
    
    return [[NSClassFromString(questionType) alloc] init];
}

@end
