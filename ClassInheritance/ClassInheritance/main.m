//
//  main.m
//  ClassInheritance
//
//  Created by Aionios on 28/12/2016.
//  Copyright © 2016 Aion. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX:100 setY:200];
        [myRect setWidth:5 andHeight:8];
        myRect.origin = myPoint;
        
        NSLog(@"Rectangle w = %i, h = %i", myRect.width, myRect.height);
        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        NSLog(@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);
    }
    return 0;
}
