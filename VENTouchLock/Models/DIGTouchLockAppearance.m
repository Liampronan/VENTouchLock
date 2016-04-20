#import "DIGTouchLockAppearance.h"

@implementation DIGTouchLockAppearance

- (instancetype)init
{
    self = [super init];
    if (self) { // Set default values
        self.passcodeViewControllerBackgroundColor = [UIColor colorWithRed:255/255.0f green:255/255.0f blue:255/255.0f alpha:1.0f];
        self.createPasscodeInitialLabelText = NSLocalizedString(@"Set a passcode in case we have trouble authenticating with Touch ID.", nil);
    }
    return self;
}

@end
