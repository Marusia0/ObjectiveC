//
//  Box.m
//  Assignment02
//
//  Created by Marusia Ochoa Ramírez on 18/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import "Box.h"

@implementation Box

//Implementation of methods
- (instancetype) initWithHeight:(float) height   widht:(float) widht   length:(float) lenght{
    
    //Self Class which works with the instance of the class where self class being encountered in the first place
    //in this case super class is Box.h
    self = [super init];
    
    if(self) {
        
        //underscore prefix is the convention for instances variables
        _height = height;
        _widht = widht;
        _length = lenght;
    }
    
    return self;
}

- (float) getVolume{
    return self.height * self.widht * self.length;
}

- (float) ratioToAnotherBox: (Box *) box {
    return self.getVolume / box.getVolume;
    
}


@end
