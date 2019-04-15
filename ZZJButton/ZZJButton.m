//
//  ZZJButton.m
//  ZZJButton
//
//  Created by zhifu360 on 2019/4/9.
//  Copyright © 2019 ZZJ. All rights reserved.
//

#import "ZZJButton.h"

@implementation ZZJButton

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.customSpace = self.customSpace ? self.customSpace : 5;
    
    switch (self.customStyle) {
        case ZZJButtonCustomStyle_PicTop://图片在上
            [self configZZJButtonCustomStyle_PicTop];
            break;
        case ZZJButtonCustomStyle_PicLeft://图片在左
            [self configZZJButtonCustomStyle_PicLeft];
            break;
        case ZZJButtonCustomStyle_PicBottom://图片在下
            [self configZZJButtonCustomStyle_PicBottom];
            break;
        case ZZJButtonCustomStyle_PicRight://图片在右
            [self configZZJButtonCustomStyle_PicRight];
            break;
        default:
            break;
    }
    
}

///图片在上
- (void)configZZJButtonCustomStyle_PicTop {
    [self.titleLabel sizeToFit];
    CGRect labelFrame = self.titleLabel.frame;
    
    [self.imageView sizeToFit];
    CGRect imageFrame = self.imageView.frame;
    
    imageFrame.origin.x = (self.frame.size.width - self.imageView.frame.size.width)*0.5;
    imageFrame.origin.y = (self.frame.size.height - self.imageView.frame.size.height - self.titleLabel.frame.size.height - self.customStyle)*0.5;
    self.imageView.frame = imageFrame;
    
    labelFrame.origin.x = (self.frame.size.width - self.titleLabel.frame.size.width)*0.5;
    labelFrame.origin.y = self.imageView.frame.origin.y + self.customSpace + self.imageView.frame.size.height;
    self.titleLabel.frame = labelFrame;
}

///图片在左
- (void)configZZJButtonCustomStyle_PicLeft {
    [self.titleLabel sizeToFit];
    CGRect labelFrame = self.titleLabel.frame;
    
    [self.imageView sizeToFit];
    CGRect imageFrame = self.imageView.frame;
    
    imageFrame.origin.y = (self.frame.size.height - self.imageView.frame.size.height)*0.5;
    imageFrame.origin.x = (self.frame.size.width - self.imageView.frame.size.width - self.customSpace - self.titleLabel.frame.size.width)*0.5;
    self.imageView.frame = imageFrame;
    
    labelFrame.origin.y = (self.frame.size.height - self.titleLabel.frame.size.height)*0.5;
    labelFrame.origin.x = (self.imageView.frame.origin.x + self.imageView.frame.size.width + self.customSpace);
    self.titleLabel.frame = labelFrame;
    
}

///图片在下
- (void)configZZJButtonCustomStyle_PicBottom {
    [self.titleLabel sizeToFit];
    CGRect labelFrame = self.titleLabel.frame;
    
    [self.imageView sizeToFit];
    CGRect imageFrame = self.imageView.frame;
    
    labelFrame.origin.x = (self.frame.size.width - self.titleLabel.frame.size.width)*0.5;
    labelFrame.origin.y = (self.frame.size.height - self.titleLabel.frame.size.height - self.customSpace - self.imageView.frame.size.height)*0.5;
    self.titleLabel.frame = labelFrame;
    
    imageFrame.origin.x = (self.frame.size.width - self.imageView.frame.size.width)*0.5;
    imageFrame.origin.y = (self.titleLabel.frame.origin.y + self.titleLabel.frame.size.height + self.customSpace);
    self.imageView.frame = imageFrame;
    
}

///图片在右
- (void)configZZJButtonCustomStyle_PicRight {
    [self.titleLabel sizeToFit];
    CGRect labelFrame = self.titleLabel.frame;
    
    [self.imageView sizeToFit];
    CGRect imageFrame = self.imageView.frame;
    
    labelFrame.origin.x = (self.frame.size.width - self.titleLabel.frame.size.width - self.customSpace - self.imageView.frame.size.width)*0.5;
    labelFrame.origin.y = (self.frame.size.height - self.titleLabel.frame.size.height)*0.5;
    self.titleLabel.frame = labelFrame;
    
    imageFrame.origin.x = (self.titleLabel.frame.origin.x + self.titleLabel.frame.size.width + self.customSpace);
    imageFrame.origin.y = (self.frame.size.height - self.imageView.frame.size.height)*0.5;
    self.imageView.frame = imageFrame;
}

@end
