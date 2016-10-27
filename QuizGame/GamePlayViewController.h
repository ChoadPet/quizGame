
#import <UIKit/UIKit.h>

@interface GamePlayViewController : UIViewController
    

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;

@property (weak, nonatomic) IBOutlet UITextField *answerField;

@property (weak, nonatomic) IBOutlet UIButton *finishButton;
    
@property (weak, nonatomic) IBOutlet UIButton *solveButton;

-(IBAction)solveAction:(id)sender;


@end

