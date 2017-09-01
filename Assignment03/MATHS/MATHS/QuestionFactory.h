//
//  QuestionFactory.h
//  MATHS
//
//  Created by Marusia Ochoa Ramírez on 29/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property NSArray *questionSubclassNames;

-(Question *) generateRandomQuestion;

@end
