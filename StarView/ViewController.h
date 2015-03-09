//
//  ViewController.h
//  StarView
//
//  Created by Yang on 15/2/6.
//  Copyright (c) 2015年 Yang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHStartView.h"

@interface ViewController : UIViewController<CHStartViewDelegate>


@property (strong, nonatomic) CHStartView   *starView;

@end

