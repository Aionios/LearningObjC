//
//  AddressCard.m
//  AddressBook
//
//  Created by Aionios on 07/01/2017.
//  Copyright © 2017 Aion. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
{
    NSString *name;
    NSString *email;
}
-(void) setName:(NSString *)theName
{
    name = [NSString stringWithString:theName];
}

-(void) setEmail:(NSString *)theEmail
{
    email = [NSString stringWithString:theEmail];
}

-(void) setName:(NSString *)theName andEmail:(NSString *)theEmail
{
    [self setName:theName];
    [self setEmail:theEmail];
}

-(NSComparisonResult) compareNames:(id)element
{
    return [name compare:[element name]];
}

-(NSString*) name
{
    return name;
}

-(NSString*) email
{
    return email;
}

-(void) print
{
    NSLog (@"====================================");
    NSLog (@"|                                  |");
    NSLog (@"| %-32s |", [name UTF8String]);
    NSLog (@"| %-32s |", [email UTF8String]);
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"|       O                   O      |");
    NSLog (@"====================================");
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"!Name:%@, Email:%@!", name, email];
}
@end
