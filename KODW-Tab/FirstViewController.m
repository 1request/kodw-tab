//
//  FirstViewController.m
//  KODW-Tab
//
//  Created by Harry Ng on 11/6/14.
//  Copyright (c) 2014 Request. All rights reserved.
//

#import "FirstViewController.h"
#define PROTO_IOS @"https://explore.proto.io/share/?id=63fcd36d-2f32-4210-97af-9463103a0ae0&v=4"

@interface FirstViewController ()
            

@end

@implementation FirstViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *deviceId = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    NSLog(@"deviceId: %@", deviceId);
    self.webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 519)];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://kodw-ios.homesmartly.com/"]]];
    
    
//    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"html"];
//    NSData *htmlData = [NSData dataWithContentsOfFile:htmlFile];
//    [self.webView loadData:htmlData MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:[NSURL URLWithString:@""]];
    
//    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
//    NSString* htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
//    [self.webView loadHTMLString:htmlString baseURL:nil];

    [self.view addSubview:self.webView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
