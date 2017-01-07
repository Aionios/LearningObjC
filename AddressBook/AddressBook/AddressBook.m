//
//  AddressBook.m
//  AddressBook
//
//  Created by Aionios on 07/01/2017.
//  Copyright © 2017 Aion. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

-(instancetype) initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        bookName = [NSString stringWithString:name];
        book = [NSMutableArray array];
    }
    
    return self;
}

-(instancetype) init
{
    return [self initWithName:@"NoName"];
}

-(void) addCard:(AddressCard *)theCard
{
    [book addObject:theCard];
}

-(void) removeCard:(AddressCard *)theCard
{
    [book removeObjectIdenticalTo:theCard];
}
-(AddressCard*) lookup:(NSString *)theName
{
    for (AddressCard *nextCard in book)
        if ([nextCard.name caseInsensitiveCompare:theName] == NSOrderedSame)
            return nextCard;
    
    return nil;
}

-(void) sort
{
    //[book sortUsingSelector:@selector(compareNames:)];
    [book sortUsingComparator:^(id obj1, id obj2) {
        return [[obj1 name] compare:[obj2 name]];
    }];
}

-(NSUInteger) entries
{
    return [book count];
}

-(void) list
{
    NSLog (@"======== Contents of: %@ =========", bookName);
    /*
    for (AddressCard *theCard in book)
        NSLog(@"%-20s    %-32s", [theCard.name UTF8String],
              [theCard.email UTF8String]);
    */
    [book enumerateObjectsUsingBlock:
     ^(AddressCard *theCard, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%-20s    %-32s", [theCard.name UTF8String],
              [theCard.email UTF8String]);
     }];
    NSLog (@"==================================================");
}
@end
