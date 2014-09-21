//
//  top2ViewController.h
//  LIFE card
//
//  Created by shuntaro kubo on 2014/08/09.
//  Copyright (c) 2014年 shuntaro kubo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "topViewController.h"

@interface top2ViewController : UIViewController
<UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *topWebView;

//Activity Indicatorの名前設定
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *loadingindicator;

@end
