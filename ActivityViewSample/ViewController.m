//
//  ViewController.m
//  ActivityViewSample
//
//  Created by Eriko Ichinohe on 2014/02/14.
//  Copyright (c) 2014年 Eriko Ichinohe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)shareBtn:(id)sender {
    NSString *text;
    NSURL *url;
    
    text = @"これはAppleのサイトをシェアするためのボタンです";
    url = [NSURL URLWithString:@"http://google.com/"];
    
//    NSArray *actItems = [NSArray arrayWithObjects:text,url,nil];
    
    //モダンな書き方
    NSArray *actItems = @[text,url];
    
    UIActivityViewController
    *activityView = [[UIActivityViewController alloc] initWithActivityItems:actItems applicationActivities:nil];
    
    //モーダルの処理
    [self presentViewController:activityView animated:YES completion:nil];
    
}
@end
