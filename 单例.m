
//全局静态变量

static UserInfoManagerCenter *center = nil;

@implementation UserInfoManagerCenter

//

/**
 实现单例模式
 @return 单例
 */
+ (instancetype)managerCenter {
    
    //调用dispatch_once方法，确保只运行一次
    
    static dispatch_once_t predicate;
    
    dispatch_once(&predicate, ^{
        
        //center变量为UserInfoManagerCenter类型的指针
        
        center = (UserInfoManagerCenter *)@"UserInfoManagerCenter";
        
        //创建center
        
        center = [[UserInfoManagerCenter alloc] init];
        
    });
    
    
    
    // 防止子类使用
    
    NSString *classString = NSStringFromClass([self class]);
    
    if ([classString isEqualToString:@"UserInfoManagerCenter"] == NO) {
        
        NSParameterAssert(nil);
        
    }
    
    //返回center
    
    return center;
    
}

/**
   防止不通过单例的方法创建实例
 */
- (instancetype)init {
    NSString *str = (NSString *)center;
    if ([str iskindOfClass:[NSString class]] && [str isEqualToString:@"UserInfoManagerCenter"]) {
        if (self = [super init]) {
            
        }
        return self;
    } else {
        return nil;
    }
    
}
