//
//  ViewController.m
//  gestureTest
//
//  Created by r on 2013. 11. 6..
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //테스트 뷰 객체 생성
    testView = [UIView new];
    testView.frame = CGRectMake(10, 10, 100, 100);
    testView.backgroundColor =[UIColor redColor];

    [self.view addSubview:testView];
    
}

- (IBAction)pinchTest:(id)sender {
    UIPinchGestureRecognizer * recognizer = (UIPinchGestureRecognizer *) sender;

    //sender을 그대로 사용하면 에러가 난다
    CGAffineTransform transform = CGAffineTransformMakeScale([recognizer scale], [recognizer scale]);
    testView.transform = transform;
}

- (IBAction)rotationTest:(id)sender {

    CGAffineTransform transform = CGAffineTransformMakeRotation([sender rotation]);
    testView.transform = transform;
    
}
- (IBAction)dragTest:(id)sender {
    UILongPressGestureRecognizer *touch = (UILongPressGestureRecognizer *)sender;
    CGPoint point = [touch locationInView:self.view];
    testView.center = point;

}

@end
