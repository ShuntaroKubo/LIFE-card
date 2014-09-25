//
//  rightSideMenuViewController.m
//  LIFE card
//
//  Created by shuntaro kubo on 2014/08/16.
//  Copyright (c) 2014年 shuntaro kubo. All rights reserved.
//

#import "rightSideMenuViewController.h"

@interface rightSideMenuViewController ()

@end

@implementation rightSideMenuViewController

{
    NSString *_CategoryFilepath;
    
    NSString *_WannadoFilepath;
}

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
    
    //ユーザーデフォルトから値を取り出し設定
    NSUserDefaults *defaults2 = [NSUserDefaults standardUserDefaults];
    
    NSString* strName = [defaults2 stringForKey:@"NameTextField"];
    
    self.NameTextField.text = strName;
    
    NSString* strDate = [defaults2 stringForKey:@"DateTextField"];
    
    self.DateTextField.text = strDate;
    
    NSString* strPlace = [defaults2 stringForKey:@"PlaceTextField"];
    
    self.PlaceTextField.text = strPlace;
    
    NSString* strDatails = [defaults2 stringForKey:@"DatailsTextField"];
   
    self.DatailsTextField.text = strDatails;
    
    self.NameTextField.delegate = self;
    
    self.DateTextField.delegate = self;
    
    self.PlaceTextField.delegate = self;
    
   // self.DatailsTextField.delegate = self;



    
//    self.myTextField.editable = NO;
//    
//    self.doneLabel.font = [UIFont systemFontOfSize:23];
//    
//    NSAttributedString* value;
//    NSMutableAttributedString *message = [[NSMutableAttributedString alloc] initWithString:@""];
//    NSMutableParagraphStyle *paraStyle_L = [[NSMutableParagraphStyle alloc] init];
//    [paraStyle_L setAlignment:NSTextAlignmentLeft];
//    NSMutableParagraphStyle *paraStyle_C = [[NSMutableParagraphStyle alloc] init];
//    [paraStyle_C setAlignment:NSTextAlignmentCenter];
//    NSMutableParagraphStyle *paraStyle_R = [[NSMutableParagraphStyle alloc] init];
//    [paraStyle_R setAlignment:NSTextAlignmentRight];
//
//    
//    value = [[NSAttributedString alloc] initWithString:@"あなたは臓器提供の\n"
//                                            attributes:@{NSParagraphStyleAttributeName:paraStyle_L}];
//    //[message appendAttributedString:value];
//    //value = [[NSAttributedString alloc] initWithString:@"中央揃え\n"
//    //attributes:@{NSParagraphStyleAttributeName:paraStyle_C}];
//    [message appendAttributedString:value];
//    value = [[NSAttributedString alloc] initWithString:@"意思表示しました\n"
//                                            attributes:@{NSParagraphStyleAttributeName:paraStyle_R}];
//    [message appendAttributedString:value];
//    
//    self.doneLabel.numberOfLines = 0;
//    self.doneLabel.attributedText = message;
//
    
    //textViewを角丸にする
    [[self.DatailsTextField layer] setCornerRadius:10.0];
    
    [self.DatailsTextField setClipsToBounds:YES];
    
    //textViewに黒色の枠を付ける
    [[self.DatailsTextField layer] setBorderColor:[[UIColor blackColor] CGColor]];
    
    [[self.DatailsTextField layer] setBorderWidth:0.0];
    
    
    //ユーザーデフォルト
//    //キーから値を取得する
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
//    NSString *str = _NameTextField;
    
//    [defaults setObject:@"aaa" forKey:@"NameTextView"];
//    
//    [defaults setObject:@"aaa" forKey:@"DateTextField"];
//    
//    [defaults setObject:@"aaa" forKey:@"PlaceTextField"];
//    
//    [defaults setObject:@"aaa" forKey:@"DatailsTextField"];
    

//    if (self.detailsTextView.on)
//    {
//        self.detailsTextView.alpha = 1.0;
//        
//    }
 self.DatailsTextField.delegate = self;
    
    
//    // キーボードが表示されたときのNotificationをうけとります。（後で）
//    [self registerForKeyboardNotifications];
   
    // UITextFieldの設定
    CGRect rectBIR = CGRectMake(10, 345, 300, 25);
    UITextField *DateTextField = [[UITextField alloc]initWithFrame:rectBIR];
    
    // DatePickerの設定
    UIDatePicker* datePicker = [[UIDatePicker alloc]init];
    [datePicker setDatePickerMode:UIDatePickerModeDate];
    
    // DatePickerを編集したら、updateTextFieldを呼び出す
    [datePicker addTarget:self action:@selector(updateTextField:) forControlEvents:UIControlEventValueChanged];
    
    // textFieldの入力をdatePickerに設定
    DateTextField.inputView = datePicker;
    
    // Delegationの設定
    DateTextField.delegate = self;
    
    // DoneボタンとそのViewの作成
    UIToolbar* keyboardDoneButtonView = [[UIToolbar alloc] init];
    keyboardDoneButtonView.barStyle  = UIBarStyleBlack;
    keyboardDoneButtonView.translucent = YES;
    keyboardDoneButtonView.tintColor = nil;
    [keyboardDoneButtonView sizeToFit];
    
<<<<<<< HEAD
    // 完了ボタンとSpacerの配置
    UIBarButtonItem* doneButton = [[UIBarButtonItem alloc] initWithTitle:@"完了" style:UIBarButtonItemStyleBordered target:DateTextField action:@selector(pickerDoneClicked)];
    UIBarButtonItem *spacer1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem *spacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [keyboardDoneButtonView setItems:[NSArray arrayWithObjects:spacer, spacer1, doneButton, nil]];
=======
    // DatePickerの設定
    UIDatePicker* datePicker = [[UIDatePicker alloc]init];
    [datePicker setDatePickerMode:UIDatePickerModeDate];
    
    // DatePickerを編集したら、updateTextFieldを呼び出す
    [datePicker addTarget:self action:@selector(updateTextField:) forControlEvents:UIControlEventValueChanged];
    
    // textFieldの入力をdatePickerに設定
    _DateTextField.inputView = datePicker;
    
    // Delegationの設定
    _DateTextField.delegate = self;
    
    // DoneボタンとそのViewの作成
    UIToolbar* keyboardDoneButtonView = [[UIToolbar alloc] init];
    keyboardDoneButtonView.barStyle  = UIBarStyleBlack;
    keyboardDoneButtonView.translucent = YES;
    keyboardDoneButtonView.tintColor = nil;
    [keyboardDoneButtonView sizeToFit];
    
    // 完了ボタンとSpacerの配置
    UIBarButtonItem* doneButton = [[UIBarButtonItem alloc] initWithTitle:@"完了" style:UIBarButtonItemStyleBordered target:self action:@selector(pickerDoneClicked:)];
    UIBarButtonItem *spacer1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem *spacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [keyboardDoneButtonView setItems:[NSArray arrayWithObjects:spacer, spacer1, doneButton, nil]];
    
    // Viewの配置
    _DateTextField.inputAccessoryView = keyboardDoneButtonView;
    
    [self.view addSubview:_DateTextField];
>>>>>>> FETCH_HEAD
    
    // Viewの配置
    DateTextField.inputAccessoryView = keyboardDoneButtonView;
    
    [self.view addSubview:DateTextField];
}

<<<<<<< HEAD
#pragma mark DatePickerの編集が完了したら結果をTextFieldに表示
-(void)updateTextField:(id)sender {
    UIDatePicker *picker = (UIDatePicker *)sender;
    _DateTextField.text = [NSString stringWithFormat:@"%@", picker.date];
}

#pragma mark datepickerの完了ボタンが押された場合
//-(void)pickerDoneClicked {
//    [_birth resignFirstResponder];
//    _activeField = nil;
//}

    

=======
>>>>>>> FETCH_HEAD

-(BOOL)textViewShouldBeginEditing:(UITextView *)textView
{

    //テキストビューを編集するであろう。
    [self registerForKeyboardNotifications];
    
    //全体を上げる。
    _upView.frame = CGRectMake(20, -85, self.view.bounds.size.width, 250);
    
    _DetailsLabel.frame = CGRectMake(20, 185, 92, 21);
    
    _DatailsTextField.frame = CGRectMake(20, 210, 239,136);
    
//ボタンを上げる。
    _closetapBtn.frame = CGRectMake(20, 0, 239,136);
    
    return YES;

}

- (void)keyboardWasShown:(NSNotification*)aNotification
{
    
    //NSLog(@"keyboardWasShown");
    
    
}

-(void)keyboardWillBeHidden:(NSNotification*)aNotification
{
    //全体を下げる
//    _upView.frame = CGRectMake(20, 20, self.view.bounds.size.width, 250);
//    
//    _DetailsLabel.frame = CGRectMake(20, 290, 92, 21);
//    
//    _DatailsTextField.frame = CGRectMake(20,325,239,136);
//    

    [self downobject];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardDidShowNotification object:nil];
}

-(void)downobject
{
//全体を下げる
_upView.frame = CGRectMake(20, 20, self.view.bounds.size.width, 250);

_DetailsLabel.frame = CGRectMake(20, 290, 92, 21);

_DatailsTextField.frame = CGRectMake(20,325,239,136);
    
_defaulttapBtn.frame = CGRectMake(20,269,239,136);

_closetapBtn.frame = CGRectMake(20,269,239,136);
    
}

- (void)registerForKeyboardNotifications
{
    
    [[NSNotificationCenter defaultCenter] addObserver:self
    selector:@selector(keyboardWasShown:)
    name:UIKeyboardDidShowNotification object:nil];
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self
    selector:@selector(keyboardWillBeHidden:)
    name:UIKeyboardWillHideNotification object:nil];
}

- (BOOL)textFieldShouldReturn:(UITextField *)NametextField

{
    //ユーザーデフォルトの宣言 テキストフィールドに入力された文字を残す
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:self.NameTextField.text forKey:@"NameTextField"];
    
    
    [defaults setObject:self.DateTextField.text forKey:@"DateTextField"];

    
    [defaults setObject:self.PlaceTextField.text forKey:@"PlaceTextField"];
    
    
    [defaults setObject:self.DatailsTextField.text forKey:@"DatailsTextField"];

    [NametextField resignFirstResponder];
    
    //キーボード閉じたときに全体下げる
    
    //全体を下げる
    _upView.frame = CGRectMake(20, 20, self.view.bounds.size.width, 250);
    
    _DetailsLabel.frame = CGRectMake(20, 290, 92, 21);
    
    _DatailsTextField.frame = CGRectMake(20,325,239,136);
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardDidShowNotification object:nil];

    
    
    return YES;
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

- (IBAction)defaulttapBtn:(id)sender
{
    
    
    // ユーザーデフォルトから文字列配列を取得
//     NSString *str = ;
    
}
- (IBAction)inputName:(id)sender {
    
//    //strにTextFieldに入力した文字の保存
//    NSString *str;
//    
////    self.NameTextField.text;
//    
//    //ユーザーデフォルトの宣言
//    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
//    
////    [defaults setObject:str forKey:self.NameTextField.text];
//    
//    [defaults setObject:@"NameTextField" forKey:@"NameTextView"];
//    
//    [defaults setObject:@"DateTextField" forKey:@"DateTextField"];
//    
//    [defaults setObject:@"PlaceTextField" forKey:@"PlaceTextField"];
//
//    [defaults setObject:@"DatailsTextField" forKey:@"DatailsTextField"];
//    
//    
//    [defaults synchronize];
////    
//    NSLog(@"あれ%@", str);
//    NSLog(@"あれ%@", defaults);
    
    
}

- (IBAction)defalttapBtn:(id)sender

{
    
    
    //strにTextFieldに入力した文字の保存
    NSString *str;
    
    //    self.NameTextField.text;
    
    //ユーザーデフォルトの宣言
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    
    //    [defaults setObject:str forKey:self.NameTextField.text];
    
    [defaults setObject:self.NameTextField.text forKey:@"NameTextField"];
    
    [defaults setObject:self.DateTextField.text forKey:@"DateTextField"];
    
    [defaults setObject:self.PlaceTextField.text forKey:@"PlaceTextField"];
    
    [defaults setObject:self.DatailsTextField.text forKey:@"DatailsTextField"];
    
    
    [defaults synchronize];
//    //
//    NSLog(@"あれ%@", str);
//    
//    NSLog(@"あれ%@", defaults);
}

- (IBAction)closetapBtn:(id)sender
{
    //全体を下げる
    _upView.frame = CGRectMake(20, 20, self.view.bounds.size.width, 250);
    
    _DetailsLabel.frame = CGRectMake(20, 290, 92, 21);
    
    _DatailsTextField.frame = CGRectMake(20,325,239,136);

}


- (IBAction)swipeGestureDown:(id)sender
{
    NSLog(@"スワイプしました。");
    //キーボード閉じる
    [self.NameTextField resignFirstResponder];
    
    [self.DateTextField resignFirstResponder];
    
    [self.PlaceTextField resignFirstResponder];
    
    [self.DatailsTextField resignFirstResponder];
    
    //全体を下げる
//    _upView.frame = CGRectMake(20, 20, self.view.bounds.size.width, 250);
//    
//    _DetailsLabel.frame = CGRectMake(20, 290, 92, 21);
//
//    _DatailsTextField.frame = CGRectMake(20,325,239,136);

    [self downobject];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardDidShowNotification object:nil];
    
    
    
    
}
- (IBAction)closetapBtn:(id)sender
{
    //キーボード閉じる
    [self.NameTextField resignFirstResponder];
    
    [self.DateTextField resignFirstResponder];
    
    [self.PlaceTextField resignFirstResponder];
    
    [self.DatailsTextField resignFirstResponder];
    
}
@end
