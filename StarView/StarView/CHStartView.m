//
//  CHStartView.m
//  StarView
//
//  Created by Yang on 15/2/6.
//  Copyright (c) 2015年 Yang. All rights reserved.
//

#import "CHStartView.h"

#define kImg_empty_star [UIImage imageNamed:@"empty_star"]
#define kImg_fill_star [UIImage imageNamed:@"fill_star"]

#define kWidth self.frame.size.width
#define kHeight self.frame.size.height

@implementation CHStartView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)awakeFromNib{

}

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)setStarCount:(NSInteger)starCount{
    if (starCount<5) {
        _starCount = 5;
    }else{
        _starCount = starCount;
    }
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    if (height>width/_starCount) {
        height = width/_starCount;
    }
    _arrStars = [NSMutableArray array];
    _currentIndex = 0;
    for (UIView *subview in self.subviews) {
        [subview removeFromSuperview];
    }
    for (int i = 0; i<_starCount; i++) {
        UIImageView *starImg = [[UIImageView alloc]initWithFrame:CGRectMake(width/_starCount*i, 0, width/_starCount, height)];
        starImg.image = kImg_empty_star;
        starImg.userInteractionEnabled = YES;
        [_arrStars addObject:starImg];
        [self addSubview:starImg];
    }
}

- (void)setCurrentIndex:(NSInteger)index{
    if (index>_starCount || index<0) {
        return;
    }
    _currentIndex = index;
    if ([_delegate respondsToSelector:@selector(currentStarIndex:)]) {
        [_delegate currentStarIndex:index];
    }
    for (UIImageView *starImg in _arrStars) {
        NSInteger starIndex = [_arrStars indexOfObject:starImg];
        if (starIndex<index) {
            starImg.image = kImg_fill_star;
        }else{
            starImg.image = kImg_empty_star;
        }
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    NSInteger starWidth = lrint(kWidth/_starCount);
    NSInteger i = (int)(point.x/starWidth);
    NSInteger j = (int)point.x % starWidth;
    [self setCurrentIndex:(i+ (j>0?1:0))];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    NSInteger starWidth = lrint(kWidth/_starCount);
    NSInteger i = (int)(point.x/starWidth);
    NSInteger j = (int)point.x % starWidth;
    [self setCurrentIndex:(i+ (j>0?1:0))];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
}

@end
