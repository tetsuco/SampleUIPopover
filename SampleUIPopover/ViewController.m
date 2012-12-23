//
//  ViewController.m
//  SampleUIPopover
//
//  Created by  on 11/11/01.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize popOver = _popOver;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // ボタンを設置
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(284, 462, 200, 50);
    [btn setTitle:@"ポップオーバーを表示する" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}


// ボタンアクション
-(void)btnAction:(UIButton*)sender
{
    // PickerViewControllerを生成
    PickerViewController *pickerViewController;
    pickerViewController = [[PickerViewController alloc]
                            initWithNibName:@"PickerViewController"
                            bundle:nil];
    pickerViewController.contentSizeForViewInPopover = CGSizeMake(300, 216);    // 表示サイズ指定（重要）
    
    
    /* UIPopoverController */
    
    if (self.popOver == nil)
    {
        self.popOver = [[UIPopoverController alloc] initWithContentViewController:pickerViewController];
        self.popOver.delegate = self;
    }
    
    // ポップオーバーが現在表示されていなければ表示する
    if (!self.popOver.popoverVisible)
    {
        [self.popOver presentPopoverFromRect:CGRectMake(sender.frame.origin.x + 100, sender.frame.origin.y + sender.frame.size.height + 20, 0, 0)
                                      inView:self.view
                    permittedArrowDirections:UIPopoverArrowDirectionUp   // 矢印の向きを指定する
                                    animated:YES];
    }
}


@end
