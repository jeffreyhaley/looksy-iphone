//
//  LocationTileController.m
//  Looksy
//
//  Created by Miran Badzak on 3/3/14.
//  Copyright (c) 2014 Looksy. All rights reserved.
//

#import "LocationTileController.h"

@interface LocationTileController ()

@end

@implementation LocationTileController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.view.layer.cornerRadius = 6;
        self.view.layer.masksToBounds = YES;
        self.view.layer.borderColor =
            [UIColor colorWithRed:242.0f/255.0f green:242.0f/255.0f blue:242.0f/255.0f alpha:1.0f].CGColor;
        self.view.layer.borderWidth = 1;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
