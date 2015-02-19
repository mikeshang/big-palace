Copyright mikeshang

#import <UIKit/UIKit.h>
@class BPViewController;

@param sender The <FBViewController> that is being dismissed.
@param donePressed If YES, Done was pressed. If NO, Cancel was pressed.

typedef void (^BPModalCompletionHandler)(BPViewController *sender, BOOL donePressed); /*处理实现形式*/

@protocol BPViewControllerDelegate <NSObject>
@optional
- (void)bigpalaceViewControllerCancelWasPressed:(id)sender;
- (void)bigpalaceViewControllerDoneWasPressed:(id)sender;
@end

@interface BPViewController : UIViewController

@property (nonatomic, retain) IBOutlet UIBarButtonItem *cancelButton;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *doneButton;
@property (nonatomic, assign) IBOutlet id<FBViewControllerDelegate> delegate;
 @property (nonatomic, readonly, retain) UIView *canvasView;

- (void)presentModallyFromViewController:(UIViewController *)viewController
animated:(BOOL)animated
handler:(FBModalCompletionHandler)handler;
@end
