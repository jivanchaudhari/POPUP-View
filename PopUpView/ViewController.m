//
//  ViewController.m
//  PopUpView
//
//  Created by Student 13 on 1/19/17.
//  Copyright © 2017 JIvan Chaudhari. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _popUPView.hidden = YES;
    
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[[UIColor greenColor] colorWithAlphaComponent:.6];
    self.popUPView.layer.cornerRadius = 5;
    self.popUPView.layer.shadowOpacity = 0.8;
    self.popUPView.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
    [super viewDidLoad];
    
}

- (void)showAnimate
{
    _popUPView.hidden = NO;

    self.popUPView.transform = CGAffineTransformMakeScale(1.3, 1.3);
    self.popUPView.alpha = 0;
    [UIView animateWithDuration:.25 animations:^{
        self.popUPView.alpha = 1;
        self.popUPView.transform = CGAffineTransformMakeScale(1, 1);
    }];
}
- (void)removeAnimate
{
    [UIView animateWithDuration:.25 animations:^{
        self.popUPView.transform = CGAffineTransformMakeScale(1.3, 1.3);
        self.popUPView.alpha = 0.0;
    } completion:^(BOOL finished) {
        if (finished) {
            [self.popUPView setHidden:YES];
//            _popUPViewhidden = YES;

        }
    }];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)closeButtonAction:(id)sender {
    [self removeAnimate];
}

- (IBAction)showButtonAction:(id)sender {
    [self showAnimate];
}
@end
