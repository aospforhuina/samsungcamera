.class public interface abstract Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeRightAction$SwipeRightListener;
.super Ljava/lang/Object;
.source "ButtonSwipeRightAction.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeRightAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SwipeRightListener"
.end annotation


# virtual methods
.method public abstract onSwipeMove(F)V
.end method

.method public abstract onSwipeRightEnd(F)V
.end method

.method public abstract onSwipeRightReachMax()V
.end method

.method public abstract onSwipeRightStart()Z
.end method
