//
//  CMViewController.m
//  sdkdemo
//
//  Created by Moyun on 08/28/2016.
//  Copyright (c) 2016 Moyun. All rights reserved.
//

#import "CMViewController.h"
#import "CMPopupView.h"

@interface CMViewController ()

@property (strong, nonatomic) CMPopupView *popUp;

@end

@implementation CMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width-40, 20)];
        label.text = @"资源下载提示";
        label.textAlignment = NSTextAlignmentCenter;
        
        self.popUp = [[CMPopupView alloc] initWithContentViews:@[label]];
        [self.popUp presentPopupControllerAnimated:true];
    });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
