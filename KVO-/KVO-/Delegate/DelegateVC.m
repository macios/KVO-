//
//  DelegateVC.m
//  KVO-
//
//  Created by ac hu on 2018/6/20.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import "DelegateVC.h"
#import "BaoMu.h"
#import "Mother.h"
#import "DleNextVC.h"

@interface DelegateVC ()<DleNextVCProtocol>

@end

@implementation DelegateVC

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.代理实例一
    BaoMu *baoMu = [BaoMu new];
    Mother *mother = [Mother new];
    //mother找到代理保姆
    mother.delegate = baoMu;
    //mother发起照顾孩子任务
    [mother sendTakeCareChildTask];
    
    
}

//2.不同界面传参
- (IBAction)downClick:(UIButton *)sender {
    DleNextVC *vc = [DleNextVC new];
    vc.delegate = self;
    [self.navigationController pushViewController:vc animated:YES];
}

-(NSString *)notifText:(NSString *)str{
    NSLog(@"收到任务：%@",str);
    return @"时间太少";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
