//
//  ContactList.h
//  Assignment04
//
//  Created by Marusia Ochoa Ramírez on 28/8/17.
//  Copyright © 2017 Marusia Ochoa Ramírez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContactList : NSObject

@property NSMutableArray *contactList;
@property NSMutableArray *emailList;

-(void) addContact: (Contact *) newContact;
-(NSInteger) findContactAtIndex: (NSString *) i;
-(Contact *) findContactWithKeyWord: (NSString *) keyword;

@end
