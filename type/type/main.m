//
//  main.m
//  type
//
//  Created by Aionios on 25/12/2016.
//  Copyright © 2016 Aion. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdio.h>

@interface A : NSObject
{
    int a;
}
// class initializer only got executed once.
+ (void)initialize;
- (id)init;
- (void)whoAreYou;
@end

@implementation A
+ (void)initialize
{
    printf("Init A\n");
}

- (id)init
{
    printf("this is instance init of A\n");
    self = [super init];
    if (self != nil) {
        a = 1;
    }
    return self;
}


- (void)whoAreYou
{
    printf("I am A\n");
}
@end


@interface B : A
{
    int b;
}
+ (void)initialize;
+ (void)setMessage:(const char*)msg;
- (id)init;
- (void)whoAreYou;
- (void)sayHello;
@end

static const char *myMessage = "Hello";

@implementation B
+ (void)initialize
{
    printf("Init B\n");
}
+ (void)setMessage:(const char *)msg
{
    myMessage = msg;
}
- (id)init
{
    printf("this is instance init of B\n");
    self = [super init];
    if (self != nil) {
        b = 2;
    }
    return self;
}
- (void)whoAreYou
{
    printf("I am B\n");
}

- (void)sayHello
{
    printf("%s\n", myMessage);
}

@end

@interface Fraction : NSObject
@property int numerator, denominator;

-(void) print;
-(double) convertToNum;

@end

@implementation Fraction

@synthesize numerator, denominator;

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(double) convertToNum
{
    if (denominator != 0)
        return (double)numerator/denominator;
    else
        return NAN;
}

@end

int main(int argc, const char * argv[]) {
    
    A *b;
    b = [[B alloc] init];
    A *bb;
    bb = [[B alloc] init];
    BOOL is = [b isKindOfClass:[B class]];
    printf("%s\n", is ? "Yes" : "No");
    [(B*)b sayHello];
    [B setMessage:"This is an apple"];
    [(B*)b sayHello];
    
    Fraction *frac = [[Fraction alloc] init];
    frac.numerator = 1;
    [frac setDenominator:3];
    [frac print];
    
    return 0;
}
