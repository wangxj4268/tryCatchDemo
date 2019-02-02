//
//  ViewController.m
//  LittleDemo
//
//  Created by 王雪剑 on 2018/8/28.
//  Copyright © 2018年 zkml－wxj. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(20, 100, 200, 40);
    [btn setTitle:@"跳转到下一页" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    
    @try {
        NSLog(@"第1步");
        NSArray *array = [NSArray new];
        NSString *str = array[2];
        NSLog(@"第2步");
    }
    @catch (NSException *e) {
        NSLog(@"第3步");
        NSString *str = @"";
        NSLog(@"第4步");
        NSArray *array = [NSArray new];
        NSString *str2 = array[2];
    }
    @finally {
        NSLog(@"第5步");
    }
    NSLog(@"第6步");
}

-(void)btnClick:(UIButton *)sender{
    ViewController2 *vc = [[ViewController2 alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
