//
//  Contact.h
//  Assignment04
//
//  Created by Marusia Ochoa Ramírez on 28/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

//declaration of enum allows create a predefined list of  values
enum Phone {Mobile, Work, Home};
//definition of properties of each type of objects to be used
@property NSString *firtsname;
@property NSString *lastname;
@property NSString *email;
@property NSInteger *index;
@property NSMutableDictionary *phoneNumber;
@property NSMutableArray *numbers;

//Method that indicates which type of value returns object
-(instancetype) initwithFirtsName: (NSString *) firtsname
                         lastname: (NSString *) lastname
                            email: (NSString *) email
                            index: (NSInteger *) index;

-(void) addPhoneNumbers:(enum Phone) type numbers: (NSString *) number;


@end
