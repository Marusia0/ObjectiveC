//
//  Contact.m
//  Assignment04
//
//  Created by Marusia Ochoa Ramírez on 28/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import "Contact.h"

@implementation Contact

//Iniating method
-(instancetype)initwithFirtsName:(NSString *)firtsname lastname:(NSString *)lastname email:(NSString *)email index:(NSInteger *)index{
    
    self = [super init];
    
    if (self) {
        _firtsname = firtsname;
        _lastname = lastname;
        _email = email;
        _index = index;
        _phoneNumber = [NSMutableDictionary new];
        _numbers = [NSMutableArray new];
    }
    
    return self;
}

-(NSString *) description{
    //type method which returns a string with a given format
    
    return [NSString stringWithFormat:@"%ld: <%@ %@> (%@)", _index, _firtsname, _lastname, _email ];
}

-(void) addPhoneNumbers:(enum Phone) type numbers:(NSString *) number{
    switch (type) {
        case Mobile:
            [_phoneNumber setObject: number forKey:@"Mobile"];
            break;
        case Work:
            [_phoneNumber setObject: number forKey:@"Work"];
            break;
        case Home:
            [_phoneNumber setObject: number forKey:@"Home"];
            break;
        default:
            NSLog(@"Not valid");
            break;
    }
}


@end
