//
//  SHLayoutYYLabel.m
//  YYTextDemo
//
//  Created by Ray on 2024/12/5.
//  Copyright © 2024 ibireme. All rights reserved.
//

#import "SHLayoutYYLabel.h"

@implementation SHLayoutYYLabel

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)setBounds:(CGRect)bounds {
    [super setBounds:bounds];
    self.preferredMaxLayoutWidth = bounds.size.width;
}
- (void)setText:(NSString *)text {
    [super setText:text];
    self.preferredMaxLayoutWidth = self.bounds.size.width;
}
-(void)setAttributedText:(NSAttributedString *)attributedText {
    [super setAttributedText: attributedText];
    self.preferredMaxLayoutWidth = self.bounds.size.width;
}




@end
