//
//  Question.m
//  MATHS
//
//  Created by Marusia Ochoa Ramírez on 29/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype) init{
    
    self = [super init];
    if (self) {
        //arc4random_uniform() is a function taht create a random number between
        _leftValue = arc4random_uniform(100);
        _rightValue = arc4random_uniform(100);
        //NSDate class create an object that encapsulate a simple point of time
        _startTime = [NSDate date];
    }
    
    return self;
}

-(void) generateQuestion{}

-(NSInteger) answer{
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval) answerTime{
    return [_endTime timeIntervalSinceDate:_startTime];
}

@end
