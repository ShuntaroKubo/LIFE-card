//
//  SwitchViewController.h
//  LIFE card
//
//  Created by shuntaro kubo on 2014/08/11.
//  Copyright (c) 2014年 shuntaro kubo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwitchViewController : UIViewController
<UIActionSheetDelegate>

@property (weak, nonatomic) IBOutlet UISwitch *mySwiych;

- (IBAction)mySwitch:(id)sender;

@property (weak, nonatomic) IBOutlet UITextView *myTextField;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *shareButton;

- (IBAction)shareButton:(id)sender;

//YESView後
@property (weak, nonatomic) IBOutlet UIView *doneView;

@property (weak, nonatomic) IBOutlet UILabel *doneLabel;

@property (weak, nonatomic) IBOutlet UIButton *trashSwitch;

- (IBAction)trashSwitch:(id)sender;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *menuButton;

- (IBAction)menuButton:(id)sender;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *tapinformationBtn;

- (IBAction)tapinformationBtn:(id)sender;

//テスト
@property (weak, nonatomic) IBOutlet UILabel *myLabel;


@end
