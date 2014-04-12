//
//  BIDTaskDetailViewController.h
//  MySegNav
//
//  Created by liweihua on 14-4-10.
//  Copyright (c) 2014年 lwh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDTaskDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (copy, nonatomic) NSDictionary *selection;
@property (weak, nonatomic) id delegate;

@end
