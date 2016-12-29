//
//  Rectangle.h
//  ClassInheritance
//
//  Created by Aionios on 28/12/2016.
//  Copyright © 2016 Aion. All rights reserved.
//

#ifndef Rectangle_h
#define Rectangle_h
#import <Foundation/Foundation.h>

@class XYPoint;
@interface Rectangle : NSObject

@property int width, height;
@property int test;

-(XYPoint*) origin;
-(void) setOrigin: (XYPoint*)pt;
-(void) setWidth: (int)w andHeight: (int)h;
-(int) area;
-(int) perimeter;

@end

@interface Square : Rectangle
-(void) setSide: (int)s;
-(int) side;

@end

#endif /* Rectangle_h */
