//
//  ViewController.m
//  Action Slider
//
//  Created by Billy Ellis on 02/02/2016.
//  Copyright © 2016 iCloud Bypass. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//This is based on the default UIActionSlider used by SpringBoard on iOS 7.1+
//This obviously needs a little work to make it function better but you guys can play around with that for yourselves.
//This is just a simple test application demoing what I have created so far
//Enjoy and please credit me if you are using this in your own apps!! :D

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    gesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(pan)];
    
    [self.view addGestureRecognizer:gesture];
}

-(void)pan{
    
    //i know this code is horrible but it sort of works XD If you know a better way of doing something like this then please let me know
    
    CGPoint point = [gesture locationInView:self.view];
    
    int num = point.x;
    
    knob.center = CGPointMake(num, knob.center.y);
    
    if (knob.center.x < 95){
        knob.center = CGPointMake(95, knob.center.y);
    }
    
    if (knob.center.x > 274){
        
        //put anything here (for when the user slides the action slider)
        
        knob.center = CGPointMake(274, knob.center.y);

        [self.view removeGestureRecognizer:gesture];
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Action Slider" message:@"The action slider works! Put whatever code you want here." delegate:self cancelButtonTitle:@"Great!" otherButtonTitles:nil];
        [alert show];
        
        //or call another method
        
        [self myMethod];
        
    }
}

-(void)myMethod{
    
    NSLog(@"myMethod was called");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
