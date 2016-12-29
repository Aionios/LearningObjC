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
+ (void)initialize;
- (id)init;
- (void)sayHello;
- (int)value;
@end

@implementation A

+ (void)initialize
{
    printf("this is A class initializer\n");
}

- (id)init
{
    printf("this is A init\n");
    self = [super init];
    if (self != nil)
        a = 0;
    return self;
}

- (void)sayHello
{
    printf("Hello of A\n");
}

- (int)value
{
    return a;
}
@end

@interface B : A
+ (void)initialize;
- (void)sayHello;
@end

@implementation B
+ (void)initialize
{
    printf("this is B class initializer\n");
}
- (void)sayHello
{
    a = 1;
    printf("Hello of B\n");
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id a, b;
        A *aa, *ab;
        a = [[A alloc] init];
        b = [[B alloc] init];
        printf("------------------\n");
        aa = [[A alloc] init];
        ab = [[B alloc] init];
        NSLog(@"Hello, World!");
    }
    return 0;
}
