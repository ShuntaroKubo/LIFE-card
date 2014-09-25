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
    
    
//    [self shareItem:@"test"];
    
    UIImage *windowImage = [self screenshotWithView:self.view];
    
    //シェア用文章,URL,画像（モダンな書き方）
    NSString *text = @"LIFE card ~Think For Action~ ";
    
    NSArray *actItems = @[text,windowImage];
    
    UIActivityViewController *activityView = [[UIActivityViewController alloc]
                                              initWithActivityItems:actItems applicationActivities:nil];
    
    
    [self presentViewController:activityView animated:YES completion:nil];
    
}

//スクリーンショットを取る
- (UIImage *)screenshotWithView:(UIView *)view
{
    CGSize imageSize = [self.view bounds].size;
    if (NULL != UIGraphicsBeginImageContextWithOptions)
        UIGraphicsBeginImageContextWithOptions(imageSize, NO, 0);
    else
        UIGraphicsBeginImageContext(imageSize);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, [view center].x, [view center].y);
    CGContextConcatCTM(context, [view transform]);
    CGContextTranslateCTM(context,
                          -[view bounds].size.width * [[view layer] anchorPoint].x - view.frame.origin.x,
                          -[view bounds].size.height * [[view layer] anchorPoint].y - view.frame.origin.y);
    
    [[view layer] renderInContext:context];
    
    CGContextRestoreGState(context);
    
    // Retrieve the screenshot image
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

<<<<<<< HEAD

- (IBAction)slideButton:(id)sender
=======
- (IBAction)slideButton:(id)item
>>>>>>> FETCH_HEAD

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
