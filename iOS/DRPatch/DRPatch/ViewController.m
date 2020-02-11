//
//  ViewController.m
//  DRPatch
//
//  Created by yyy on 2020/1/31.
//  Copyright © 2020 yyy. All rights reserved.
//

#import "ViewController.h"
#import "YYYTestObject.h"
#import "DRParser.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [DRParser readFromFile:[NSURL fileURLWithPath:@"/Users/zeminyang/Desktop/bishe/毕设/iOS/DRPatch/DRPatch/DRTest.dr"]];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [YYYTestObject.new test];
}

@end
