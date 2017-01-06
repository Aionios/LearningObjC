//
//  Fraction+mathOps.h
//  Category
//
//  Created by HT Chang on 01/01/2017.
//  Copyright © 2017 HT Chang. All rights reserved.
//

#ifndef Fraction_mathOps_h
#define Fraction_mathOps_h

#import "Fraction.h"

@interface Fraction (mathOps)
-(Fraction*) add:(Fraction*)f;
-(Fraction*) mul:(Fraction*)f;
-(Fraction*) sub:(Fraction*)f;
-(Fraction*) div:(Fraction*)f;

@end

#endif /* Fraction_mathOps_h */
