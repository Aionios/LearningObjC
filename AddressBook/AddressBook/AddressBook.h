//
//  AddressBook.h
//  AddressBook
//
//  Created by Aionios on 07/01/2017.
//  Copyright © 2017 Aion. All rights reserved.
//

#ifndef AddressBook_h
#define AddressBook_h
#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject <NSCoding>

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

-(instancetype) initWithName: (NSString*)name;
-(void) addCard: (AddressCard*)theCard;
-(void) removeCard: (AddressCard*)theCard;
-(AddressCard*) lookup: (NSString*) theName;
-(void) sort;
-(NSUInteger) entries;
-(void) list;

@end

#endif /* AddressBook_h */
