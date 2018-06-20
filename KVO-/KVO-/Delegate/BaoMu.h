//
//  BaoMu.h
//  KVO-
//
//  Created by ac hu on 2018/6/20.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mother.h"

//保姆遵守mother指定的协议-即照顾孩子
@interface BaoMu : NSObject<MotherProtocol>

//接受协议
-(void)receive;
@end
