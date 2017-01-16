//
//  ViewController.h
//  Fraction_Calculator
//
//  Created by HT Chang on 15/01/2017.
//  Copyright © 2017 HT Chang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *display;

- (void)processDigit:(int)digit;
- (void)processOp:(char)theOp;
- (void)storeFracPart;

    // Numeric keys
- (IBAction)clickDigit:(UIButton*)sender;

    // Arithmetic keys
- (IBAction)clickPlus;
- (IBAction)clickMinus;
- (IBAction)clickMultiply;
- (IBAction)clickDivide;

    // Misc. keys
- (IBAction)clickOver;
- (IBAction)clickEquals;
- (IBAction)clickClear;

@end

