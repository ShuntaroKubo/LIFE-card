//
//  thirdViewController.m
//  LIFE card
//
//  Created by shuntaro kubo on 2014/08/05.
//  Copyright (c) 2014年 shuntaro kubo. All rights reserved.
//

#import "thirdViewController.h"

@interface thirdViewController ()

@end

@implementation thirdViewController

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
    //_naviTitle.title = @"LIFE card";
    /*
    self.myLabel.numberOfLines = 2;
    self.myLabel.text = @"あなたは臓器提供の\n意思表示しました";
    self.myLabel.textAlignment = UITextAlignmentLeft;
    self.myLabel.textColor = [UIColor blackColor];
    self.myLabel.font = [UIFont systemFontOfSize:23];
    //self.myLabel.adjustsFontSizeToFitWidth = (y/n);
    //self.myLabel.minimumFontSize = (pt);
     */
    self.myLabel.font = [UIFont systemFontOfSize:23];

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
    
    self.myLabel.numberOfLines = 0;
    
    self.myLabel.attributedText = message;
    
    
    


    
//    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 400, 44)];
//    label.backgroundColor = [UIColor clearColor];
//    label.font = [UIFont boldSystemFontOfSize:24.0];
//    label.shadowColor = [UIColor colorWithWhite:0.0 alpha:0.5];
//    label.textAlignment = UITextAlignmentCenter; //iOS6ではdeprecated
//    label.textColor =[UIColor whiteColor];
//    label.text = @"LIFE card";
//    self.navigationItem.titleView = label;
    

    
}





- (void)didReceiveMemoryWarning
{
    
    [super didReceiveMemoryWarning];
    
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

- (IBAction)shareButton:(id)sender
{
    
    NSString *text = @"Hello World!";
    NSArray* actItems = [NSArray arrayWithObjects:text, nil];
    
    UIActivityViewController *activityView = [[UIActivityViewController alloc]
                                              initWithActivityItems:actItems applicationActivities:nil];
    
    [self presentViewController:activityView animated:YES completion:nil];
}
- (IBAction)TrashButton:(id)sender {
}
@end
