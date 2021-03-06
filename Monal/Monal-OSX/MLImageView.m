//
//  MLImageView.m
//  Monal
//
//  Created by Anurodh Pokharel on 10/1/16.
//  Copyright © 2016 Monal.im. All rights reserved.
//

#import "MLImageView.h"

@implementation MLImageView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (void)mouseDown:(NSEvent *)theEvent
{
    if (theEvent.type != NSLeftMouseDown) {
        [super mouseDown:theEvent];
    }
}


- (void)mouseUp:(NSEvent *)theEvent {
    [NSApp sendAction:self.action to:self.target from:self];
}

- (SEL)action {return _action; }

- (void)setAction:(SEL)newAction {
    _action = newAction;
}

- (id)target { return _target; }

- (void)setTarget:(id)newTarget {
    _target = newTarget;
}

@end
