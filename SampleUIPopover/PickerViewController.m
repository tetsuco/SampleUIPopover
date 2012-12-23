//
//  PickerViewController.m
//  SampleUIPopover
//
//  Created by  on 11/11/01.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "PickerViewController.h"

@implementation PickerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // ピッカーを表示
    UIPickerView *piv = [[UIPickerView alloc] init];
    piv.delegate = self;    // デリゲートを自分自身に設定
    piv.dataSource = self;  // データソースを自分自身に設定
    piv.showsSelectionIndicator = YES;  // 選択中の行に目印を付ける
    [piv setFrame:CGRectMake(0, 0, 300, 220)];
    [self.view addSubview:piv];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}


// 列数
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView*)pickerView
{
    return 1;
}

// 行数
- (NSInteger)pickerView:(UIPickerView*)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 10;
}

// 行の内容
-(NSString*)pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    // 行インデックス番号を返す
    return [NSString stringWithFormat:@"%d", row];
}

// 選択された場合に呼ばれる
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"row = %d", row);
}


@end
