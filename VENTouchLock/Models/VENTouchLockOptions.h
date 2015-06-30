#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface VENTouchLockOptions : NSObject

/**-----------------------------------------------------------------------------
 * @description Lock Preferences
 * -----------------------------------------------------------------------------
 */

@property (strong, nonatomic) Class navigationBarClass;
@property (assign, nonatomic) BOOL shouldBlurWhenLocked;
@property (assign, nonatomic) BOOL shouldAutoLockOnAppLifeCycleNotifications;
@property (assign, nonatomic) BOOL splashShouldEmbedInNavigationController;
@property (assign, nonatomic) BOOL passcodeViewControllerShouldEmbedInNavigationController;
@property (assign, nonatomic) BOOL touchIDCancelPresentsPasscodeViewController;

/**-----------------------------------------------------------------------------
 * @description Blur Appearance
 * -----------------------------------------------------------------------------
 */
@property (assign, nonatomic) UIBlurEffectStyle blurEffectStyle;
@property (assign, nonatomic) CGFloat blurDissolveAnimationDuration;


/**-----------------------------------------------------------------------------
 * @description Passcode View Controller Appearance
 * -----------------------------------------------------------------------------
 */
@property (strong, nonatomic) UIColor *passcodeViewControllerTitleColor;
@property (strong, nonatomic) UIColor *passcodeViewControllerCharacterColor;
@property (strong, nonatomic) UIColor *passcodeViewControllerBackgroundColor;
@property (strong, nonatomic) NSString *cancelBarButtonItemTitle;

/**-----------------------------------------------------------------------------
 * @description Create Passcode View Controller Appearance
 * -----------------------------------------------------------------------------
 */
@property (strong, nonatomic) NSString *createPasscodeInitialLabelText;
@property (strong, nonatomic) NSString *createPasscodeConfirmLabelText;
@property (strong, nonatomic) NSString *createPasscodeMismatchedLabelText;
@property (strong, nonatomic) NSString *createPasscodeViewControllerTitle;

/**-----------------------------------------------------------------------------
 * @description Enter Passcode View Controller Appearance
 * -----------------------------------------------------------------------------
 */
@property (strong, nonatomic) NSString *enterPasscodeInitialLabelText;
@property (strong, nonatomic) NSString *enterPasscodeIncorrectLabelText;
@property (strong, nonatomic) NSString *enterPasscodeViewControllerTitle;

@end