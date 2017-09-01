//
//  InputCollector.h
//  Assignment04
//
//  Created by Marusia Ochoa Ramírez on 23/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

//definition of a property in my NSObject class inputCollector Class
@property NSMutableArray *history;

//Defidniton of a method inputPrompt wich return a NSS string type object
-(NSString *) inputForPrompt: (NSString *) promptString;


@end
