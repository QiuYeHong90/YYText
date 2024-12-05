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
    
}

-(CGSize)intrinsicContentSize {
    CGSize size = [super intrinsicContentSize];
    NSLog(@"intrinsicContentSize----%@",NSStringFromCGSize(size));
    return  size;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)targetSize withHorizontalFittingPriority:(UILayoutPriority)horizontalFittingPriority verticalFittingPriority:(UILayoutPriority)verticalFittingPriority
{
    self.yyLabel.preferredMaxLayoutWidth = targetSize.width;
    CGSize size = [super systemLayoutSizeFittingSize:targetSize withHorizontalFittingPriority:horizontalFittingPriority verticalFittingPriority:verticalFittingPriority];
    NSLog(@"systemLayoutSizeFittingSize targetSize----%@",NSStringFromCGSize(targetSize));
    return  size;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
