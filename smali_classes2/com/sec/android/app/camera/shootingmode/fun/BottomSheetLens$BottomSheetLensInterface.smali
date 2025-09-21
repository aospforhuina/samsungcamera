.class public interface abstract Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$BottomSheetLensInterface;
.super Ljava/lang/Object;
.source "BottomSheetLens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BottomSheetLensInterface"
.end annotation


# virtual methods
.method public abstract getLensAdapter()Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;
.end method

.method public abstract onBottomSheetDismiss()V
.end method

.method public abstract onDiscoverButtonClicked()V
.end method

.method public abstract onPopupTouch(Landroid/view/View;Landroid/view/MotionEvent;)V
.end method

.method public abstract updateLayoutOrientation()V
.end method
