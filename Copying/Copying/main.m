//
//  main.m
//  Copying
//
//  Created by HT Chang on 14/01/2017.
//  Copyright © 2017 HT Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:@"one",
                                     @"two", @"three", @"four", nil];
        NSMutableArray *dataArray2;
        
        dataArray2 = dataArray;
        
        [dataArray2 removeObjectAtIndex:0];
        
        NSLog(@"dataArray: ");
        for (NSString *elem in dataArray)
            NSLog(@" %@", elem);
        
        NSLog(@"dataArray2: ");
        for (NSString *elem in dataArray2)
            NSLog(@" %@", elem);
        
        dataArray2 = [dataArray mutableCopy];
        
        [dataArray2 removeObjectAtIndex:0];
        
        NSLog(@"dataArray: ");
        for (NSString *elem in dataArray)
            NSLog(@" %@", elem);
        
        NSLog(@"dataArray2: ");
        for (NSString *elem in dataArray2)
            NSLog(@" %@", elem);
        
        dataArray2 = [dataArray copy];
        if ([dataArray2 isKindOfClass:[NSMutableArray class]])
            NSLog(@"MutableArray");
        else
            NSLog(@"ImmutableArray");
        
        NSLog(@"********Shallow Copy vs Deep Copy********");
        NSMutableString *mStr;
        [dataArray removeAllObjects];
        // [dataArray2 removeAllObjects];
        
        [dataArray addObject: [NSMutableString stringWithString:@"one"]];
        [dataArray addObject: [NSMutableString stringWithString:@"two"]];
        [dataArray addObject: [NSMutableString stringWithString:@"three"]];
        [dataArray addObject: [NSMutableString stringWithString:@"four"]];
        
        dataArray2 = [dataArray mutableCopy];
        mStr = dataArray[0];
        NSLog(@"dataArray: ");
        for (NSString *elem in dataArray)
            NSLog(@"  %@", elem);

        NSLog(@"mStr: %@", mStr);
        [mStr appendString:@"ONE"];
        NSLog(@"dataArray: ");
        for (NSString *elem in dataArray)
            NSLog(@"  %@", elem);
        
        NSLog(@"dataArray2: ");
        for (NSString *elem in dataArray2)
            NSLog(@" %@", elem);
        
        
    }
    return 0;
}
