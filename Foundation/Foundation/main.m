//
//  main.m
//  Foundation
//
//  Created by HT Chang on 06/01/2017.
//  Copyright © 2017 HT Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

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
        
    }
    return 0;
}
