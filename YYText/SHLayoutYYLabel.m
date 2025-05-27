//
//  SHLayoutYYLabel.m
//  YYTextDemo
//
//  Created by Ray on 2024/12/5.
//  Copyright © 2024 ibireme. All rights reserved.
//

#import "SHLayoutYYLabel.h"

@interface SHLayoutYYLabel ()
{
    NSDataDetector *_dataDetector;
}
@end

@implementation SHLayoutYYLabel
- (void)_setDataDetectorTypes:(UIDataDetectorTypes)dataDetectorTypes {
    if (_dataDetectorTypes == dataDetectorTypes) return;
    [self willChangeValueForKey:@"dataDetectorTypes"];
    _dataDetectorTypes = dataDetectorTypes;
    [self didChangeValueForKey:@"dataDetectorTypes"];
}
- (void)setDataDetectorTypes:(UIDataDetectorTypes)dataDetectorTypes {
    if (_dataDetectorTypes == dataDetectorTypes) return;
    [self _setDataDetectorTypes:dataDetectorTypes];
    NSTextCheckingType type = YYTextNSTextCheckingTypeFromUIDataDetectorType(dataDetectorTypes);
    _dataDetector = type ? [NSDataDetector dataDetectorWithTypes:type error:NULL] : nil;
//    [self _resetUndoAndRedoStack];
//    [self _commitUpdate];
    
}
- (NSMutableAttributedString *)detectText: (NSMutableAttributedString * )content {
    NSMutableAttributedString * text = content.mutableCopy;
    if (text.length == 0) return text;
    __block BOOL detected = NO;
    [_dataDetector enumerateMatchesInString:text.string options:kNilOptions range:NSMakeRange(0, text.length) usingBlock: ^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
        switch (result.resultType) {
            case NSTextCheckingTypeDate:
            case NSTextCheckingTypeAddress:
            case NSTextCheckingTypeLink:
            case NSTextCheckingTypePhoneNumber: {
                detected = YES;
                
                if (_highlightTextAttributes.count) {
                    YYTextHighlight *highlight = [YYTextHighlight highlightWithAttributes:_highlightTextAttributes];
                    __weak typeof(self) _self = self;
                    highlight.tapAction = ^(UIView * _Nonnull containerView, NSAttributedString * _Nonnull text, NSRange range, CGRect rect) {
                        NSString * textNew = [text.string substringWithRange:range];
                        _self.defaultLinkTap(containerView, textNew, result.resultType);
                    };
                    [text yy_setTextHighlight:highlight range:result.range];
                }
                if (_linkTextAttributes.count) {
                    [_linkTextAttributes enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
                        [text yy_setAttribute:key value:obj range:result.range];
                    }];
                }
            } break;
            default:
                break;
        }
    }];
    return text;
}



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
