/**
 * @file test.m
 * @brief <#brief#>
 * @author hu jian
 * @version <#version#>
 * @date 2/27/12
 */

#import "test.h"
#import <QuartzCore/QuartzCore.h>

@implementation test

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


//--------------------------------------------------------------//
#pragma mark -- View lifecycle --
//--------------------------------------------------------------//
- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.frame = CGRectMake(0, 20, 320, 460);
    
    roundOutMenu.layer.anchorPoint = CGPointMake(0.5, 1);
    roundOutMenu.layer.position = CGPointMake(160, 474);
    roundOutMenu.layer.transform = CATransform3DMakeRotation(M_PI, 0, 0, 1);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)showRoundMenu {
    CABasicAnimation* ani = [CABasicAnimation animationWithKeyPath:@"transform"];
    ani.duration = 0.6;
    ani.autoreverses = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.removedOnCompletion= NO;
    ani.toValue = [NSValue valueWithCATransform3D:CATransform3DRotate(roundOutMenu.layer.transform, -M_PI, 0, 0, 1)];
    [roundOutMenu.layer addAnimation:ani forKey:nil];
}

- (void)hideRoundMenu {
    CABasicAnimation* ani = [CABasicAnimation animationWithKeyPath:@"transform"];
    ani.duration = 0.6;
    ani.autoreverses = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.removedOnCompletion= NO;
    ani.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(M_PI, 0, 0, 1)];
    [roundOutMenu.layer addAnimation:ani forKey:nil];
}

- (IBAction)switchRoundMenu:(UIButton*)button {
    switch (button.tag) {
        case 0: {
            [self showRoundMenu];
        }
            break;
        case 1: {
            [self hideRoundMenu];
        }
            break;
        default:
            break;
    }
    
    button.tag = button.tag == 0 ? 1 : 0;
}


@end
