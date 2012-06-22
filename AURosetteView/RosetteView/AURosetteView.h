//
//  AURosetteView.h
//
//  Created by Emil Wojtaszek on 22.06.2012.
//

//Framework
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

//Others
#import "AURosetteItem.h"

@protocol AURosetteViewDelegate;

@interface AURosetteView : UIView <UIGestureRecognizerDelegate> {
    NSArray* _items;
    
    NSMutableArray* _leavesLayers;
    NSMutableArray* _imagesLayers;
    
    UITapGestureRecognizer* _tapGestureRecognizer;
}

/*
 * Keep center button used to fire expand/fold animation.
 */
@property (nonatomic, strong) UIButton* wheelButton;    

/*
 * Default NO.
 */
@property (nonatomic, assign, getter = isOn) BOOL on;

- (id)initWithItems:(NSArray*)items;

- (void)setOn:(BOOL)on animated:(BOOL)animated;
- (void)toggleWithAnimation:(BOOL)animated;
@end
