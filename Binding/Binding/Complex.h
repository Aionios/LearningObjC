//
//  Complex.h
//  Binding
//
//  Created by HT Chang on 29/12/2016.
//  Copyright © 2016 HT Chang. All rights reserved.
//

#ifndef Complex_h
#define Complex_h
#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;
-(void) print;
-(void) setReal: (double)a andImaginary: (double)b;
-(Complex*) add: (Complex*)f;

@end

#endif /* Complex_h */
