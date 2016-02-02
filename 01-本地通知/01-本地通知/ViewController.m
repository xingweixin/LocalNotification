//
//  ViewController.m
//  01-本地通知
//
//  Created by xiaomage on 15/8/13.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

/*
 @property(nonatomic,copy) NSDate *fireDate;
 @property(nonatomic,copy) NSTimeZone *timeZone;
 
 @property(nonatomic) NSCalendarUnit repeatInterval;
 @property(nonatomic,copy) NSCalendar *repeatCalendar;
 
 @property(nonatomic,copy) CLRegion *region
 
 @property(nonatomic,assign) BOOL regionTriggersOnce NO
 
 @property(nonatomic,copy) NSString *alertBody;      
 
 @property(nonatomic) BOOL hasAction;
 @property(nonatomic,copy) NSString *alertAction;    
 
 @property(nonatomic,copy) NSString *alertLaunchImage;
 @property(nonatomic,copy) NSString *alertTitle
 
 @property(nonatomic,copy) NSString *soundName;
 
 @property(nonatomic) NSInteger applicationIconBadgeNumber;
 
 @property(nonatomic,copy) NSDictionary *userInfo;
 */

- (IBAction)fireLocalNote:(id)sender {
    // 1.创建本地通知
    UILocalNotification *localNote = [[UILocalNotification alloc] init];
    
    // 2.设置本地通知的内容
    // 2.1.设置通知发出的时间
    localNote.fireDate = [NSDate dateWithTimeIntervalSinceNow:3.0];
    // 2.2.设置通知的内容
    localNote.alertBody = @"吃饭了吗?";
    // 2.3.设置滑块的文字
    localNote.alertAction = @"快点";
    // 2.4.决定alertAction是否生效
    localNote.hasAction = NO;
    // 2.5.设置点击通知的启动图片
    localNote.alertLaunchImage = @"3213432dasf";
    // 2.6.设置alertTitle
    localNote.alertTitle = @"3333333333";
    // 2.7.设置有通知时的音效
    //UILocalNotificationDefaultSoundName默认声音;
    localNote.soundName = @"buyao.wav";
    // 2.8.设置应用程序图标右上角的数字
    localNote.applicationIconBadgeNumber = 999;
    
    // 2.9.设置额外信息
    localNote.userInfo = @{@"type" : @1}; //根据这个传来的值判断打开那个界面
    
    // 3.调用通知
    [[UIApplication sharedApplication] scheduleLocalNotification:localNote];
}

@end
