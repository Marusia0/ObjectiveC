//
//  QuestionManager.m
//  MATHS
//
//  Created by Marusia Ochoa Ramírez on 29/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

-(instancetype)init{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array];
    }
    
    return self;
}

-(NSString *) timeOuput{
    Question *lastQuestion = [_questions objectAtIndex:[_questions count]-1];
    Question *firstQuestion = [_questions objectAtIndex:0];
    
    //NSInterval class show an object of number of seconds
    NSTimeInterval timeInterval = [[lastQuestion endTime] CFDateGetTimeIntervalSinceDate[firstQuestion, startTime]];
    long sec = lroundf(timeInterval);
    int seconds = sec % 60;
    return [NSString stringWithFormat:@"total time: %ds, average time: %lus", seconds, seconds / [_questions count]];
}

@end
