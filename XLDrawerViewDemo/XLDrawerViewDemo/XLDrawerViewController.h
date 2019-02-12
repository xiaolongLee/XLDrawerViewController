//
//  XLDrawerViewController.h
//  XLDrawerViewDemo
//
//  Created by Mac-Qke on 2019/2/12.
//  Copyright © 2019 Mac-Qke. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol XLDrawerViewControllerDelegate <NSObject>

@optional
- (void)menuDidAppear;
- (void)menuDidDisappear;


@end

@interface XLDrawerViewController : UIViewController <NSObject>
- (instancetype)initWithMainViewController:(UIViewController *)mainViewController
                        menuViewController:(UIViewController *)menuViewController;
@property (nonatomic, assign) CGFloat visibleMenuWidth;///< Default is 300.f.
@property (nonatomic, assign) BOOL canDragMenu; ///< Default is YES.

@property (nonatomic, strong, readwrite) UIViewController *mainViewController;
@property (nonatomic, strong, readwrite) UIViewController *menuViewController;

- (void)presentMenuViewController; ///< Show menu page.
- (void)dismissMenuViewController; ///< Hide menu page.

- (void)bind:(id<XLDrawerViewControllerDelegate>)delegate;
- (void)unbind:(id<XLDrawerViewControllerDelegate>)delegate;
@end

NS_ASSUME_NONNULL_END
