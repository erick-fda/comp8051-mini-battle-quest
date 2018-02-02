//
//  ArrowObject.h
//  minibattlequest
//
//  Created by Chris on 2017-02-22.
//  Copyright © 2017 Mini Battle Quest. All rights reserved.
//

#ifndef ArrowObject_h
#define ArrowObject_h
#import "GameObject.h"

@interface ArrowObject : GameObject

@property float damage;
@property bool isEnemy; // prevents friendly fire

@end

#endif /* ArrowObject_h */
