//
//  main.m
//  Category
//
//  Created by HT Chang on 01/01/2017.
//  Copyright © 2017 HT Chang. All rights reserved.
//

#import "Fraction+mathOps.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *a = [[Fraction alloc] init];
        Fraction *b = [[Fraction alloc] init];
        Fraction *result;
        
        [a setTo:1 over:3];
        [b setTo:2 over:5];
        
        [a print]; NSLog(@"  +"); [b print]; NSLog(@"-----");
        result = [a add:b];
        [result print]; NSLog(@"\n");
        
        [a print]; NSLog(@"  *"); [b print]; NSLog(@"-----");
        result = [a mul:b];
        [result print]; NSLog(@"\n");
        
        [a print]; NSLog(@"  -"); [b print]; NSLog(@"-----");
        result = [a sub:b];
        [result print]; NSLog(@"\n");
        
        [a print]; NSLog(@"  /"); [b print]; NSLog(@"-----");
        result = [a div:b];
        [result print]; NSLog(@"\n");
        
    }
    return 0;
}
