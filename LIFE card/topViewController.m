//
//  topViewController.m
//  LIFE card
//
//  Created by shuntaro kubo on 2014/08/02.
//  Copyright (c) 2014年 shuntaro kubo. All rights reserved.
//

#import "topViewController.h"
#import "LINEActivity.h"

@interface topViewController ()

@end

@implementation topViewController

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems

{
    for (id activityItem in activityItems) {
    
    if ([activityItem isKindOfClass:[NSString class]] || [activityItem isKindOfClass:[UIImage class]])
        {
            return YES;
}
}
    return NO;
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
    
    //self.mytextView.text = @"臓器移植を待つ人の為に私たちが出来る事\nそれが臓器提供の意思表示です。\n軽々しく決めることでなく、\nノーといってもいい。\n大事なのは意思を示すこと。\nひとりひとりが他人事ではなく、自分の事としてこの問題を考え、\n意思表示という行動をとる事が、移植医療の大きな一歩になる。\nそう思うのです。\n従来の「意思表示カード」に加え、\n健康保険証や運転免許証、\nさらにはインターネットでも\n意思表示が出来るように\nなりました。";
    
    //self.mytextView.font = [UIFont boldSystemFontOfSize:20.0];
    
    
    
    self.mytextView.editable = NO;

    //NSMutableAttributedString *message = [[NSMutableAttributedString alloc] initWithString:@""];
    
    //NSMutableParagraphStyle *paraStyle_L = [[NSMutableParagraphStyle alloc] init];
    //[paraStyle_L setAlignment:NSTextAlignmentLeft];
    
    NSMutableParagraphStyle *paraStyle_C = [[NSMutableParagraphStyle alloc] init];
    [paraStyle_C setAlignment:NSTextAlignmentCenter];
    
    //NSMutableParagraphStyle *paraStyle_R = [[NSMutableParagraphStyle alloc] init];
    //[paraStyle_R setAlignment:NSTextAlignmentRight];
    
    
//
    NSDictionary *stringAttributes = @{
    NSForegroundColorAttributeName : [UIColor colorWithWhite:0.0 alpha:0.5],
    NSFontAttributeName : [UIFont systemFontOfSize:18.0f],
    NSParagraphStyleAttributeName:paraStyle_C};
    
    NSString *str = @"私たちが出来る事\nそれが臓器提供の意思表示です。\n軽々しく決めることでなく\nノーといってもいい。\n大事なのは全ての事において\n自らの意思を示すこと。\nひとりひとりが他人事ではなく\n自分の事として問題を考え\n意思表示という行動をとる事が\n大きな一歩になる。\nそう思うのです。\n従来の「意思表示カード」に加え\n健康保険証や運転免許証\nさらにはインターネット\n様々なカタチで意思表示が出来る\nようになりました。";
    
    NSAttributedString* value = [[NSAttributedString alloc] initWithString:str
                                            attributes:stringAttributes];
    
  //@{NSParagraphStyleAttributeName:paraStyle_C}];
    //UIFont *font = [UIFont fontWithName:@"" size:21.f];
    
    
    //[message appendAttributedString:value];
    
    //テキストビューの編集不可に
    self.mytextView.editable = NO;

    self.mytextView.attributedText = value; //message;

    //_naviTitle.title = @"LIFE card";
    
    //プロパティタブバーの色変更
    //UITabBar *tabber = self.tabBarController.tabBar;
    //tabber.barTintColor = [UIColor colorWithRed:0.700 green:0.200 blue:0.200 alpha:0.900];
    
    
//    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 400, 44)];
//    label.backgroundColor = [UIColor clearColor];
//    label.font = [UIFont boldSystemFontOfSize:24.0];
//    label.shadowColor = [UIColor colorWithWhite:0.0 alpha:0.5];
//    label.textAlignment = UITextAlignmentCenter; //iOS6ではdeprecated
//    label.textColor =[UIColor whiteColor];
//    label.text = @"LIFE card";
//    self.navigationItem.titleView = label;
  
    
    //switchをYESにした時は、初期表示画面を意思表示画面にする。
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    BOOL SwitchStatus =[defaults boolForKey:@"SwitchStatus"];
    
    
    if (SwitchStatus)
    {
        
        self.tabBarController.selectedIndex = 2;
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

- (IBAction)tapButton2:(id)sender

{
    //self.mytextView.text = @"臓器の説明２";
    //画面遷移の仕方
    top2ViewController *top2ViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"top2ViewController"];
//    [self presentViewController:top2ViewController animated:YES completion:nil];
   
    [[self navigationController] pushViewController:top2ViewController animated:YES];
       
    
}

- (void)shareItem:(id)item

{
    //LINEを表示させるソースコード
    NSArray *activityItems = @[item];
   
    NSArray *applicationActivities = @[[[LINEActivity alloc] init]];
   
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:applicationActivities];
    
    [self presentViewController:activityViewController animated:YES completion:NULL];
    
}

- (IBAction)sharebutton:(id)sender

{
    
//    [self shareItem:@"test"];
//    NSLog(@"ok");
    
    /*
    NSString *text = @"Hello World!";
    NSArray* actItems = [NSArray arrayWithObjects:text, nil];
    
    UIActivityViewController *activityView = [[UIActivityViewController alloc]
                                              initWithActivityItems:actItems applicationActivities:nil];
    
    
    [self presentViewController:activityView animated:YES completion:nil];
    */
    
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
@end
