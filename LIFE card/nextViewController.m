//
//  nextViewController.m
//  LIFE card
//
//  Created by shuntaro kubo on 2014/08/05.
//  Copyright (c) 2014年 shuntaro kubo. All rights reserved.
//

#import "nextViewController.h"
#import "LINEActivity.h"


@interface nextViewController ()

@end

@implementation nextViewController

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
    
//    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 400, 44)];
//    label.backgroundColor = [UIColor clearColor];
//    label.font = [UIFont boldSystemFontOfSize:24.0];
//    label.shadowColor = [UIColor colorWithWhite:0.0 alpha:0.5];
//    label.textAlignment = UITextAlignmentCenter; //iOS6ではdeprecated
//    label.textColor =[UIColor whiteColor];
//    label.text = @"LIFE card";
//    self.navigationItem.titleView = label;
    
//    //テキストビューの編集不可に
//    self.label.editable = NO;
    
}

- (void)didReceiveMemoryWarning

{
    [super didReceiveMemoryWarning];
    
    
//    UIViewController *hogeViewController = [[thirdViewController alloc] init];
//    
//    hogeViewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
//    //hogeViewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    [self dismissViewControllerAnimated:YES completion:nil];

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

- (void)shareItem:(id)item

{
<<<<<<< HEAD
   
   //シェア時に表示させるもの
    NSString *text = @"Hello World!";
=======
    //LINEを表示させるソースコード
    NSArray *activityItems = @[item];
    
    NSArray *applicationActivities = @[[[LINEActivity alloc] init]];
>>>>>>> FETCH_HEAD
    
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:applicationActivities];
    
    [self presentViewController:activityViewController animated:YES completion:NULL];
    
}


- (IBAction)shareButton:(id)sender

{
   
   //シェア時に表示させるもの
//    NSString *text = @"Hello World!";
//    
//    NSArray* actItems = [NSArray arrayWithObjects:text, nil];
//    
//    UIActivityViewController *activityView = [[UIActivityViewController alloc]
//                                              initWithActivityItems:actItems applicationActivities:nil];
//    
//    [self presentViewController:activityView animated:YES completion:nil];
    
    
    [self shareItem:@"test"];
    
}

- (IBAction)slideButton:(id)item

{
    //LINEを表示させるソースコード
    NSArray *activityItems = @[item];
    
    NSArray *applicationActivities = @[[[LINEActivity alloc] init]];
    
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:applicationActivities];
    
    [self presentViewController:activityViewController animated:YES completion:NULL];
    
    top2ViewController *top2ViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"top2ViewController"];
    //    [self presentViewController:top2ViewController animated:YES completion:nil];
    
     [[self navigationController] pushViewController:top2ViewController animated:YES];
    
}
@end
