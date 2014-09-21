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
    
    //indicatorに対して回す処理を書く
    [self.loadingindicator startAnimating];
    
    //
    self.topWebView.delegate = self;
    
//    // サイズを指定した生成例
//    UIActivityIndicatorView *ai =
//    [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0, 0, 70, 70)];
    
}

-(void)webViewDidFinishLoad:(UIWebView *)webView

{
    //webが開いた時、indicatorを止める処理
    [self.loadingindicator stopAnimating];
    
    //webが開いた時、indicataorを透過させる処理
    self.loadingindicator.alpha = 0;
   
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
