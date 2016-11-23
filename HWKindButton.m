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
        if(isIphone4){
            self.titleLabel.font = [UIFont systemFontOfSize:12];
        }else{
            self.titleLabel.font = [UIFont systemFontOfSize:15];
        }
        

        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
 
    }
    return self;
}


- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    if (isIphone4) {
        CGFloat imageY = self.frame.size.height*0.15;
        CGFloat imageX = 0;
        CGFloat imageW = self.frame.size.width;
        CGFloat imageH = self.frame.size.height*0.5;
        return CGRectMake(imageX, imageY, imageW, imageH);
    }else{
        CGFloat imageY = self.frame.size.height*0.15;
        CGFloat imageX = 0;
        CGFloat imageW = self.frame.size.width;
        CGFloat imageH = self.frame.size.height*0.4;
        return CGRectMake(imageX, imageY, imageW, imageH);
    }
    
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    if (isIphone4) {
        CGFloat titleY = self.frame.size.height*0.65;
        CGFloat titleX = 0;
        CGFloat titleW = self.frame.size.width;
        CGFloat titleH = self.frame.size.height*0.3;
        return CGRectMake(titleX, titleY, titleW, titleH);
    }else{
        CGFloat titleY = self.frame.size.height*0.55;
        CGFloat titleX = 0;
        CGFloat titleW = self.frame.size.width;
        CGFloat titleH = self.frame.size.height*0.3;
        return CGRectMake(titleX, titleY, titleW, titleH);
    }

}



@end
