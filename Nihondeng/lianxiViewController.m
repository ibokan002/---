//
//  lianxiViewController.m
//  Nihondeng
//
//  Created by Ibokan on 12-9-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "lianxiViewController.h"
#import "UIColor_Random.h"
@implementation lianxiViewController

@synthesize view1;
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"%@",self.view);
    self.view.backgroundColor = [UIColor grayColor];//设置view背景颜色
	
    //循环设置7个view
    for (int i=0; i<7; i++) {
       view1=[[UIView alloc]initWithFrame:CGRectMake(60+i*20, 50+i*50, 100, 40)];
        view1.backgroundColor=[UIColor randomColor];//调用自动颜色
        [view1 setTag:i];//给view1设置tag值
        
//       // switch函数
//        switch (i) {
//        case 0:
//                view1.backgroundColor=[UIColor cyanColor];
//              //self.view.tag=0;
//            break;
//        case 1:
//            view1.backgroundColor=[UIColor greenColor];
//            break;
//        case 2:
//            view1.backgroundColor=[UIColor redColor];
//                
//            break;
//        case 3:
//            view1.backgroundColor=[UIColor blueColor];
//            break;
//        case 4:
//            view1.backgroundColor=[UIColor orangeColor];
//            break;
//        case 5:
//            view1.backgroundColor=[UIColor yellowColor];
//            break;
//        case 6:
//            view1.backgroundColor=[UIColor purpleColor];
//            break;
//        default:
//            break;
//        }
        
        [self.view addSubview:view1];//把view1添加到self.view
        [view1 release];//释放内存

    }
 
//   
//    UIButton *button1=[[UIButton alloc]initWithFrame:CGRectMake(100, 420, 80, 40)];
//    button1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    UIButton *button2=[[UIButton alloc]initWithFrame:CGRectMake(200, 420, 80, 40)];
//    button2=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    UIButton *button1=[UIButton buttonWithType:1];//初始化button类型
    button1.frame = CGRectMake(100, 420, 80, 40);//初始化frame坐标
    UIButton *button2=[UIButton buttonWithType:1];
    button2.frame = CGRectMake(200, 420, 80, 40);
    
    button1.backgroundColor=[UIColor greenColor];//button1增添颜色
    button2.backgroundColor=[UIColor greenColor];
    [button1 setTitle:@"美女" forState:UIControlStateNormal];//增加名字
    [button2 setTitle:@"凤姐" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(addTimer) forControlEvents:UIControlEventTouchUpInside ];//添加实现方法                                   button按钮状态
    [button2 addTarget:self action:@selector(fengjie) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button1];//向view加载button1
    [self.view addSubview:button2];
    }

//定时器触发开始
-(void)addTimer
{
    //定时器调用 kaishi 方法
  timer=[NSTimer scheduledTimerWithTimeInterval:0.2 target:self selector:@selector(meinv) userInfo:nil repeats:YES];   
}

//定时器触发结束
//-(void)fire1;
//{
//    //定时器调用 tingba 方法
//    [NSTimer scheduledTimerWithTimeInterval:0.0 target:self selector:@selector(fengjie) userInfo:nil repeats:NO];   
//}
-(void)meinv
{
    self.view.tag = 100;//为了防止tag=0与self.view冲突，把self.view.tag设为不与使用的tag值重复的数字
    UIColor *color =[[UIColor alloc]init];//初始化一个color
    color=[self.view viewWithTag: 0 ].backgroundColor;//把tag=0的view的颜色赋给color 下面类推
    [self.view viewWithTag: 0 ].backgroundColor=[self.view viewWithTag: 1 ].backgroundColor;
    [self.view viewWithTag: 1 ].backgroundColor=[self.view viewWithTag: 2 ].backgroundColor;
    [self.view viewWithTag: 2 ].backgroundColor=[self.view viewWithTag: 3 ].backgroundColor;
    [self.view viewWithTag: 3 ].backgroundColor=[self.view viewWithTag: 4 ].backgroundColor;
    [self.view viewWithTag: 4 ].backgroundColor=[self.view viewWithTag: 5 ].backgroundColor;
    [self.view viewWithTag: 5 ].backgroundColor=[self.view viewWithTag: 6 ].backgroundColor;
    [self.view viewWithTag: 6 ].backgroundColor=color;//把color存储的颜色赋给最后tag=6的view的颜色
}
-(void)fengjie
{
    [timer invalidate]; //定时器停止
}


//- (void)viewDidUnload
//{
//    [super viewDidUnload];
//    // Release any retained subviews of the main view.
//    // e.g. self.myOutlet = nil;
//}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
