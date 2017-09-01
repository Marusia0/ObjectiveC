//
//  ScoreKeeper.h
//  MATHS
//
//  Created by Marusia Ochoa Ramírez on 22/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (assign) int right;
@property (assign) int wrong;
@property (nonatomic) NSString *percentage;

- (void) printCurrentState;


@end
