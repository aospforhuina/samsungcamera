.class public interface abstract Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$Presenter;
.super Ljava/lang/Object;
.source "AbstractFilterTabContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/effects/abstraction/BaseEffectTabContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract getSelectedItemPosition()I
.end method

.method public abstract handlePreviewSwipeEvent(Z)V
.end method

.method public abstract onBackKeyUp()Z
.end method

.method public abstract onInitialize()V
.end method

.method public abstract onItemClick(I)Z
.end method

.method public abstract onItemDeleteClick(I)V
.end method

.method public abstract onItemDragEnd(I)V
.end method

.method public abstract onItemMove(II)V
.end method

.method public abstract onItemSelected(I)V
.end method

.method public abstract onListTouchEventIntercepted()Z
.end method

.method public abstract onSliderTouch()Z
.end method

.method public abstract onStopSwipeTouch()V
.end method

.method public abstract onStopTrackingTouch()V
.end method
