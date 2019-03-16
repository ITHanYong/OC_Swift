//
//  ViewController.m
//  ObjectiveSwift
//
//  Created by HanYong on 2019/3/15.
//  Copyright © 2019 HanYong. All rights reserved.
//

#import "ViewController.h"
#import "ObjectiveSwift-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [btn setTitle:@"GO" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(20, 100, 60, 30);
    [btn addTarget:self action:@selector(giveUp) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

-(void)setName:(NSString *)name{
    
    NSLog(@"---%@",name);
}

-(void)giveUp{
    GiveUpController *giveUp = [[GiveUpController alloc] init];
    [giveUp start];
    giveUp.work = @"iOS开发";
    giveUp.name = @"hanyong";
    
    [self presentViewController:giveUp animated:YES completion:nil];
}


@end
