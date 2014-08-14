//
//  topViewController.h
//  LIFE card
//
//  Created by shuntaro kubo on 2014/08/02.
//  Copyright (c) 2014年 shuntaro kubo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "top2ViewController.h"

@interface topViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *mytextView;

@property (weak, nonatomic) IBOutlet UIButton *tapButton;

- (IBAction)tapButton2:(id)sender;

@property (weak, nonatomic) IBOutlet UINavigationItem *naviTitle;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sharebutton;

- (IBAction)sharebutton:(id)sender;




@end
