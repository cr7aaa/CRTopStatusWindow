//
//  CRTopWindow.m
//  CRTopStatusWindow
//
//  Created by lyw on 16/5/25.
//  Copyright © 2016年 lyw. All rights reserved.
//

#import "CRTopWindow.h"
#import <UIKit/UIKit.h>
#import "CRTopViewController.h"


@implementation CRTopWindow

static UIWindow * topWindow;

+ (void)initialize {

    topWindow = [[UIWindow alloc]init];
    topWindow.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 20);
    topWindow.windowLevel = UIWindowLevelAlert;
    [topWindow makeKeyWindow];
    
    CRTopViewController * topVc = [[CRTopViewController alloc]init];
    topWindow.rootViewController = topVc;
    
    topWindow.backgroundColor = [UIColor clearColor];
}

+ (void)show {

    topWindow.hidden = NO;
}

+ (void)hide {

    topWindow.hidden = YES;
    
}


@end
