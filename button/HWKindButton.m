//
//  HWKindButton.m
//  tg
//
//  Created by skywakerwei on 14/11/27.
//  Copyright (c) 2014年 skywakerwei. All rights reserved.
//

#import "HWKindButton.h"



@implementation HWKindButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 高亮的时候不要自动调整图标
        self.adjustsImageWhenHighlighted = NO;
        self.userInteractionEnabled = YES;
        
        self.imageView.contentMode = UIViewContentModeBottom;
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.font = [UIFont systemFontOfSize:15];
        
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    return self;
}


- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
        CGFloat imageY = 5;
        CGFloat imageX = self.frame.size.width-30;
        CGFloat imageW = 25;
        CGFloat imageH = 25;
        return CGRectMake(imageX, imageY, imageW, imageH);
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
   
        CGFloat titleY = 0;
        CGFloat titleX = 5;
        CGFloat titleW = self.frame.size.width-30;
        CGFloat titleH = self.frame.size.height;
        return CGRectMake(titleX, titleY, titleW, titleH);

}



@end
