//
//  Box.h
//  Assignment02
//
//  Created by Marusia Ochoa Ramírez on 18/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import <Foundation/Foundation.h>

//Class definition, instance of NSObject Class
@interface Box : NSObject

//definition of properties of Box Class
@property(assign, nonatomic) float height;
@property(assign, readwrite) float widht;
@property(assign, readwrite) float length;

//Definition of methods
//instancetype is a signal that a method returns a related result type
- (instancetype) initWithHeight:(float) height   widht:(float) widht   length:(float) lenght;
- (float) getVolume;
- (float) ratioToAnotherBox: (Box *) box;


@end
