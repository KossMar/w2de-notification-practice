//
//  FirstViewController.m
//  Notification-practice
//
//  Created by Mar Koss on 2017-10-15.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UIStepper *stepper;
@property (nonatomic) NSDictionary *dictionary;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
}

- (IBAction)stepperChangedValue:(UIStepper *)sender {
    NSNumber *stepperValueObject = [NSNumber numberWithDouble:sender.value];
    NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:stepperValueObject, @"stepperValue", nil];
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];


    NSNotification *notification = [NSNotification notificationWithName:@"stepperChange"
                                       object:self
                                     userInfo:dictionary];
    
    [notificationCenter postNotification:notification];
    
//    [notificationCenter postNotificationName:@"stepperChange" object:self userInfo:dictionary];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
