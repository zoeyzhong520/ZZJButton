//
//  ViewController.m
//  ZZJButton
//
//  Created by zhifu360 on 2019/4/9.
//  Copyright © 2019 ZZJ. All rights reserved.
//

#import "ViewController.h"
#import "ZZJButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ZZJButton *picTop = [[ZZJButton alloc] initWithFrame:CGRectMake(10, 100, 100, 60)];
    picTop.customStyle = ZZJButtonCustomStyle_PicTop;
    [picTop setImage:[UIImage imageNamed:@"我的车辆"] forState:UIControlStateNormal];
    [picTop setTitle:@"我是按钮" forState:UIControlStateNormal];
    [picTop setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    picTop.titleLabel.font = [UIFont systemFontOfSize:14];
    picTop.layer.borderWidth = 1;
    picTop.layer.borderColor = [UIColor lightGrayColor].CGColor;
    [self.view addSubview:picTop];
    
    ZZJButton *picLeft = [[ZZJButton alloc] initWithFrame:CGRectMake(CGRectGetMaxX(picTop.frame)+10, 100, 100, 60)];
    picLeft.customStyle = ZZJButtonCustomStyle_PicLeft;
    [picLeft setImage:[UIImage imageNamed:@"我的车辆"] forState:UIControlStateNormal];
    [picLeft setTitle:@"我是按钮" forState:UIControlStateNormal];
    [picLeft setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    picLeft.titleLabel.font = [UIFont systemFontOfSize:14];
    picLeft.layer.borderWidth = 1;
    picLeft.layer.borderColor = [UIColor lightGrayColor].CGColor;
    [self.view addSubview:picLeft];
    
    ZZJButton *picBottom = [[ZZJButton alloc] initWithFrame:CGRectMake(10, CGRectGetMaxY(picTop.frame)+10, 100, 60)];
    picBottom.customStyle = ZZJButtonCustomStyle_PicBottom;
    [picBottom setImage:[UIImage imageNamed:@"我的车辆"] forState:UIControlStateNormal];
    [picBottom setTitle:@"我是按钮" forState:UIControlStateNormal];
    [picBottom setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    picBottom.titleLabel.font = [UIFont systemFontOfSize:14];
    picBottom.layer.borderWidth = 1;
    picBottom.layer.borderColor = [UIColor lightGrayColor].CGColor;
    [self.view addSubview:picBottom];
    
    ZZJButton *picRight = [[ZZJButton alloc] initWithFrame:CGRectMake(CGRectGetMaxX(picBottom.frame)+10, CGRectGetMaxY(picLeft.frame)+10, 100, 60)];
    picRight.customStyle = ZZJButtonCustomStyle_PicRight;
    [picRight setImage:[UIImage imageNamed:@"我的车辆"] forState:UIControlStateNormal];
    [picRight setTitle:@"我是按钮" forState:UIControlStateNormal];
    [picRight setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    picRight.titleLabel.font = [UIFont systemFontOfSize:14];
    picRight.layer.borderWidth = 1;
    picRight.layer.borderColor = [UIColor lightGrayColor].CGColor;
    [self.view addSubview:picRight];
 
    ZZJButton *picNormal = [[ZZJButton alloc] initWithFrame:CGRectMake(10, CGRectGetMaxY(picBottom.frame)+10, 100, 60)];
    picNormal.customStyle = ZZJButtonCustomStyle_Normal;
    [picNormal setImage:[UIImage imageNamed:@"我的车辆"] forState:UIControlStateNormal];
    [picNormal setTitle:@"我是按钮" forState:UIControlStateNormal];
    [picNormal setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    picNormal.titleLabel.font = [UIFont systemFontOfSize:14];
    picNormal.layer.borderWidth = 1;
    picNormal.layer.borderColor = [UIColor lightGrayColor].CGColor;
    [self.view addSubview:picNormal];
    
}


@end
