//
//  AURosetteItem.h
//
//  Created by Emil Wojtaszek on 22.06.2012.
//

//Frameworks
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface AURosetteItem : NSObject

@property (nonatomic) SEL action;
@property (nonatomic, assign) id target;
@property (nonatomic, strong) UIImage* normalImage;
@property (nonatomic, strong) UIImage* highlightedImage;

- (id)initWithNormalImage:(UIImage *)normalImage highlightedImage:(UIImage *)highlightedImage target:(id)target action:(SEL)action;

@end
