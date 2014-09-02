//
//  SwitchViewController.m
//  LIFE card
//
//  Created by shuntaro kubo on 2014/08/11.
//  Copyright (c) 2014年 shuntaro kubo. All rights reserved.
//

#import "SwitchViewController.h"
#import "UIViewController+MFSideMenuAdditions.h"
#import "MFSideMenuContainerViewController.h"

@interface SwitchViewController ()

@end

@implementation SwitchViewController


//
//+ (SwitchViewController *)containerWithCenterViewController:(id)centerViewController
//                                                 rightMenuViewController:(id)rightMenuViewController {
//    SwitchViewController *controller = [SwitchViewController new];

    


//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//}
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 400, 44)];
//    label.backgroundColor = [UIColor clearColor];
//    label.font = [UIFont boldSystemFontOfSize:24.0];
//    label.shadowColor = [UIColor colorWithWhite:0.0 alpha:0.5];
//    label.textAlignment = UITextAlignmentCenter; //iOS6ではdeprecated
//    label.textColor =[UIColor whiteColor];
//    label.text = @"LIFE card";
//    self.navigationItem.titleView = label;
    
    //テキストビューの編集不可
    
    self.myTextField.editable = NO;
    
    self.doneLabel.font = [UIFont systemFontOfSize:23];
    
    NSAttributedString* value;
    
    NSMutableAttributedString *message = [[NSMutableAttributedString alloc] initWithString:@""];
    
    NSMutableParagraphStyle *paraStyle_L = [[NSMutableParagraphStyle alloc] init];
    [paraStyle_L setAlignment:NSTextAlignmentLeft];
    
    NSMutableParagraphStyle *paraStyle_C = [[NSMutableParagraphStyle alloc] init];
    [paraStyle_C setAlignment:NSTextAlignmentCenter];
    
    NSMutableParagraphStyle *paraStyle_R = [[NSMutableParagraphStyle alloc] init];
    [paraStyle_R setAlignment:NSTextAlignmentRight];
    
    value = [[NSAttributedString alloc] initWithString:@"あなたは臓器提供の\n"
                                            attributes:@{NSParagraphStyleAttributeName:paraStyle_L}];
    //[message appendAttributedString:value];
    //value = [[NSAttributedString alloc] initWithString:@"中央揃え\n"
    //attributes:@{NSParagraphStyleAttributeName:paraStyle_C}];
    
    [message appendAttributedString:value];
    
    value = [[NSAttributedString alloc] initWithString:@"意思表示しました\n"
                                            attributes:@{NSParagraphStyleAttributeName:paraStyle_R}];
    [message appendAttributedString:value];
    
    self.doneLabel.numberOfLines = 0;
    
    self.doneLabel.attributedText = message;

    //キーから値を取得する
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    BOOL defaultbool = [defaults boolForKey:@"SwitchStatus"];
    
    self.mySwiych.on = defaultbool;
    
    if (self.mySwiych.on)
    {
         self.doneView.alpha = 1.0;
        
    }
    
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

- (IBAction)mySwitch:(id)sender
{
    if (self.mySwiych.on == YES)
    
    {
        //self.doneLabel.text =@"意思表示中です";
        //alpha透明度
        self.doneView.alpha = 1.0;
        
        //trashSwitch表示
        self.trashSwitch.alpha = 1.0;
        
        
        //画面遷移の仕方
//    thirdViewController *thirdViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"thirdViewController"];
//    //    [self presentViewController:top2ViewController animated:YES completion:nil];
//    [[self navigationController] pushViewController:thirdViewController animated:NO];

        }else{
        
    //self.doneLabel.text =@"意思表示していません";
         self.doneView.alpha = 0.0;
            
    //trashSwitch消す
        self.trashSwitch.alpha = 0.0;
            
               
    }
    
    
    //指定したキーに入力された値を保存する
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setBool:self.mySwiych.on forKey:@"SwitchStatus"];
   
    [defaults synchronize];
    
    
    
}


- (IBAction)shareButton:(id)sender

{
    
    NSString *text = @"Hello World!";
    
    NSArray* actItems = [NSArray arrayWithObjects:text, nil];
    
    UIActivityViewController *activityView = [[UIActivityViewController alloc]
                                              initWithActivityItems:actItems applicationActivities:nil];
    
    [self presentViewController:activityView animated:YES completion:nil];
}
- (IBAction)trashSwitch:(id)sender
{
//    self.doneView.alpha = 1.0;
//    
//    self.doneView.alpha = 0.0;
    
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc]initWithTitle:@"本当に解除しますか？"
        delegate:self cancelButtonTitle:@"Cancel"destructiveButtonTitle:@"削除" otherButtonTitles:nil];
    
    [actionSheet showInView:self.view];
    
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex

{
   // NSLog(@"Tap");
    
    
    switch (buttonIndex) {
        case 0:
            
            self.doneView.alpha = 0.0;
            
            //trashSwitch消す
            self.trashSwitch.alpha = 0.0;
            
            //単純に値を設定するとき
            self.mySwiych.on = NO;
            
            break;
        
        default:
            break;
            
            
}
    
}



- (IBAction)tapinformationBtn:(id)sender

{
    [self.menuContainerViewController toggleRightSideMenuCompletion:nil];
}
@end
