//
//  SHYYlTableViewCell.m
//  YYTextDemo
//
//  Created by Ray on 2024/12/5.
//  Copyright © 2024 ibireme. All rights reserved.
//

#import "SHYYlTableViewCell.h"

@implementation SHYYlTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.yyLabel.numberOfLines = 0;
    self.yyLabel.textColor = UIColor.redColor;
    self.yyLabel.font = [UIFont systemFontOfSize:16];
    self.yyLabel.dataDetectorTypes = UIDataDetectorTypeLink | NSTextCheckingTypeAddress;
    self.yyLabel.highlightTextAttributes = @{
        @"link": @"link"
    };
    
    self.yyLabel.linkTextAttributes = @{
        NSForegroundColorAttributeName: UIColor.redColor
    };
    __weak typeof(self) _self = self;
    self.yyLabel.defaultLinkTap = ^(UIView * _Nonnull containerView, NSString * _Nonnull text, NSTextCheckingType linkType) {
        switch (linkType) {
            case NSTextCheckingTypeLink:
                NSLog(@"text==%@",text);
                break;
                
            default:
                break;
        }
    };
}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
