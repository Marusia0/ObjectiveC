//
//  InputHandler.m
//  MATHS
//
//  Created by Marusia Ochoa Ramírez on 21/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

//This method take the char array (myStr) from the user and convet it into a NSString (input)
+ (NSString *) getUserInput{
    char myStr[256];
    fgets(myStr, 256, stdin);
    
    NSString *input = [[NSString stringWithCString: myStr encoding: NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    return input;
}

@end
