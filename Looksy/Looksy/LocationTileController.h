//
//  LocationTileController.h
//  Looksy
//
//  Created by Miran Badzak on 3/3/14.
//  Copyright (c) 2014 Looksy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LocationTileController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *logoView;
@property (weak, nonatomic) IBOutlet UILabel *headingView;
@property (weak, nonatomic) IBOutlet UILabel *subheadingView;
@property (weak, nonatomic) IBOutlet UITextView *loveLabelView;
@property (weak, nonatomic) IBOutlet UIImageView *loveIconView;
@property (weak, nonatomic) IBOutlet UIImageView *signalStrengthView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;

- (void)setLogoImage:(UIImage *)image;
- (void)setHeadingText:(NSString *)heading;


@end
