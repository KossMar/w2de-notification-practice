//
//  SecondViewController.m
//  Notification-practice
//
//  Created by Mar Koss on 2017-10-15.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *stepperValueLabel;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(notificationRecieved:)
                                                 name:@"stepperChange"
                                               object:nil];


}

- (void)viewWillAppear:(BOOL)animated {
    
}

-(void)notificationRecieved:(NSNotification*)notification {
    NSString *thing = [[notification.userInfo objectForKey:@"stepperValue"] stringValue];
    self.stepperValueLabel.text = thing;

}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"stepperChange" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
