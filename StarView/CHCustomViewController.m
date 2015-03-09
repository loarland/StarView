//
//  CHCustomViewController.m
//  StarView
//
//  Created by Yang on 15/2/9.
//  Copyright (c) 2015年 Yang. All rights reserved.
//

#import "CHCustomViewController.h"

@interface CHCustomViewController ()

@end

@implementation CHCustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.navigationBar.backgroundColor = [UIColor colorWithRed:220 green:86 blue:124 alpha:0.9];
//    [self.navigationBar setBackgroundImage:[UIImage imageWithColor:[UIColor colorWithRed:220 green:86 blue:124 alpha:0.9] rect:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64)] forBarMetrics:UIBarMetricsDefault];
//    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageWithColor:[UIColor colorWithRed:220 green:86 blue:124 alpha:0.9] rect:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64)] forBarMetrics:UIBarMetricsDefault];
    self.view.backgroundColor = [UIColor whiteColor];
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

@implementation UIImage (CS_Extensions)

+ (UIImage *)imageWithColor:(UIColor *)color rect:(CGRect)rect{
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}
@end
