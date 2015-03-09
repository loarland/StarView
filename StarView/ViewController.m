//
//  ViewController.m
//  StarView
//
//  Created by Yang on 15/2/6.
//  Copyright (c) 2015年 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    UILabel *label;
}
@property (strong, nonatomic) IBOutlet CHStartView *starView2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    _starView = [[CHStartView alloc]initWithFrame:CGRectMake(200, 400, 300, 85)];
    _starView.starCount = 5;
    _starView.delegate = self;
    [self.view addSubview:_starView];
    
    
    
    label = [[UILabel alloc]initWithFrame:CGRectMake(200, 500, 300, 25)];
    label.textColor = [UIColor blueColor];
    label.font = [UIFont boldSystemFontOfSize:20];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"0";
    [self.view addSubview:label];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    _starView2.starCount = 6;
    _starView2.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)currentStarIndex:(NSInteger)index{
    label.text = [NSString stringWithFormat:@"%ld",(long)index];
}

@end
