//
//  AURosetteItem.m
//
//  Created by Emil Wojtaszek on 22.06.2012.
//

#import "AURosetteItem.h"

@implementation AURosetteItem
@synthesize action = _action;
@synthesize target = _target;
@synthesize normalImage =_normalImage;
@synthesize highlitedImage = _highlitedImage;

////////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithNormalImage:(UIImage *)normalImage highlitedImage:(UIImage *)highlitedImage target:(id)target action:(SEL)action {
    self = [super init];
    if (self) {
        _action = action;
        _target = target;
        _normalImage = normalImage;
        _highlitedImage = highlitedImage;
    }
    return self;
}

@end
