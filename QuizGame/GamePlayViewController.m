
#import "GamePlayViewController.h"


@interface GamePlayViewController ()

@end

int usersHighestLevel;

@implementation GamePlayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *levelReached = [[NSUserDefaults standardUserDefaults]stringForKey:@"levelReached"];
    usersHighestLevel = [levelReached intValue];
    
    
    //UI adjustments
    self.finishButton.layer.borderWidth = 1.0f;
    self.finishButton.layer.borderColor = [[UIColor whiteColor]CGColor];
    self.solveButton.layer.borderWidth = 1.0f;
    self.solveButton.layer.borderColor = [[UIColor whiteColor]CGColor];
    [self.answerField becomeFirstResponder];
    
    [self questions];
}

-(void)viewDidAppear:(BOOL)animated {
    
    [self.answerField becomeFirstResponder];
    
}

-(void) questions {
    self.answerField.text = nil;
    
    if (usersHighestLevel == 0) {
        // QUESTION 1
        
        self.questionLabel.text = @"30 + 12";
    }
    if (usersHighestLevel == 1) {
        //QUESTION 2
        
        self.questionLabel.text = @"What is the largest organ of the body";
    }
    if (usersHighestLevel == 2) {
        //QUESTION 3
        
        self.questionLabel.text = @"What is the pumping organ of the body";
        
    }
    if (usersHighestLevel == 3) {
        //QUESTION 4
        
        self.questionLabel.text = @"H2O";
        
    }
    if (usersHighestLevel == 4) {
        //QUESTION 5
        
        self.questionLabel.text = @"What is the smallest bone in human body";
    }

}


-(IBAction)solveAction:(id)sended {
    
    if (usersHighestLevel == 0 && [self.answerField.text isEqualToString:@"42"]) {
        usersHighestLevel = 1;
        NSString *completedLvl = @"1";
        [[NSUserDefaults standardUserDefaults] setObject:completedLvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self questions];
    }
    else
    {
        self.answerField.text = nil;
    }
    
    if (usersHighestLevel == 1 && [self.answerField.text isEqualToString:@"SKIN"]) {
        usersHighestLevel = 2;
        NSString *completedLvl = @"2";
        [[NSUserDefaults standardUserDefaults] setObject:completedLvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self questions];
    }
    else
    {
        self.answerField.text = nil;
    }
    /*if (usersHighestLevel == 2 && [self.answerField.text isEqualToString:@"HEART"]) {
        usersHighestLevel = 3;
        NSString *completedLvl = @"3";
        [[NSUserDefaults standardUserDefaults] setObject:completedLvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self questions];
    }
    else
    {
        self.answerField.text = nil;
    }
    if (usersHighestLevel == 3 && [self.answerField.text isEqualToString:@"WATER"]) {
        usersHighestLevel = 4;
        NSString *completedLvl = @"4";
        [[NSUserDefaults standardUserDefaults] setObject:completedLvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self questions];

    }
    else
    {
        self.answerField.text = nil;
    }
    
    if (usersHighestLevel == 4 && [self.answerField.text isEqualToString:@"STAPES"]) {
        usersHighestLevel = 5;
        NSString *completedLvl = @"5 ";
        [[NSUserDefaults standardUserDefaults] setObject:completedLvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self questions];
    }
    else
    {
        self.answerField.text = nil;
    }*/

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
