//
//  main.m
//  Foundation
//
//  Created by HT Chang on 06/01/2017.
//  Copyright © 2017 HT Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSSet (Printing)
-(void) print;
@end

@implementation NSSet (Printing)

-(void)print
{
    printf("{ ");
    for (NSNumber *element in self)
        printf("%li ", (long)[element integerValue]);
    printf(" }\n");
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSNumber *a = @1.2, *b = @100, *c = @'X';
        NSString *str1 = @"This is string 1";
        NSString *str2;
        str2 = [[NSString alloc] initWithString:@"This is string 2"];
        NSString *str3 = @"中文測試";
        NSRange subRange;
        subRange = [str1 rangeOfString:@"This is"];
        int i = 0;
        NSArray *q1 = [NSArray arrayWithObjects:@"January", @"Feburary", @"March", nil];
        NSArray *q2 = @[@"April", @"May", @"June"];
        NSMutableArray *q3 = [NSMutableArray array];
        q3[0] = @"July";
        q3[1] = @"August";
        q3[2] = @"September";
        NSLog(@"a = %@, b = %@, c= %@", a, b, c);
        NSLog(@"str1:%@, str2:%@, str3:%@", str1, str2, str3);
        NSLog(@"Substring to index 3: %@", [str1 substringToIndex:3]);
        NSLog(@"Substring from index 5: %@", [str1 substringFromIndex:5]);
        NSLog(@"Substring from index 5 to 9: %@", [str1 substringWithRange:NSMakeRange(5, 5)]);
        NSLog(@"The string is from %lu with length %lu", subRange.location, subRange.location);
        subRange = [str1 rangeOfString:@"TEST"];
        if (subRange.location == NSNotFound)
            NSLog(@"No found");
        
        for (i = 0; i < 3; i++)
            NSLog(@"%@", q1[i]);
        
        NSLog(@"Q2: %@", q2);
        NSLog(@"Q3: %@", q3);
        
        NSMutableDictionary *calendar = [NSMutableDictionary dictionary];
        NSDictionary *ncalendar = @{@1:@"January", @2:@"Feburary", @3:@"March"};
        [calendar setObject:@"October" forKey:@10];
        [calendar setObject:@"November" forKey:@11];
        [calendar setObject:@"December" forKey:@12];
        calendar[@4] = @"April";
        calendar[@5] = @"May";
        calendar[@6] = @"June";
        calendar[@7] = @"July";
        calendar[@8] = @"August";
        calendar[@9] = @"September";
        
        for (int i = 1; i <= 3; i++)
            NSLog(@"Month: %@", ncalendar[@(i)]);
        NSNumber *itr;
        for (int i = 4; i <= 6; i++) {
            itr = [NSNumber numberWithInt:i];
            NSLog(@"Month: %@", [calendar objectForKey:itr]);
        }
        
        for (NSNumber *key in calendar) {
            if ([key intValue] > 6)
                NSLog(@"Month: %@", calendar[key]);
        }
        
        NSMutableSet *set1 = [NSMutableSet setWithObjects:@1, @3, @5, @10, nil];
        NSSet *set2 = [NSSet setWithObjects:@-5, @100, @3, @5, nil];
        NSSet *set3 = [NSSet setWithObjects:@12, @200, @3, nil];
        
        NSLog(@"set1: ");
        [set1 print];
        NSLog(@"set2: ");
        [set2 print];
        
        NSLog([set1 isEqual:set2] ? @"set1 = set2" : @"set1 != set2");
        NSLog([set1 containsObject:@10] ?
              @"set1 has 10" : @"set1 don't have 10");
        NSLog([set2 containsObject:@10] ?
              @"set2 has 10" : @"set2 don't have 10");
        
        [set1 addObject:@4];
        [set1 removeObject:@10];
        [set1 print];
        
        NSLog(@"set1 intersect set2: ");
        [set1 intersectSet: set2];
        [set1 print];
        
        NSLog(@"set1 union set3");
        [set1 unionSet:set3];
        [set1 print];
        
    }
    return 0;
}
