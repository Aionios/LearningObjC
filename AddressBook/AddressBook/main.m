//
//  main.m
//  AddressBook
//
//  Created by Aionios on 07/01/2017.
//  Copyright © 2017 Aion. All rights reserved.
//

#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *aName = @"Julia Chang";
        NSString *aEmail = @"JChang@gmails.com";
        NSString *bName = @"Aion Chang";
        NSString *bEmail = @"AChang@gmails.com";
        NSString *cName = @"Albert Einstein";
        NSString *cEmail = @"AEin@gmails.com";
        NSString *dName = @"Bob Einstein";
        NSString *dEmail = @"BEin@gmails.com";
        
    
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        NSLog(@"card1: %@", card1);
        
        AddressBook *myBook = [[AddressBook alloc]
                               initWithName:@"H's AddressBook"];
        AddressCard *myCard;
        
        NSLog(@"Entries in address book after creation: %li", [myBook entries]);
        [card1 setName: aName andEmail:aEmail];
        [card2 setName: bName andEmail:bEmail];
        [card3 setName: cName andEmail:cEmail];
        [card4 setName: dName andEmail:dEmail];
        
        
        [myBook addCard:card1];
        [myBook addCard:card2];
        [myBook addCard:card3];
        [myBook addCard:card4];
        
        myCard = [myBook lookup:@"Bob Einstein"];
        if (myCard)
            [myCard print];
        else
            NSLog(@"Not found");
        
        NSLog(@"Entries in address book after adding cards: %li",
              [myBook entries]);
        
        [myBook list];
        [myBook sort];
        [myBook list];
        [myBook removeCard:myCard];
        
        [myBook list];
        
        if ([NSKeyedArchiver archiveRootObject:myBook
                                        toFile:@"/Users/aion/myAddressBook.arch"]
            == NO) {
            NSLog(@"archiving failed!");
        }
        
        AddressBook *readBack = [NSKeyedUnarchiver
                                 unarchiveObjectWithFile:@"/Users/aion/myAddressBook.arch"];
        NSLog(@"Read back archive: ");
        [readBack list];
    }
    return 0;
}
