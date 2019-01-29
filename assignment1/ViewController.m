//
//  ViewController.m
//  assignment1
//
//  Created by Kyle Franke on 1/29/19.
//  Copyright © 2019 Kyle Franke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// @synthesize a,b,c,d,e;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction) tapButton : (UIButton *)sender {
    NSLog(@"%@ note noise...", [sender titleForState:UIControlStateNormal]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
