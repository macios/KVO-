//
//  KVOVC.m
//  KVO-
//
//  Created by ac hu on 2018/6/20.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import "KVOVC.h"
#import "PerSon.h"

@interface KVOVC ()
@property(nonatomic,strong)PerSon *p;
@end

@implementation KVOVC

- (void)viewDidLoad {
    [super viewDidLoad];
    _p = [PerSon new];
    //系统使用观察者方法
    [_p addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
    _p.name = @"小明";
    
    //观察可变数组时需要
//    [self mutableArrayValueForKey:@"allPhotoArr"];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    NSLog(@"keyPath:%@ change:%@",keyPath,[change objectForKey:@"new"]);
}

-(void)dealloc{
    //需要移除观察者
    [_p removeObserver:self forKeyPath:@"name"];
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
