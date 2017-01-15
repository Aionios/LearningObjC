//
//   AddressCard.h
//  AddressBook
//
//  Created by Aionios on 07/01/2017.
//  Copyright © 2017 Aion. All rights reserved.
//

#ifndef _AddressCard_h
#define _AddressCard_h
#import <Foundation/Foundation.h>

@interface AddressCard : NSObject <NSCoding>

-(void) setName: (NSString*)theName;
-(void) setEmail: (NSString*)theEmail;
-(void) setName: (NSString*)theName andEmail:(NSString*)theEmail;
-(NSComparisonResult) compareNames:(id)element;
-(NSString*) name;
-(NSString*) email;

-(void) print;


@end

#endif /* _AddressCard_h */
