//
//  DleNextVC.h
//  KVO-
//
//  Created by ac hu on 2018/6/20.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DleNextVCProtocol <NSObject>
-(NSString *)notifText:(NSString *)str;
@end

@interface DleNextVC : UIViewController
@property(nonatomic,weak)id <DleNextVCProtocol>delegate;
@end
