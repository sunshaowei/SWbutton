//
//  SWHomeButton.m
//  button
//
//  Created by kuanter on 16/4/21.
//  Copyright © 2016年 kuanter. All rights reserved.
//

#import "SWHomeButton.h"
#import "Masonry.h"
@interface SWHomeButton ()
@property(nonatomic,strong)UILabel*shangL;
@property(nonatomic,strong)UILabel*xiaL;
@property(nonatomic,strong)UIImageView*leftImageV;
@end

@implementation SWHomeButton

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
    [self addSubview:shangL];
    shangL.font = [UIFont systemFontOfSize:18];
    _shangL=shangL;
    
    
    
    
    UILabel*xiaL=[[UILabel alloc] init];
    [self addSubview:xiaL];
    xiaL.font=[UIFont systemFontOfSize:15];
    xiaL.textColor=[UIColor grayColor];
    _xiaL=xiaL;
    
    __weak typeof(self) weakSelf=self;
    //左图片
    [leftImageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(weakSelf.bounds.size.height*0.6, weakSelf.bounds.size.height*0.6));
        make.centerY.mas_equalTo(weakSelf.mas_centerY);
        make.left.mas_equalTo(weakSelf.mas_left).offset(10);
    }];
    
    
    [shangL mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.left.mas_equalTo(leftImageV.mas_right).offset(10);
        make.right.mas_equalTo(weakSelf.mas_right);
        make.top.mas_equalTo(leftImageV.mas_top);
        make.height.mas_equalTo(weakSelf.bounds.size.height*0.3);
        
    }];
    
    [xiaL mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.mas_equalTo(leftImageV.mas_right).offset(10);
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













