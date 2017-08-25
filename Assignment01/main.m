//
//  main.m
//  Assignment01
//
//  Created by Marusia Ochoa Ramírez on 17/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here..
            
        char inputChars[255];
        int inputnumber;
            
        //Input Strings from the user
        printf("Input a string: ");
        fgets(inputChars, 255, stdin);
        //printf("Your string is:%s\n ", inputChars);
            
        //Convert input char-array into NSString Object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        NSString *inputString1 = [inputString stringByTrimmingCharactersInSet:
                                       [NSCharacterSet whitespaceCharacterSet]];
        
        //Allocate the string with a pointer
        NSString *inputString1 = [[NSString alloc] init];
        
        //Show the operation.
        printf("What do you want to do?\n 1. Uppercase\n 2. Lowercase\n 3. Numberize\n 4. Canadianize\n 5 Respond\n 6. De Space it\n");
        
        //Select the operation
        printf("Select: \n");
        inputnumber = getchar();
        
        while (inputnumber <= 6) {
            
            while (inputnumber isEqualToString 1) {
                
                NSLog(@"%@", [inputString1 uppercaseString]);
            }
            
            while (inputnumber isEqualToString 2) {
                
                NSLog(@"%@", [inputString1 lowercaseString]);

            }
            
            while (inputnumber==3) {
                
                NSNumber *number = [[[NSNumberFormatter alloc] init] numberFromString: inputString1];
                NSLog(@"%@", number);

            }
            
            while (inputnumber==4) {
                
                NSLog(@"%@", [inputString1 stringByAppendingString:@", after you please!"]);
                
            }

            while (inputnumber==5) {
                
                NSLog(@"Ask Siri");
                
            }
            
            while (inputnumber==6) {
                
                NSArray *array = [inputString1 componentsSeparatedByString:@" "];
                NSLog(@"Des pa ci to: %@", array);
            }
            
            while (inputnumber > 6) {
                NSLog(@"Not valid");
                break;
            
            }
            }
        }
    }
