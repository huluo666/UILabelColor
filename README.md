# UILabelColor
富文本
UILabel分类，对文本进行格式化显示，创建丰富多彩的文字。简单易用，特别适合于轻量级使用

#使用
设置文字颜色

UILabel *labelC = [[UILabel alloc] init];
NSString *text=@"一卡通公司基于安卓平台开发的“北京一卡通”官方App正式上线。该款App是一卡通公司倾力打造的一站式在线服务平台，集手机充值、快充券购买、网点查询等多重功能于一体，像掌上管家一样，随时随地满足每一位持卡用户的在线服务需求。安卓手机用户可在各大应用市场搜索“北京一卡通”，免费下载使用。";
[labelC setTextColor:[UIColor redColor] range:NSMakeRange(20, 3)];
[labelC setTextColor:[UIColor redColor] String:@"免费下载"];
[labelC setFont:[UIFont fontWithName:@"Courier-Bold" size:14] range:NSMakeRange(20, 8)];

##效果图
![Alt Text](https://github.com/huluo666/UILabelColor/blob/master/githubPic/git1.png)
