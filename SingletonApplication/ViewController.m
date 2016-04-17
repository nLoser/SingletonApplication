//
//  ViewController.m
//  SingletonApplication
//
//  Created by LV on 16/4/6.
//  Copyright © 2016年 Wieye. All rights reserved.
//
/*
 系统的单例：
 
 [NSUserDefaults standardUserDefaults];
 [NSNotificationCenter defaultCenter];
 [NSFileManager defaultManager];
 [UIApplication sharedApplication];
 
 所以我也要创建一个很酷酷的单例
 
 1.假设是应用中用户信息的管理器
 
 APUserinfoManager
 
 
 
 */
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
