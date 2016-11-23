//
//  SWMyButton.m
//  button
//
//  Created by kuanter on 16/4/26.
//  Copyright © 2016年 kuanter. All rights reserved.
//

#import "SWMyButton.h"
#import "Masonry.h"
@interface SWMyButton ()
@property(nonatomic,strong)UILabel*shangL;
@property(nonatomic,strong)UILabel*xiaL;
@property(nonatomic,strong)UIImageView*leftImageV;
@end

@implementation SWMyButton
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUI];
    }
    return self;
}
-(void)setUI{
    UIImageView*leftImageV=[[UIImageView alloc] init];
    [self addSubview:leftImageV];
    _leftImageV=leftImageV;
    
    UILabel*shangL=[[UILabel alloc] init];
    shangL.textAlignment=NSTextAlignmentCenter;
    [self addSubview:shangL];
    shangL.font = [UIFont systemFontOfSize:18];
    _shangL=shangL;
    
    
    
    
    UILabel*xiaL=[[UILabel alloc] init];
    [self addSubview:xiaL];
    xiaL.textAlignment=NSTextAlignmentCenter;
    xiaL.font=[UIFont systemFontOfSize:15];
    xiaL.textColor=[UIColor grayColor];
    _xiaL=xiaL;
    
    __weak typeof(self) weakSelf=self;
    //左图片
    [leftImageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(weakSelf.bounds.size.height*0.5, weakSelf.bounds.size.height*0.5));
        make.centerX.mas_equalTo(weakSelf.mas_centerX);
        make.top.mas_equalTo(weakSelf.mas_top);
    }];
    
    
    [shangL mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.mas_equalTo(weakSelf.mas_left);
        make.right.mas_equalTo(weakSelf.mas_right);
        make.top.mas_equalTo(leftImageV.mas_bottom);
        make.height.mas_equalTo(weakSelf.bounds.size.height*0.3);
        
    }];
    
    [xiaL mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.mas_equalTo(weakSelf.mas_left);
        make.right.mas_equalTo(weakSelf.mas_right);
        make.top.mas_equalTo(shangL.mas_bottom);
        make.height.mas_equalTo(weakSelf.bounds.size.height*0.2);
        
    }];
    
}
-(void)setDic:(NSDictionary *)dic{
    _leftImageV.image=[UIImage imageNamed:[dic objectForKey:@"leftI"]];
    _shangL.text=[dic objectForKey:@"shangL"];
    _xiaL.text=[dic objectForKey:@"xiaL"];
    _xiaL.text=@"fafsdff";
    
}

@end
