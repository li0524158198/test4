//
//  BIDTaskDetailViewController.m
//  MySegNav
//
//  Created by liweihua on 14-4-10.
//  Copyright (c) 2014年 lwh. All rights reserved.
//

#import "BIDTaskDetailViewController.h"

@interface BIDTaskDetailViewController ()

@end

@implementation BIDTaskDetailViewController

@synthesize textView;
@synthesize selection;
@synthesize delegate;

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
	// Do any additional setup after loading the view.
    textView.text = [selection objectForKey:@"object"];
    [textView becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    if ([delegate respondsToSelector:@selector(setEditedSelection:)]) {
        [textView endEditing:YES];
        NSIndexPath *indexPath = [selection objectForKey:@"indexPath"];
        id object = textView.text;
        
        NSDictionary *editedSelection= [NSDictionary dictionaryWithObjectsAndKeys:
                                        indexPath,@"indexPath",
                                        object,@"object",
                                        nil];
        [delegate setValue:editedSelection forKey:@"editedSelection"];
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
