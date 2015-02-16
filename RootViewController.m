/*RootViewController 的实现*/

#import "RootViewController.h"

@interfacer RootViewController()
@end

@implementation RootViewController

@synthesize timestamp = _timestamp;   /*_实例对象  _timestamp加下划线了，可以区别属性timestamp*/

- (NSDate *)timestamp {
        return _timestamp;
        }
- (void)setTimestamp:(NSDate *)newValue {
    if (_timestamp != newValue) {
            [_timestamp = release];            /*这就是属性中self. 调用set方法的意思，先release掉_timestamp中可能有的东西，在retain，RC+1*/
             _timestamp = [newValue retain];
            }
- (void)viewDidload {
            [super viewDidload];   /*super指的是RootViewController这个类，该类型继承了父类ViewController的ViewDidload方法*/
            self.timestamp =[NSDate date]; /*调用属性timestamp的setTimestamp方法，【NSDate date】date发送消息给NSDate，放回该类型数值类似newValue*/
            }

- (void)viewWillappear : (BOOL)animated {
            self.timestamp = [NSDate date];
            [self.tableView reloadData];
            }
    
- (void)ViewDidUnload {
            [super viewDidload];
            self.timestamp = nil;
            }
            
- (void)dealloc {
            [timestemp release];
            [super dealloc];
            }
@end
