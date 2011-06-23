#import <UIKit/UIKit.h>
static UIButton *btn;

%hook SBUIController
-(void)finishLaunching{
%orig;
	
	btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	btn.frame = CGRectMake(15.0, 375.0 ,280.0, 20.0);
[btn setTitle:@"Respring" forState:UIControlStateNormal];
[btn setTitle:@"Done" forState:UIControlStateHighlighted];
[btn setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];

[btn addTarget:self action:@selector(respring:) forControlEvents:UIControlEventTouchDown];
[[self window] addSubview:btn];
}


%new(v@:@@)

-(void)respring:(id)sender{
[[UIApplication sharedApplication] relaunchSpringBoard];
}

%end