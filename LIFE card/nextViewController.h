//
//  nextViewController.h
//  LIFE card
//
//  Created by shuntaro kubo on 2014/08/05.
//  Copyright (c) 2014年 shuntaro kubo. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface nextViewController : UIViewController

@property (weak, nonatomic) IBOutlet UINavigationItem *naviTitle;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *shareButton;

- (IBAction)shareButton:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *slideButton;

- (IBAction)slideButton:(id)sender;




@end
