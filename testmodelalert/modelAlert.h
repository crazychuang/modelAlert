//
//  modelAlert.h
//  naoku_EChannel
//
//  Created by 王小贱 on 13-9-20.
//  Copyright (c) 2013年 bravetorun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface modelAlert : NSObject <UIAlertViewDelegate>
{
    bool _bEnd;
    int _nSelected;
}

- (int)showModelAlertMsg:(NSString *)_strMsg title:(NSString *)_strTitle okBtn:(NSString *)_strOk cancelBtn:(NSString *)_strCancel otherBtn:(NSString *)_strOther,...;
@end
