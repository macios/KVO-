//
//  Mother.h
//  KVO-
//
//  Created by ac hu on 2018/6/20.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BaoMu.h"

//Mother指定协议
@protocol MotherProtocol<NSObject>
-(void)takeCareChild;
@end

@interface Mother : NSObject

@property(nonatomic,weak)id <MotherProtocol>delegate;
-(void)sendTakeCareChildTask;

@end
