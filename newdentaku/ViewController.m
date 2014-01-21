//
//  ViewController.m
//  newdentaku
//
//  Created by 松山　大樹 on 13/11/28.
//  Copyright (c) 2013年 Univercity of Kitakyushu. All rights reserved.
//

#import "ViewController.h"

int Method;
int SelectNumber;
float RunningTotal;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Btn0:(id)sender {
    
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +0;
    Result.text = [NSString stringWithFormat:@"%i", SelectNumber];
}

- (IBAction)Btn1:(id)sender {
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +1;
    Result.text = [NSString stringWithFormat:@"%i", SelectNumber];

}

- (IBAction)Btn2:(id)sender {
    
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +2;
    Result.text = [NSString stringWithFormat:@"%i", SelectNumber];
}

- (IBAction)Btn3:(id)sender {
    
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +3;
    Result.text = [NSString stringWithFormat:@"%i", SelectNumber];
}

- (IBAction)Btn4:(id)sender {
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +4;
    Result.text = [NSString stringWithFormat:@"%i", SelectNumber];

}

- (IBAction)Btn5:(id)sender {
    
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +5;
    Result.text = [NSString stringWithFormat:@"%i", SelectNumber];
}

- (IBAction)Btn6:(id)sender {
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +6;
    Result.text = [NSString stringWithFormat:@"%i", SelectNumber];

}

- (IBAction)Btn7:(id)sender {
    
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +7;
    Result.text = [NSString stringWithFormat:@"%i", SelectNumber];
}

- (IBAction)Btn8:(id)sender {
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +8;
    Result.text = [NSString stringWithFormat:@"%i", SelectNumber];

}

- (IBAction)Btn9:(id)sender {
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +9;
    Result.text = [NSString stringWithFormat:@"%i", SelectNumber];

}

- (IBAction)AllClearBtn:(id)sender {
    SelectNumber = 0;
    Method = 0;
    RunningTotal = 0;
    
    Result.text = [NSString stringWithFormat:@"0"];
}

- (IBAction)TasuBtn:(id)sender {
    if (RunningTotal == 0) {
        RunningTotal = SelectNumber;
    }
    
    if (Method == 4) {
        RunningTotal = RunningTotal + SelectNumber;
    }
    if (Method == 3) {
        RunningTotal = RunningTotal - SelectNumber;
    }
    if (Method == 2) {
        RunningTotal = RunningTotal * SelectNumber;
    }
    if (Method == 1) {
        RunningTotal = RunningTotal / SelectNumber;
    }
    Method = 4;
    SelectNumber = 0;
}

- (IBAction)HikuBtn:(id)sender {
    if (RunningTotal == 0) {
        RunningTotal = SelectNumber;
    }
    if (Method == 4) {
        RunningTotal = RunningTotal + SelectNumber;
    }
    if (Method == 3) {
        RunningTotal = RunningTotal - SelectNumber;
    }
    if (Method == 2) {
        RunningTotal = RunningTotal * SelectNumber;
    }
    if (Method == 1) {
        RunningTotal = RunningTotal / SelectNumber;
    }
    Method = 3;
    SelectNumber = 0;
}

- (IBAction)KakeruBtn:(id)sender {
    if (RunningTotal == 0) {
        RunningTotal = SelectNumber;
    }
    if (Method == 4) {
        RunningTotal = RunningTotal + SelectNumber;
    }
    if (Method == 3) {
        RunningTotal = RunningTotal - SelectNumber;
    }
    if (Method == 2) {
        RunningTotal = RunningTotal * SelectNumber;
    }
    if (Method == 1) {
        RunningTotal = RunningTotal / SelectNumber;
    }
    Method = 2;
    SelectNumber = 0;
}

- (IBAction)WaruBtn:(id)sender {
    if (RunningTotal == 0) {
        RunningTotal = SelectNumber;
    }
    if (Method == 4) {
        RunningTotal = RunningTotal + SelectNumber;
    }
    if (Method == 3) {
        RunningTotal = RunningTotal - SelectNumber;
    }
    if (Method == 2) {
        RunningTotal = RunningTotal * SelectNumber;
    }
    if (Method == 1) {
        RunningTotal = RunningTotal / SelectNumber;
    }
    Method = 1;
    SelectNumber = 0;
}

- (IBAction)EqualBtn:(id)sender {
    if (RunningTotal == 0) {
        RunningTotal = SelectNumber;
    }
    else{
        
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal / SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal * SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
                
                default:
                break;
        }
    }
    Method = 0;
    SelectNumber = 0;
    
    Result.text = [NSString stringWithFormat:@"%.f",RunningTotal];
}

@end
