//
//  AYInjection.m
//  AprilInject
//
//  Created by April Young on 2020/1/8.
//  Copyright © 2020 April Young. All rights reserved.
//

#import "AYInjection.h"
#import <objc/runtime.h>
#import <UIKit/UIKit.h>

@implementation AYInjection
+(void)load
{
    NSLog(@"\n\n\n\n\n\n\n\n\n\n\n\n\n\n🌝🌝🌝🌝🌝🌝🌝🌝🌝🌝🌝🌝🌝\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
    
    // QLUserCenterViewController
    // searchButtonClicked:
    
    

    Method m1 = class_getInstanceMethod(objc_getClass("QLUserCenterViewController"), sel_registerName("searchButtonClicked:"));
    Method m2 = class_getInstanceMethod(objc_getClass("AYInjection"), sel_registerName("searchButtonClicked:"));
    method_exchangeImplementations(m1, m2);
    
}

- (void)searchButtonClicked:(id)sender
{
    
    NSLog(@"\n\n\n\n\n\n\n\n\n\n\n\n\n\n click search action: %@", sender);
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"🌚🌚🌚" message:@"这个方法被替换了" preferredStyle: UIAlertControllerStyleAlert];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:action];
    
    [[UIApplication sharedApplication].delegate.window.rootViewController presentViewController:alert animated:true completion:nil];
    
}
@end
