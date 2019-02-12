//
//  ViewController.m
//  XLDrawerViewDemo
//
//  Created by Mac-Qke on 2019/2/12.
//  Copyright © 2019 Mac-Qke. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "XLDrawerViewController.h"
@interface ViewController () <XLDrawerViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithTitle:@"Menu" style:UIBarButtonItemStylePlain target:self action:@selector(didClickLeftItem:)];
    self.navigationItem.leftBarButtonItem = leftItem;
}

static BOOL show = NO;


- (void)didClickLeftItem:(id)sender {
    AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
    if (!show) {
        [app.drawerVC presentMenuViewController];
    }else {
        [app.drawerVC dismissMenuViewController];
    }
    
    show = !show;
}

#pragma mark - XLDrawerViewControllerDelegate
- (void)menuDidAppear {
    show = YES;
}

- (void)menuDidDisappear {
    show = NO;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"%s", __FUNCTION__);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"%s", __FUNCTION__);
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"%s", __FUNCTION__);
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"%s", __FUNCTION__);
}

@end
