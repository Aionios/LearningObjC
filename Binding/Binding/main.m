//
//  main.m
//  Binding
//
//  Created by HT Chang on 29/12/2016.
//  Copyright © 2016 HT Chang. All rights reserved.
//

#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        id dataValue;
        Complex *c = [[Complex alloc] init];
        [c setReal:10.0 andImaginary:2.5];
        dataValue = c;
        [dataValue print];
        
        
    }
    return 0;
}
