//
//  ViewController.m
//  UILabelColor
//
//  Created by luo.h on 15/11/5.
//  Copyright © 2015年 l.h. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+ColorText.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor blackColor];

    NSString *text=@"一卡通公司基于安卓平台开发的“北京一卡通”官方App正式上线。该款App是一卡通公司倾力打造的一站式在线服务平台，集手机充值、快充券购买、网点查询等多重功能于一体，像掌上管家一样，随时随地满足每一位持卡用户的在线服务需求。安卓手机用户可在各大应用市场搜索“北京一卡通”，免费下载使用。";
    
    // Colors
    UILabel *labelC = [[UILabel alloc] init];
    [labelC setFrame:CGRectMake(0, 0, self.view.frame.size.width, floorf(self.view.frame.size.height / 3))];
    [labelC setBackgroundColor:[UIColor clearColor]];
    [labelC setTextAlignment:NSTextAlignmentCenter];
    [labelC setText:text];
    [labelC setNumberOfLines:2];
    [labelC setTextColor:[UIColor yellowColor]];
    [labelC setFont:[UIFont fontWithName:@"Courier" size:16]];
    [labelC setTextColor:[UIColor redColor] range:NSMakeRange(20, 3)];
    [labelC setTextColor:[UIColor cyanColor] range:NSMakeRange(28, 4)];
    [labelC setTextUnderLine:[UIColor redColor] range:NSMakeRange(10, 6)];
    [self.view addSubview:labelC];
    
    // Fonts
    UILabel *labelF = [[UILabel alloc] init];
    [labelF setFrame:CGRectMake(0, floorf(self.view.frame.size.height / 4), self.view.frame.size.width, floorf(self.view.frame.size.height / 3))];
    [labelF setBackgroundColor:[UIColor clearColor]];
    [labelF setTextAlignment:NSTextAlignmentCenter];
    [labelF setText:text];
    [labelF setNumberOfLines:4];
    [labelF setTextColor:[UIColor cyanColor]];
    [labelF setFont:[UIFont fontWithName:@"Courier" size:16]];
    [labelF setTextColor:[UIColor redColor] String:@"网点查询"];
    [labelF addImgAttachment:[UIImage imageNamed:@"001"] size:CGSizeMake(30, 30) range:NSMakeRange(5, 0)];
    [labelF addImgAttachment:[UIImage imageNamed:@"001"] size:CGSizeMake(30, 30) range:NSMakeRange(22, 0)];
    [labelF setFont:[UIFont systemFontOfSize:20] WithtColor:[UIColor orangeColor] substring:@"在线服务需求"];
    [self.view addSubview:labelF];
    
    
    // Colors AND Fonts
    UILabel *labelCF = [[UILabel alloc] init];
    [labelCF setFrame:CGRectMake(0, floorf(self.view.frame.size.height * 2 / 4), self.view.frame.size.width, floorf(self.view.frame.size.height / 3))];
    [labelCF setBackgroundColor:[UIColor clearColor]];
    [labelCF setTextAlignment:NSTextAlignmentCenter];
    [labelCF setText:text];
    [labelCF setNumberOfLines:2];
    [labelCF setTextColor:[UIColor yellowColor]];
    [labelCF setFont:[UIFont fontWithName:@"Courier" size:16]];
    [labelCF setTextColor:[UIColor purpleColor] range:NSMakeRange(20, 8)];
    [labelCF setFont:[UIFont fontWithName:@"Courier-Bold" size:14] range:NSMakeRange(20, 8)];
    [labelCF setTextColor:[UIColor cyanColor] range:NSMakeRange(33, 11)];
    [labelCF setFont:[UIFont fontWithName:@"Courier-Oblique" size:14] range:NSMakeRange(33, 11)];
    [self.view addSubview:labelCF];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
