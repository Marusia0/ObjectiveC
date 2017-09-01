//
//  addition.m
//  MATHS
//
//  Created by Marusia Ochoa Ramírez on 21/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import "AdditionQuestion.h"


@implementation AdditionQuestion

-(instancetype) init{
    
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    
    return  self;
    
}

-(void)generateQuestion{
    super.question = [NSString stringWithFormat:@"%li + %li", (long) super.leftValue + (long) super.rightValue];
    super.answer = super.leftValue + super.rightValue;
}

@end
