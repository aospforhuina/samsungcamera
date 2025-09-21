.class public interface abstract Lcom/sec/android/app/camera/shootingmode/fun/FunContract$View;
.super Ljava/lang/Object;
.source "FunContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/fun/FunContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeContract$View<",
        "Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addLens()V
.end method

.method public abstract hideLensGuide()V
.end method

.method public abstract hideMoreLensPage()Z
.end method

.method public abstract hideQuickTakeButton()V
.end method

.method public abstract hideQuickTakeEffect()V
.end method

.method public abstract hideSnapButton()V
.end method

.method public abstract hideSnapName()V
.end method

.method public abstract onLongPressKey()V
.end method

.method public abstract onSnapButtonClick(Landroid/view/View;IZ)V
.end method

.method public abstract onSnapLensEnd(Z)V
.end method

.method public abstract scrollToPosition(I)V
.end method

.method public abstract setAdapter(Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;)V
.end method

.method public abstract setLensAdapter(Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;)V
.end method

.method public abstract setPreviewRect(Landroid/graphics/Rect;)V
.end method

.method public abstract setScrollEnabled(Z)V
.end method

.method public abstract showBottomSheetLens(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
.end method

.method public abstract showLensGuide(Ljava/lang/String;Z)V
.end method

.method public abstract showMoreLensPage()Z
.end method

.method public abstract showSnapButton()V
.end method

.method public abstract showSnapName()V
.end method

.method public abstract updateBackButton(Z)V
.end method

.method public abstract updateScrollToPosition()V
.end method

.method public abstract updateSnapLensName(Ljava/lang/String;)V
.end method
