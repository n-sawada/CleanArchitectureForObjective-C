//
//  TodoListViewController.m
//  CleanArchitectureForObjective-C
//
//  Created by Naoki_Sawada on 2017/02/21.
//  Copyright (c) 2017年 CAFObjC. All rights reserved.
//
//  This file was generated by the Clean ObjectiveC Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, base on http://clean-swift.com

#import "TodoListViewController.h"
#import "TodoListRouter.h"
#import "TodoListConfigurator.h"
#import "TodoListModels.h"

@interface TodoListViewController ()

@end

@implementation TodoListViewController

+ (instancetype)selfViewController {
    return [[self class] selfViewControllerWithStoryboardName:@"Main"];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [[TodoListConfigurator sharedInstance] configureViewController:self];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self reloadToDoItemsOnLoad];
}

#pragma mark - Event Handling

- (void)reloadToDoItemsOnLoad {
    TodoListRequest *request = [TodoListRequest new];
    [self.output fetchTodoItems:request];
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

- (void)displaySomething:(TodoListViewModel *)viewModel {
    // 描画に必要なデータを設定して描画処理
}

@end

#pragma mark - Storyboard

@implementation TodoListViewController (Storyboard)
+ (instancetype)selfViewControllerWithStoryboardName:(NSString *)storyboardName {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    return [sb instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
}
@end