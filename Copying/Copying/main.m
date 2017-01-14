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
        
    }
    return 0;
}
