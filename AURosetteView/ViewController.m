//
//  ViewController.m
//  AURosetteView
//
//  Created by Emil Wojtaszek on 22.06.2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

// Controllers
#import "ViewController.h"

// Rosette
#import "AURosetteView.h"
#import "AURosetteItem.h"

@interface ViewController ()
- (void)twitterAction:(id)sender;
- (void)facebookAction:(id)sender;
- (void)mailAction:(id)sender;
@end

@implementation ViewController

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)viewDidLoad {
    [super viewDidLoad];

    UIImage* twitterImage = [UIImage imageNamed:@"/Bundle.bundle/Resources/rosetta_twitter.png"];
    UIImage* facebookImage = [UIImage imageNamed:@"/Bundle.bundle/Resources/rosetta_facebook.png"];
    UIImage* mailImage = [UIImage imageNamed:@"/Bundle.bundle/Resources/rosetta_mail.png"];


    // create rosette items
    AURosetteItem* twitterItem = [[AURosetteItem alloc] initWithNormalImage:twitterImage 
                                                             highlitedImage:nil 
                                                                     target:self 
                                                                     action:@selector(twitterAction:)];

    AURosetteItem* facebookItem = [[AURosetteItem alloc] initWithNormalImage:facebookImage 
                                                             highlitedImage:nil 
                                                                     target:self 
                                                                     action:@selector(facebookAction:)];

    AURosetteItem* mailItem = [[AURosetteItem alloc] initWithNormalImage:mailImage 
                                                             highlitedImage:nil 
                                                                     target:self 
                                                                     action:@selector(mailAction:)];

    // create rosette view
    AURosetteView* rosette = [[AURosetteView alloc] initWithItems: [NSArray arrayWithObjects: twitterItem, facebookItem, mailItem, nil]];
    [rosette setCenter:CGPointMake(100.0f, 100.0f)];
    [self.view addSubview:rosette];
    
}

#pragma mark -
#pragma mark Actions

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)twitterAction:(id)sender {
    NSLog(@"Twitter");
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)facebookAction:(id)sender {
    NSLog(@"Facebook");
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)mailAction:(id)sender {
    NSLog(@"Mail");
}

@end
