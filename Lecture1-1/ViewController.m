//
//  ViewController.m
//  Lecture1-1
//
//  Created by Student22 on 3/24/15.
//  Copyright (c) 2015 Student22. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    NSLog(@"Text field is ready for typing.");
    return YES;
}

- (IBAction)sayHelloAction:(id)sender {
    NSString *yourName;
    
    if([self.nameTextField.text length] == 0) {
        yourName = @"World";
    }
    else {
        yourName = self.nameTextField.text;
    }
    
    self.sayHelloLabel.text = [NSString stringWithFormat:@"Hello, %@!", yourName];
}

@end
