//
//  MyScene.m
//  NeeliOS1
//
//  Created by Neel Shah on 2/24/14.
//  Copyright (c) 2014 Neel Shah. All rights reserved.
//

#import "MyScene.h"

@interface MyScene()

@property SKSpriteNode* mySquare1;
@property SKSpriteNode* mySquare2;
@property SKSpriteNode* mySquare3;
@property SKSpriteNode* mySquare4;
@property SKSpriteNode* mySquare5;
@property SKSpriteNode* mySquare6;
@property SKSpriteNode* mySquare7;
@property SKSpriteNode* mySquare8;
@property SKSpriteNode* mySquare9;
// @property SKSpriteNode* myShelf;

@property SKPhysicsJoint* myRopeJoint;
@property SKPhysicsJoint* myRopeJoint1;
@property SKPhysicsJoint* myRopeJoint2;
@property SKPhysicsJoint* myRopeJoint3;
@property SKPhysicsJoint* myRopeJoint4;
@property SKPhysicsJoint* myRopeJoint5;
@property SKPhysicsJoint* myRopeJoint6;
@property SKPhysicsJoint* myRopeJoint7;

@end

@implementation MyScene

-(void) activateJointRope{
    
    self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
    
    _myRopeJoint = [SKPhysicsJointFixed jointWithBodyA:_mySquare1.physicsBody bodyB:_mySquare2.physicsBody anchor:_mySquare1.position];
    
    [self.physicsWorld addJoint:_myRopeJoint];
    
    _myRopeJoint1 = [SKPhysicsJointFixed jointWithBodyA:_mySquare2.physicsBody bodyB:_mySquare3.physicsBody anchor:_mySquare2.position];
    
    [self.physicsWorld addJoint:_myRopeJoint1];
    
    
    _myRopeJoint2 = [SKPhysicsJointPin jointWithBodyA:_mySquare2.physicsBody bodyB:_mySquare4.physicsBody anchor:_mySquare2.position];
    [self.physicsWorld addJoint:_myRopeJoint2];
    
    _myRopeJoint3 = [SKPhysicsJointFixed jointWithBodyA:_mySquare4.physicsBody bodyB:_mySquare5.physicsBody anchor:_mySquare4.position];
    [self.physicsWorld addJoint:_myRopeJoint3];
    
    _myRopeJoint4 = [SKPhysicsJointFixed jointWithBodyA:_mySquare5.physicsBody bodyB:_mySquare7.physicsBody anchor:_mySquare5.position];
    [self.physicsWorld addJoint:_myRopeJoint4];
    
    _myRopeJoint5 = [SKPhysicsJointFixed jointWithBodyA:_mySquare7.physicsBody bodyB:_mySquare8.physicsBody anchor:_mySquare8.position];
    [self.physicsWorld addJoint:_myRopeJoint5];
    
    _myRopeJoint6 = [SKPhysicsJointFixed jointWithBodyA:_mySquare8.physicsBody bodyB:_mySquare6.physicsBody anchor:_mySquare8.position];
    [self.physicsWorld addJoint:_myRopeJoint6];
    
    _myRopeJoint7 = [SKPhysicsJointLimit jointWithBodyA:self.physicsBody bodyB:_mySquare9.physicsBody anchorA:CGPointMake(self.size.width/2,self.size.height) anchorB:_mySquare9.position];
    [self.physicsWorld addJoint:_myRopeJoint7];
    
}

-(void) spawnSquares{
    _mySquare1 =[[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(30, 30)];
    _mySquare2 =[[SKSpriteNode alloc]initWithColor:[SKColor purpleColor] size:CGSizeMake(30, 30)];
    _mySquare3 =[[SKSpriteNode alloc]initWithColor:[SKColor orangeColor] size:CGSizeMake(25, 25)];
    _mySquare4 =[[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(30, 30)];
    _mySquare5 =[[SKSpriteNode alloc]initWithColor:[SKColor greenColor] size:CGSizeMake(30, 30)];
    _mySquare6 =[[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(37, 37)];
    _mySquare7 =[[SKSpriteNode alloc]initWithColor:[SKColor cyanColor] size:CGSizeMake(33, 33)];
    _mySquare8 =[[SKSpriteNode alloc]initWithColor:[SKColor lightGrayColor] size:CGSizeMake(35, 35)];
    _mySquare9 =[[SKSpriteNode alloc]initWithColor:[SKColor magentaColor] size:CGSizeMake(50, 30)];
    
    
    [_mySquare1 setPosition:CGPointMake(self.size.width/2, self.size.height/2)];
    [_mySquare2 setPosition:CGPointMake(_mySquare1.position.x,_mySquare1.position.y + 30)];
    [_mySquare3 setPosition:CGPointMake(_mySquare1.position.x,_mySquare2.position.y - 50)];
    [_mySquare4 setPosition:CGPointMake(_mySquare2.position.x - 30 , _mySquare2.position.y)];
    [_mySquare5 setPosition:CGPointMake(_mySquare4.position.x - 30 , _mySquare2.position.y)];
    [_mySquare7 setPosition:CGPointMake(_mySquare5.position.x - 33 , _mySquare2.position.y)];
    [_mySquare8 setPosition:CGPointMake(_mySquare7.position.x - 37 , _mySquare2.position.y)];
    [_mySquare6 setPosition:CGPointMake(_mySquare8.position.x - 35 , _mySquare2.position.y)];
    [_mySquare9 setPosition:CGPointMake(self.size.width/2.4, self.size.height/2)];
    
    _mySquare1.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare1.size];
    _mySquare2.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare2.size];
    _mySquare3.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare3.size];
    _mySquare4.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare4.size];
    _mySquare5.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare5.size];
    _mySquare6.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare6.size];
    _mySquare7.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare7.size];
    _mySquare8.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare8.size];
    _mySquare9.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare9.size];
    
    
    [_mySquare1.physicsBody setRestitution:1.0];
    [_mySquare2.physicsBody setRestitution:1.0];
    [_mySquare3.physicsBody setRestitution:0.7];
    [_mySquare4.physicsBody setRestitution:1.0];
    [_mySquare5.physicsBody setRestitution:1.0];
    [_mySquare6.physicsBody setRestitution:1.0];
    [_mySquare7.physicsBody setRestitution:1.0];
    [_mySquare8.physicsBody setRestitution:1.0];
    [_mySquare9.physicsBody setRestitution:1.0];
    
    
    [self addChild:_mySquare1];
    [self addChild:_mySquare2];
    [self addChild:_mySquare3];
    [self addChild:_mySquare4];
    [self addChild:_mySquare5];
    [self addChild:_mySquare6];
    [self addChild:_mySquare7];
    [self addChild:_mySquare8];
    [self addChild:_mySquare9];
    
    
}

/*-(void)makeShelf{
    _myShelf = [[SKSpriteNode alloc]initWithColor:[SKColor lightGrayColor] size:CGSizeMake(100, 40)];
    _myShelf.position = CGPointMake(self.size.width/2.4, self.size.height/2);
    _myShelf.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myShelf.size];
    [_myShelf.physicsBody setDynamic:NO];
    
    //[self addChild:_myShelf];
    
}*/

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.scaleMode = SKSceneScaleModeAspectFit;
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        [self.physicsBody setRestitution:1];
        
        
        [self spawnSquares];
        
        [self activateJointRope];
  //      [self makeShelf];
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    if (_mySquare6.physicsBody.dynamic) {
        
        [_mySquare6.physicsBody setDynamic:NO];
    }
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare6 setPosition:location];
        
        
        // [_mySquare1.physicsBody setDynamic:NO];
        //  [_mySquare2.physicsBody setDynamic:NO];
        
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare6 setPosition:location];
        
    }
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event  {
    
    if (!_mySquare6.physicsBody.dynamic) {
        [_mySquare6.physicsBody setDynamic:YES];
    }
    //  [_mySquare1.physicsBody setDynamic:YES];
    //  [_mySquare2.physicsBody setDynamic:YES];
    
}

-(void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if (!_mySquare6.physicsBody.dynamic) {
        [_mySquare6.physicsBody setDynamic:YES];
    }
    //  [_mySquare1.physicsBody setDynamic:YES];
    //  [_mySquare2.physicsBody setDynamic:YES];
    
}


-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end