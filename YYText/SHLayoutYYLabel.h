//
//  SHLayoutYYLabel.h
//  YYTextDemo
//
//  Created by Ray on 2024/12/5.
//  Copyright © 2024 ibireme. All rights reserved.
//
#import "YYText.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^SHLinkTypeYYTextAction)(UIView *containerView, NSString *text, NSTextCheckingType linkType);
@interface SHLayoutYYLabel : YYLabel
/**
 The attributes to apply to links at highlight state. Default is a gray border.
 When a range of text is detected by the `dataDetectorTypes` and the range was touched by user,
 this value would be used to modify the original attributes in the range.
 */
@property (nullable, nonatomic, copy) NSDictionary<NSString *, id> *highlightTextAttributes;
/**
 The attributes to apply to links at normal state. Default is light blue color.
 When a range of text is detected by the `dataDetectorTypes`, this value would be
 used to modify the original attributes in the range.
 */
@property (nullable, nonatomic, copy) NSDictionary<NSString *, id> *linkTextAttributes;
@property (nullable, nonatomic, copy) SHLinkTypeYYTextAction defaultLinkTap;

@property (nonatomic) UIDataDetectorTypes dataDetectorTypes;
- (NSMutableAttributedString *)detectText: (NSMutableAttributedString * )content;




@end

NS_ASSUME_NONNULL_END
