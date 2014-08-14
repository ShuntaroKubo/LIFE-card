//
//  top2ViewController.m
//  LIFE card
//
//  Created by shuntaro kubo on 2014/08/09.
//  Copyright (c) 2014年 shuntaro kubo. All rights reserved.
//

#import "top2ViewController.h"


@interface top2ViewController ()

@end

@implementation top2ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
}
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSURL *myURL = [NSURL URLWithString:@"http://www.jotnw.or.jp/sp/"];
    NSURLRequest *myURLReq = [NSURLRequest requestWithURL:myURL];
    
    [self.topWebView loadRequest: myURLReq];
}

- (void)didReceiveMemoryWarning
{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
