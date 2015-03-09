//
//  CHNavDropView.m
//  StarView
//
//  Created by Yang on 15/2/9.
//  Copyright (c) 2015年 Yang. All rights reserved.
//

#import "CHNavDropView.h"

@implementation CHNavDropView

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)initUI{
    _btnCurrent = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnCurrent.frame = CGRectMake(0, 0, self.frame.size.width, 44);
    _btnCurrent.backgroundColor = [UIColor clearColor];
    
}








@end
