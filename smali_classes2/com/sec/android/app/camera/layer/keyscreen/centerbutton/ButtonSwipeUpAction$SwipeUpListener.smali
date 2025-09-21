.class public interface abstract Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeUpAction$SwipeUpListener;
.super Ljava/lang/Object;
.source "ButtonSwipeUpAction.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeUpAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SwipeUpListener"
.end annotation


# virtual methods
.method public abstract onMoveAfterSwipeUp(II)V
.end method

.method public abstract onSwipeUp()Z
.end method

.method public abstract onUpAfterSwipeUp()V
.end method
