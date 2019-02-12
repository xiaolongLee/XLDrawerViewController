//
//  AppDelegate.h
//  XLDrawerViewDemo
//
//  Created by Mac-Qke on 2019/2/12.
//  Copyright © 2019 Mac-Qke. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XLDrawerViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, strong, readonly) XLDrawerViewController *drawerVC;

@end

