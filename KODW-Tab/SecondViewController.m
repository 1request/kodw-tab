//
//  SecondViewController.m
//  KODW-Tab
//
//  Created by Harry Ng on 11/6/14.
//  Copyright (c) 2014 Request. All rights reserved.
//

#import "SecondViewController.h"
#import "AppDelegate.h"

@interface SecondViewController ()
            

@end

@implementation SecondViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *deviceId = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    NSLog(@"deviceId: %@", deviceId);
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenHeight = screenRect.size.height;
    CGRect rect;
    if (screenHeight <= 480.0)
        rect = CGRectMake(0, 0, 320, 431);
    else
        rect = CGRectMake(0, 0, 320, 519);
    self.webView = [[UIWebView alloc] initWithFrame:rect];
    
    NSString *url = [NSString stringWithFormat:@"%@/mobile/%@", mobileAddress, deviceId];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    
    [self.view addSubview:self.webView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
