//
//  Rectangle.m
//  ClassInheritance
//
//  Created by Aionios on 28/12/2016.
//  Copyright © 2016 Aion. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

@implementation Rectangle

{
    XYPoint *origin;
}

@synthesize width, height;

-(void) setWidth:(int)w andHeight:(int)h
{
    width = w;
    height = h;
}

-(void) setOrigin:(XYPoint *)pt
{
    origin = pt;
}

-(int) area
{
    return width * height;
}

-(int) perimeter
{
    return (width + height) * 2;
}

-(XYPoint*) origin
{
    _test = 1;
    return origin;
}

@end

@implementation Square

-(void) setSide:(int)s
{
    [self setWidth:s andHeight:s];
}

-(int) side
{
    return self.width;
}

@end
