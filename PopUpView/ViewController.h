//
//  ViewController.h
//  PopUpView
//
//  Created by Student 13 on 1/19/17.
//  Copyright © 2017 JIvan Chaudhari. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *popUPView;

- (IBAction)closeButtonAction:(id)sender;
- (IBAction)showButtonAction:(id)sender;

@end

