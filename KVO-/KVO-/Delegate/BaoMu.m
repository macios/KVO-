//
//  BaoMu.m
//  KVO-
//
//  Created by ac hu on 2018/6/20.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import "BaoMu.h"

@implementation BaoMu
//签订协议
-(void)receive{
    Mother *mother = [[Mother alloc] init];
    mother.delegate = self;
    [mother sendTakeCareChildTask];
}

-(void)takeCareChild{
    NSLog(@"我会看孩子");
}
@end
