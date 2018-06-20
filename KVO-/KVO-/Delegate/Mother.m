//
//  Mother.m
//  KVO-
//
//  Created by ac hu on 2018/6/20.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import "Mother.h"

@implementation Mother
-(void)sendTakeCareChildTask{
    if ([self.delegate respondsToSelector:@selector(takeCareChild)]) {
        [self.delegate takeCareChild];
    }
    
}

@end
