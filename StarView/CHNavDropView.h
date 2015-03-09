//
//  CHNavDropView.h
//  StarView
//
//  Created by Yang on 15/2/9.
//  Copyright (c) 2015年 Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CHNavDropViewDelegate <NSObject>

- (void)didSelectedCommunity:(NSString *)item;

@end

@interface CHNavDropView : UIView<UITableViewDataSource,UITableViewDelegate>

@property (assign, nonatomic) id<CHNavDropViewDelegate>     delegate;
@property (strong, nonatomic) UIButton                      *btnCurrent;
@property (strong, nonatomic) UITableView                   *tableView;
@property (strong, nonatomic) NSString                      *selectedItem;
@property (strong, nonatomic) UIFont                        *textFont;
@property (assign, nonatomic) BOOL                          isExpand;
@property (assign, nonatomic) BOOL                          isTitle;
@property (strong, nonatomic) NSMutableArray                *dataArray;

@end
