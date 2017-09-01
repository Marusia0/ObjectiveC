//
//  Question.h
//  MATHS
//
//  Created by Marusia Ochoa Ramírez on 29/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property NSString *question;
@property NSInteger answer;
//NSDate class which encapsulate a simpe, point of time
@property NSDate *startTime;
@property NSDate *endTime;
@property NSInteger rightValue;
@property NSInteger leftValue;

-(NSTimeInterval) answerTime;
-(void) generateQuestion;

@end
