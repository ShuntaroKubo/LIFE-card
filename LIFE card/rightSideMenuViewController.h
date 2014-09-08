//
//  rightSideMenuViewController.h
//  LIFE card
//
//  Created by shuntaro kubo on 2014/08/16.
//  Copyright (c) 2014年 shuntaro kubo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface rightSideMenuViewController : UIViewController

<UITextFieldDelegate,UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *defaulttapBtn;

- (IBAction)defaulttapBtn:(id)sender;

//ユーザーデフォルト、TextFieldに名前をつける。
@property (weak, nonatomic) IBOutlet UITextField *NameTextField;

@property (weak, nonatomic) IBOutlet UITextField *DateTextField;

@property (weak, nonatomic) IBOutlet UITextField *PlaceTextField;

@property (weak, nonatomic) IBOutlet UITextView *DatailsTextField;



//テキストフィールドのアクション
- (IBAction)inputName:(id)sender;

//ボタンのアクション
- (IBAction)defalttapBtn:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *closetapBtn;

//labelに名前をつける
@property (weak, nonatomic) IBOutlet UIView *upView;

@property (weak, nonatomic) IBOutlet UILabel *DetailsLabel;

//スワイプジェスチャーの設定
- (IBAction)swipeGestureDown:(id)sender;

@end
