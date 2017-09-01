//
//  ContactList.m
//  Assignment04
//
//  Created by Marusia Ochoa Ramírez on 28/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

-(instancetype) init
{
    self = [super init];
    if (self) {
        _contactList = [[NSMutableArray alloc] init];
        _emailList = [[NSMutableArray alloc] init];
    }

    return self;
}

-(void) addContact: (Contact *) newContact{
    [_contactList addObject:newContact];
    [_emailList addObject:[newContact email]];
}

-(NSString *) description{
    NSMutableString *result = [NSMutableString new];
    for (Contact* contact in _contactList) {
        [result appendString:[contact description]];
        [result appendString:@"\n"];
    }
    
    return result;
}


@end
