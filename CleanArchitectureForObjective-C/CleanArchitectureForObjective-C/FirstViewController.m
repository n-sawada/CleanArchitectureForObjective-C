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
#import "FirstModels.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

+ (instancetype)selfViewController {
    return [[self class] selfViewControllerWithStoryboardName:@"Main"];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [[FirstConfigurator sharedInstance] configureViewController:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self doSomethingOnLoad];
}

#pragma mark - Event Handling

- (void)doSomethingOnLoad {
    FirstRequest *request = [FirstRequest new];
    [self.output doSomething:request];
}

#pragma mark - Transition

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [self.router passDataToNextScene:segue];
}

#pragma mark - UIButton Action

- (IBAction)tapped:(UIButton *)sender {
    // programmatically create instance base on storyboard
//    [self.router transitionToNextScene];
}

#pragma mark - Display Logic

- (void)displaySomething:(FirstViewModel *)viewModel {
    // 描画に必要なデータを設定して描画処理
    NSLog(@"%@", viewModel );
}

@end

#pragma mark - Storyboard

@implementation FirstViewController (Storyboard)
+ (instancetype)selfViewControllerWithStoryboardName:(NSString *)storyboardName {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    return [sb instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
}
@end
