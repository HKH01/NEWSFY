//
//  deleteFootPrintService.m
//  ForU
//
//  Created by administrator on 15/10/21.
//  Copyright © 2015年 胡礼节. All rights reserved.
//

#import "deleteFootPrintService.h"

@implementation deleteFootPrintService

-(void)deleteFootPrint:(NSMutableDictionary *)dic andMessage:(void (^)(NSMutableDictionary *))success{
    NSString *url = @"http://115.29.176.50/interface/deleteFootPrint.php";
    AFHTTPRequestOperationManager *manager=[AFHTTPRequestOperationManager manager];
    manager.responseSerializer=[AFHTTPResponseSerializer serializer];
    [manager POST:url parameters:dic success:^(AFHTTPRequestOperation *Operation, NSData *data) {
        NSMutableDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
        success(dic);
    } failure:^(AFHTTPRequestOperation *RequestOperation, NSError *error) {
//        NSLog(@"请求失败:%@",error);
        NSLog(@"请求失败");
    }];
}

@end
