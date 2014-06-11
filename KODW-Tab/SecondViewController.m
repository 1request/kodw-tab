//
//  SecondViewController.m
//  KODW-Tab
//
//  Created by Harry Ng on 11/6/14.
//  Copyright (c) 2014 Request. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
            

@end

@implementation SecondViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *deviceId = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    NSLog(@"deviceId: %@", deviceId);
    self.webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 519)];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.0.110:8080"]]];
    
    [self.view addSubview:self.webView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
