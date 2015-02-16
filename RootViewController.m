/*RootViewController 的实现*/

#import "RootViewController.h"

@interfacer RootViewController()
@end

@implementation RootViewController

@synthesize timestamp = _timestamp;

- (void)viewDidload {
            [super viewDidload];
            self.timestamp =[NSDate date]; 
            }

- (void)viewWillappear : (BOOL)animated {
            self.timestamp = [NSDate date];
            [self.tableView reloadData];
            }
    
- (void)ViewDidload {
            [super viewDidload];
            self.timestamp = nil;
            }
            
- (void)dealloc {
            [timestemp release];
            [super dealloc];
            }
@end
