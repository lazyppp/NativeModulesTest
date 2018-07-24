  //
//  DeviceInformation.m
//  NativeModulesTest
//
//  Created by 洋一郎 日野 on 2018/07/24.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "DeviceInformation.h"
// 次の行を追加。UIDevice クラスを利用するのに必要
#import <UIKit/UIKit.h>

@implementation DeviceInformation
// JavaScript側にこのモジュール(DeviceInformation)を公開するよというマクロ。
// マクロとはC言語系の言語で使われるコンパイル時に置き換えて使用できる関数や定数のこと。
RCT_EXPORT_MODULE();
// JavaScript側に公開する関数の定義。getOSInfo(最初の:まで） が公開される関数名となる。
RCT_EXPORT_METHOD(getOSInfo:(RCTResponseSenderBlock)callback) {
  // callbackに返り値となる値を配列で渡す
  callback(@[@"iOS", [UIDevice currentDevice].systemVersion]);
}
@end
