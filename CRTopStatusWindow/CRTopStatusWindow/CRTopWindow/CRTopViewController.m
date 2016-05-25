//
//  CRTopViewController.m
//  CRTopStatusWindow
//
//  Created by lyw on 16/5/25.
//  Copyright © 2016年 lyw. All rights reserved.
//

#import "CRTopViewController.h"

@interface CRTopViewController ()

@end

@implementation CRTopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [self searchScrollViewInView:window];
    
}
- (void)searchScrollViewInView:(UIView *)superview {
    
    for (UIScrollView *subview in superview.subviews) {
        // 如果是scrollview, 滚动最顶部
        if ([subview isKindOfClass:[UIScrollView class]] & [self isShowingOnKeyWindow: subview]) {
            CGPoint offset = subview.contentOffset;
            offset.y = - subview.contentInset.top;
            [subview setContentOffset:offset animated:YES];
        }
        
        // 递归继续查找子控件
        [self searchScrollViewInView:subview];
    }
}
- (BOOL)isShowingOnKeyWindow:(UIView *)view {
    // 主窗口
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    // 以主窗口左上角为坐标原点, 计算self的矩形框
    CGRect newFrame = [keyWindow convertRect:view.frame fromView:view.superview];
    CGRect winBounds = keyWindow.bounds;
    // 主窗口的bounds 和 self的矩形框 是否有重叠
    BOOL intersects = CGRectIntersectsRect(newFrame, winBounds);
    
    return !view.isHidden & (view.alpha > 0.01) && view.window == keyWindow && intersects;
}

- (BOOL)prefersStatusBarHidden {
    
    return NO;

}


@end
