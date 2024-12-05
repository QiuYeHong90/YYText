//
//  SHYYLabel.m
//  YYTextDemo
//
//  Created by Ray on 2024/12/5.
//  Copyright © 2024 ibireme. All rights reserved.
//

#import "SHYYLabel.h"

@implementation SHYYLabel

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/



- (CGSize)systemLayoutSizeFittingSize:(CGSize)targetSize withHorizontalFittingPriority:(UILayoutPriority)horizontalFittingPriority verticalFittingPriority:(UILayoutPriority)verticalFittingPriority
{

    CGSize size = [super systemLayoutSizeFittingSize:targetSize withHorizontalFittingPriority:horizontalFittingPriority verticalFittingPriority:verticalFittingPriority];
    
    
    NSLog(@"systemLayoutSizeFittingSize targetSize1----%@",NSStringFromCGSize(targetSize));
    return  size;
}






@end
