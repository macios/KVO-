//
//  DleNextVC.m
//  KVO-
//
//  Created by ac hu on 2018/6/20.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import "DleNextVC.h"

@interface DleNextVC ()

@end

@implementation DleNextVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)taskClick:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(notifText:)]) {
        NSString *finishStr = [self.delegate notifText:@"放假"];
        NSLog(@"执行完成后的回馈：%@",finishStr);
    }
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
