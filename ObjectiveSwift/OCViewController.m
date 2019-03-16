//
//  OCViewController.m
//  ObjectiveSwift
//
//  Created by HanYong on 2019/3/15.
//  Copyright © 2019 HanYong. All rights reserved.
//

#import "OCViewController.h"
#import "ObjectiveSwift-Swift.h"

@interface OCViewController ()

@end

@implementation OCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [btn setTitle:@"GO Swift" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(20, 100, 80, 30);
    [btn addTarget:self action:@selector(giveUp) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

-(void)setName:(NSString *)name{
    
    NSLog(@"---%@",name);
}

-(void)giveUp{
    SwiftController *giveUp = [[SwiftController alloc] init];
    [giveUp start];
    giveUp.work = @"iOS开发";
    giveUp.name = @"hanyong";
    
    [self presentViewController:giveUp animated:YES completion:nil];
}


@end
