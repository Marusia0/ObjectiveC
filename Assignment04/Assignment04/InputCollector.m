//
//  InputCollector.m
//  Assignment04
//
//  Created by Marusia Ochoa Ramírez on 23/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

//Method to create and iniatilized an instance _history whic is an object of MSMutableArray to take the char-set input from the user when it will be converted into a string
-(instancetype) init{
    
    self = [super init];
    if (self) {
        //new instance (object) of NSMutableArray
        _history = [NSMutableArray new];
        
    }
    
    return self;
}

//Method to take the user input into a string
-(NSString *) inputForPrompt:(NSString *)promptString{

    NSLog(@"%@",promptString);
    char myStr[256];
    fgets(myStr, 256, stdin);
    //Methos to convert a character set taken from the user input in a new string //TrimmingCharacterSet is the indication taking characters, in this case is the white space between words
    NSString *input = [[NSString stringWithCString:myStr encoding: NSUTF8StringEncoding]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    //Adding new input string to _history NSMutableArray usin the flexibility of this object as mutable
    [_history addObject:input];
    
    return input;

}



@end
