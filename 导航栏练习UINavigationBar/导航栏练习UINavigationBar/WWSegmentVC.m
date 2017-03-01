//
//  WWSegmentVC.m
//  导航栏练习UINavigationBar
//
//  Created by 王伟 on 2017/3/1.
//  Copyright © 2017年 王伟. All rights reserved.
//

#import "WWSegmentVC.h"

@interface WWSegmentVC ()

@end

@implementation WWSegmentVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UISegmentedControl *segmentControl = [[UISegmentedControl alloc] initWithItems:@[@"消息",@"电话",@"哈哈哈"]];
    
    // 基本属性：
    // segmentControl.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width - 30, 20);
    [segmentControl setSelectedSegmentIndex:0];
    
    //segmentControl.backgroundColor = [UIColor redColor];
    
    // 控件渲染色
    // segmentControl.tintColor = [UIColor blackColor];
    
    // 插入新的分段--图片
    // [segmentControl insertSegmentWithImage:[UIImage imageNamed:@"658671_8_0_0_560_w_0"] atIndex:0 animated:YES];
    
    // 插入新的分段
    [segmentControl insertSegmentWithTitle:@"设置" atIndex:0 animated:YES];
    
    // 修改分段的--titile
    [segmentControl setTitle:@"厉害了" forSegmentAtIndex:0];
    
    // 修改分段的image
    // [segmentControl setImage:@"658671_8_0_0_560_w_0" forSegmentAtIndex:0];
    
    
    // 根据内容设置分段的宽度
    segmentControl.apportionsSegmentWidthsByContent = YES;
    
    // 设置指定索引分段宽度
    [segmentControl setWidth:100 forSegmentAtIndex:0];
    
    // 设置指定索引标题的位置
    [segmentControl setContentOffset:CGSizeMake(10, 10) forSegmentAtIndex:2];
    
    // 添加点击事件(UIControlEventValueChanged)
    [segmentControl addTarget:self action:@selector(lihaile:) forControlEvents:UIControlEventValueChanged];
    
    // 点击后是否恢复原样
    // segmentControl.momentary = YES;
    
    self.navigationItem.titleView = segmentControl;
    
}

- (void)lihaile:(UISegmentedControl *)segment {
    
    switch (segment.selectedSegmentIndex) {
        case 0:
            NSLog(@"我被点击了0");
            self.view.backgroundColor = [UIColor redColor];
            break;
            
        case 1:
            NSLog(@"我被点击了1");
            self.view.backgroundColor = [UIColor blackColor];
            break;
            
        case 2:
            NSLog(@"我被点击了2");
            self.view.backgroundColor = [UIColor blueColor];
            break;
            
        case 3:
            NSLog(@"我被点击了3");
            self.view.backgroundColor = [UIColor brownColor];
            break;
            
        default:
            NSLog(@"我被点击了4");
            // [self.view.backgroundColor = [UIColor whiteColor];
            break;
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
