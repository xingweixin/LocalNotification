//
//  AppDelegate.m
//  01-本地通知
//
//  Created by xiaomage on 15/8/13.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 设置应用程序的图标右上角的数字
    [application setApplicationIconBadgeNumber:0];
    
    if ([[UIDevice currentDevice].systemVersion doubleValue] >= 8.0) {
        UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeAlert | UIUserNotificationTypeBadge | UIUserNotificationTypeSound categories:nil];
        [application registerUserNotificationSettings:settings];
    }
    
    // 界面的跳转(针对应用程序被杀死的状态下的跳转)
    if (launchOptions[UIApplicationLaunchOptionsLocalNotificationKey]) {
        // 跳转代码
        UILabel *redView = [[UILabel alloc] init];
        redView.frame = CGRectMake(0, 0, 200, 300);
        redView.numberOfLines = 0;
        redView.font = [UIFont systemFontOfSize:12.0];
        redView.backgroundColor = [UIColor redColor];
        redView.text = [NSString stringWithFormat:@"%@", launchOptions];
        [self.window.rootViewController.view addSubview:redView];
    }
    
    return YES;
}

/*
 应用程序在进入前台,或者在前台的时候都会执行该方法
 */
- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification
{
    // 针对应用程序在后台的时候进行的跳转
    if (application.applicationState == UIApplicationStateInactive) {
        NSLog(@"进行界面的跳转");
        NSLog(@"%@", notification.userInfo);//通过传来的参数来判断跳转的页面
        
        UIView *redView = [[UIView alloc] init];
        redView.frame = CGRectMake(0, 0, 100, 100);
        redView.backgroundColor = [UIColor redColor];
        [self.window.rootViewController.view addSubview:redView];
    }
}
















@end
