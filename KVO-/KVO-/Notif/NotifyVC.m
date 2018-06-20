//
//  NotifyVC.m
//  KVO-
//
//  Created by ac hu on 2018/6/20.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import "NotifyVC.h"
#import "NotifNextVC.h"

@interface NotifyVC ()

@end

@implementation NotifyVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(test:) name:@"name" object:nil];
}
- (IBAction)nextClick:(UIButton *)sender {
    [self.navigationController pushViewController:[NotifNextVC new] animated:YES];
}

-(void)test:(NSNotification *)noti{
    NSLog(@"这是收到的通知：%@",noti.object);
}
-(void)dealloc{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}



@end
