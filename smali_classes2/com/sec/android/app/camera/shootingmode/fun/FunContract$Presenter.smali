.class public interface abstract Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;
.super Ljava/lang/Object;
.source "FunContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/fun/FunContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract hideMobileDataNoticePopup()V
.end method

.method public abstract onDiscoverButtonClicked()V
.end method

.method public abstract onFocusedLongSnapButtonPressed(I)Z
.end method

.method public abstract onFocusedSnapButtonClicked()V
.end method

.method public abstract onFocusedSnapButtonTouch(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onInitialize()V
.end method

.method public abstract onLensSelected(I)V
.end method

.method public abstract onMoreLensBackButtonClicked()V
.end method

.method public abstract onPopupLensClick(I)V
.end method

.method public abstract onPopupTouch(Landroid/view/View;Landroid/view/MotionEvent;)V
.end method

.method public abstract showBottomSheetLens()V
.end method
