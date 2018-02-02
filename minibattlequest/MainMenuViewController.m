/*========================================================================================
    MainMenuViewController
	
	Displays the main menu.
	
	@author Erick Fernandez de Arteaga - https://www.linkedin.com/in/erickfda
	@version 0.1.0
	@file
	
 ========================================================================================*/

/*========================================================================================
	Dependencies
 ========================================================================================*/
#import <Foundation/Foundation.h>
#import "MainMenuViewController.h"
#import "MBQDataManager.h"
#import "LeaderboardScore+Util.h"

@interface MainMenuViewController ()
{
    /*------------------------------------------------------------------------------------
        Instance Variables
     ------------------------------------------------------------------------------------*/
    
}

/*----------------------------------------------------------------------------------------
    Instance Properties
 ----------------------------------------------------------------------------------------*/
//Audio stuff
@property (strong, nonatomic) AVAudioPlayer *backgroundMusic;

@end

@implementation MainMenuViewController
/*----------------------------------------------------------------------------------------
    Property Synthesizers
 ----------------------------------------------------------------------------------------*/


/*----------------------------------------------------------------------------------------
	Instance Methods
 ----------------------------------------------------------------------------------------*/
-(void)viewDidLoad
{
    /* On load, hide the navigation bar and enable swipe navigation. */
    [self.navigationController setNavigationBarHidden:YES];
    [self.navigationController.interactivePopGestureRecognizer setDelegate:nil];
    
    /* Put in some dummy data. */
//    [[MBQDataManager instance] performWithDocument:^(UIManagedDocument *document) {
//        [LeaderboardScore addScoreWithValue:100 inManagedObjectContext:document.managedObjectContext];        [LeaderboardScore addScoreWithValue:5000 inManagedObjectContext:document.managedObjectContext];
//       [LeaderboardScore addScoreWithValue:400 inManagedObjectContext:document.managedObjectContext];
//        [LeaderboardScore addScoreWithValue:200 inManagedObjectContext:document.managedObjectContext];
//        [LeaderboardScore addScoreWithValue:300 inManagedObjectContext:document.managedObjectContext];
//   }];
    
    //Background music
    NSURL *music1 = [[NSBundle mainBundle] URLForResource:@"QuestThroughTime" withExtension:@"mp3"];
    self.backgroundMusic = [[AVAudioPlayer alloc] initWithContentsOfURL:music1 error:nil];
    [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryPlayAndRecord withOptions:AVAudioSessionCategoryOptionDefaultToSpeaker error: nil];
    self.backgroundMusic.numberOfLoops = -1;
    [self.backgroundMusic play];
}

-(void)viewWillAppear:(BOOL)animated
{
    [self.backgroundMusic play];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if([segue.identifier  isEqual: @"GameViewSegue"])
    {
        [self.backgroundMusic stop];
        self.backgroundMusic.currentTime = 0;
    }
    
}

@end
