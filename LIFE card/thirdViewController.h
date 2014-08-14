//
//  thirdViewController.h
//  LIFE card
//
//  Created by shuntaro kubo on 2014/08/05.
//  Copyright (c) 2014年 shuntaro kubo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface thirdViewController : UIViewController

@property (weak, nonatomic) IBOutlet UINavigationItem *naviTitle;

@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@property (weak, nonatomic) IBOutlet UIButton *myButton;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *shareButton;

- (IBAction)shareButton:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *TrashButton;

- (IBAction)TrashButton:(id)sender;


@end
