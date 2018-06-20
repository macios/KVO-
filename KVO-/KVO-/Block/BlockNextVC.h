//
//  BlockNextVC.h
//  KVO-
//
//  Created by ac hu on 2018/6/20.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BlockNextVC : UIViewController
@property(nonatomic,weak)void (^blcok)(NSString *str);
@end
