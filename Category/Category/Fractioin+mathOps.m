//
//  Fractioin+mathOps.m
//  Category
//
//  Created by HT Chang on 01/01/2017.
//  Copyright © 2017 HT Chang. All rights reserved.
//

#import "Fraction+mathOps.h"

@implementation Fraction (mathOps)

-(Fraction*) add:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = (self.numerator * f.denominator) +
    (self.denominator * f.numerator);
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    return result;
}

-(Fraction*) mul:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = self.numerator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    return result;
}

-(Fraction*) sub:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = (self.numerator * f.denominator) -
    (self.denominator * f.numerator);
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    return result;
}

-(Fraction*) div:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = self.numerator * f.denominator;
    result.denominator = self.denominator * f.numerator;
    [result reduce];
    return result;
}

@end
