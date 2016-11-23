//
//  ViewController.m
//  button
//
//  Created by kuanter on 16/4/21.
//  Copyright © 2016年 kuanter. All rights reserved.
//

#import "ViewController.h"
#import "HWKindButton.h"
#import "SWHomeButton.h"
#import "Masonry.h"
#import "SWMyButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];//button的类型
    button.frame = CGRectMake(100, 100,90, 90);//button的frame
    button.backgroundColor = [UIColor cyanColor];//button的背景颜色
    
    //    [button setBackgroundImage:[UIImage imageNamed:@"man_64.png"] forState:UIControlStateNormal];
    
    //    在UIButton中有三个对EdgeInsets的设置：ContentEdgeInsets、titleEdgeInsets、imageEdgeInsets
    [button setImage:[UIImage imageNamed:@"qqq.png"] forState:UIControlStateNormal];//给button添加image
    button.imageEdgeInsets = UIEdgeInsetsMake(5,13,21,button.titleLabel.bounds.size.width);//设置image在button上的位置（上top，左left，下bottom，右right）这里可以写负值，对上写－5，那么image就象上移动5个像素
    
    [button setTitle:@"首页" forState:UIControlStateNormal];//设置button的title
    button.titleLabel.font = [UIFont systemFontOfSize:16];//title字体大小
    button.titleLabel.textAlignment = NSTextAlignmentCenter;//设置title的字体居中
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];//设置title在一般情况下为白色字体
    [button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];//设置title在button被选中情况下为灰色字体
    button.titleEdgeInsets = UIEdgeInsetsMake(71, -button.titleLabel.bounds.size.width-50, 0, 0);//设置title在button上的位置（上top，左left，下bottom，右right）
    
    //    [button setContentEdgeInsets:UIEdgeInsetsMake(70, 0, 0, 0)];//
    
    
    //   button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;//设置button的内容横向居中。。设置content是title和image一起变化
    
    
//    [button addTarget:self action:@selector(tap) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    
    [self.view addSubview:button];
    
   }
-(void)buttonEvent{
 NSLog(@"====%s==========%@",__func__,@"");
}
@end
