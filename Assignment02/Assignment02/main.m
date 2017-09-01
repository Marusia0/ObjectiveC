//
//  main.m
//  Assignment02
//
//  Created by Marusia Ochoa Ramírez on 18/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Creating object of a Box class and adding values to calculate
        //*box1 = Box allloc is giving a space in the memory for that new object
        Box *box1 = [[Box alloc] initWithHeight:50 widht:50 length:50];
        Box *box2 = [[Box alloc] initWithHeight:10 widht:10 length:10];
        
        
        NSLog(@"Box 1 is %f times of Box 2", [box1 ratioToAnotherBox:box2]);
    }
    return 0;
}
