//
//  CHCustomViewController.h
//  StarView
//
//  Created by Yang on 15/2/9.
//  Copyright (c) 2015年 Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CHCustomViewController : UINavigationController

@end

@interface UIImage (CS_Extensions)
/**
 *  根据颜色和区域生成图片
 *
 *  @param color 颜色
 *  @param rect  区域
 *
 *  @return 图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color rect:(CGRect)rect;
@end
