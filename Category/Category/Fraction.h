//
//  Fraction.h
//  Category
//
//  Created by HT Chang on 01/01/2017.
//  Copyright © 2017 HT Chang. All rights reserved.
//

#ifndef Fraction_h
#define Fraction_h

#import <Foundation/Foundation.h>

@interface Fraction: NSObject
@property int numerator, denominator;
-(void) print;
-(double) convertToNum;
-(void) setTo: (int)n over: (int)d;
-(void) reduce;

@end

#endif /* Fraction_h */
