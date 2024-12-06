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




- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
