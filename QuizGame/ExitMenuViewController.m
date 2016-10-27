
#import "ExitMenuViewController.h"

@interface ExitViewController ()

@end

@implementation ExitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *levelReached = [[NSUserDefaults standardUserDefaults]stringForKey:@"levelReached"];
    int intForString  = [levelReached intValue];
    intForString = intForString + 1;
    
    NSString  *stringForLabel = [NSString stringWithFormat:@"YOU HAVE REACHED %i LEVEL", intForString];
    
    highestLevelReached.text = stringForLabel;
    
    
}


-(IBAction)exit:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
