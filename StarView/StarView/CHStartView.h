//
//  CHStartView.h
//  StarView
//
//  Created by Yang on 15/2/6.
//  Copyright (c) 2015年 Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CHStartViewDelegate <NSObject>

@optional
- (void)currentStarIndex:(NSInteger)index;

@end

@interface CHStartView : UIView{
    CGPoint singleTouchPoint;
}

@property (assign, nonatomic) NSInteger         starCount;
@property (assign, nonatomic) NSInteger         currentIndex;
@property (strong, nonatomic) NSMutableArray    *arrStars;
@property (assign, nonatomic) id<CHStartViewDelegate> delegate;

- (void)setCurrentIndex:(NSInteger)index;

@end
