//
//  FirstViewController.m
//  VIPERForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/15.
//  Copyright © 2017年 viperObjC. All rights reserved.
//

#import "FirstViewController.h"
#import "FirstRouter.h"
#import "FirstConfigurator.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)awakeFromNib {
    [super awakeFromNib];
    [[FirstConfigurator sharedInstance] configureViewController:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Transition

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [self.router passDataToNextScene:segue];
}

#pragma mark - UIButton Action

- (IBAction)tapped:(UIButton *)sender {
    NSLog(@"Function: %s, Line: %d", __PRETTY_FUNCTION__, __LINE__ );
}

@end



