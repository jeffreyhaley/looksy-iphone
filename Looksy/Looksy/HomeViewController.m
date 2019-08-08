//
//  HomeViewController.m
//  Looksy
//
//  Created by Miran Badzak on 1/31/14.
//  Copyright (c) 2014 Looksy. All rights reserved.
//

#import "HomeViewController.h"
#import "LocationTileController.h"
#import "MainHeaderController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // load the header
    MainHeaderController *header = [[MainHeaderController alloc] initWithNibName:@"MainHeader" bundle:[NSBundle mainBundle]];
    
    [self.view insertSubview:header.view atIndex:1];
    
    // load the location tiles
    UIScrollView* scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    scrollView.scrollEnabled = YES;
    
    [self.view insertSubview:scrollView atIndex:0];
    
    
    LocationTileController *tile1 = [[LocationTileController alloc]
                                     initWithNibName:@"LocationTile"
                                     bundle:[NSBundle mainBundle]];
    LocationTileController *tile2 = [[LocationTileController alloc]
                                     initWithNibName:@"LocationTile"
                                     bundle:[NSBundle mainBundle]];
    
    [tile1.view setFrame:CGRectMake(20, 80, tile1.view.frame.size.width, tile1.view.frame.size.height)];

    [tile2.view setFrame:CGRectMake(20, tile1.view.frame.size.height + 90, tile2.view.frame.size.width, tile2.view.frame.size.height)];
    
    [scrollView addSubview:tile1.view];
    [scrollView addSubview:tile2.view];

    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height*1.3);
    
    
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.


}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:animated];
}

@end
