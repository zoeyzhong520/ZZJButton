//
//  ZZJButton.h
//  ZZJButton
//
//  Created by zhifu360 on 2019/4/9.
//  Copyright © 2019 ZZJ. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, ZZJButtonCustomStyle) {
    ZZJButtonCustomStyle_Normal = 0,
    ZZJButtonCustomStyle_PicTop,
    ZZJButtonCustomStyle_PicLeft,
    ZZJButtonCustomStyle_PicBottom,
    ZZJButtonCustomStyle_PicRight
};

@interface ZZJButton : UIButton

///图片位置样式
@property (nonatomic, assign) ZZJButtonCustomStyle customStyle;
///图片、文字间距
@property (nonatomic, assign) CGFloat customSpace;

@end

NS_ASSUME_NONNULL_END
