//
//  Calculator.h
//  Fraction_Calculator
//
//  Created by HT Chang on 15/01/2017.
//  Copyright © 2017 HT Chang. All rights reserved.
//

#ifndef Calculator_h
#define Calculator_h

#import <UIKit/UIKit.h>
#import "Fraction.h"

@interface Calculator : NSObject

@property (strong, nonatomic) Fraction *operand1;
@property (strong, nonatomic) Fraction *operand2;
@property (strong, nonatomic) Fraction *accumulator;

- (Fraction*)performOperation:(char)op;
- (void)clear;

@end

#endif /* Calculator_h */
