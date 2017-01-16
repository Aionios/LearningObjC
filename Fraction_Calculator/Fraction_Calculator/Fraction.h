//
//  Fraction.h
//  Fraction_Calculator
//
//  Created by HT Chang on 15/01/2017.
//  Copyright © 2017 HT Chang. All rights reserved.
//

#ifndef Fraction_h
#define Fraction_h

#import <UIKit/UIKit.h>

@interface Fraction : NSObject

@property int numerator, denominator;

- (void)print;
- (void)set:(int)n over:(int)d;

- (Fraction*)add:(Fraction*)f;
- (Fraction*)subtract:(Fraction*)f;
- (Fraction*)multiply:(Fraction*)f;
- (Fraction*)divide:(Fraction*)f;

- (void)reduce;
- (double)converToNum;
- (NSString*)convertToString;

@end

#endif /* Fraction_h */
