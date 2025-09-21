.class public interface abstract Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerContract$View;
.super Ljava/lang/Object;
.source "FocusEnhancerContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/BaseContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/camera/interfaces/BaseContract$View<",
        "Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract cancelFocusEnhancerButtonAnimation()V
.end method

.method public abstract getFocusEnhancerButtonState()Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerContract$FocusEnhancerButtonState;
.end method

.method public abstract hideFocusEnhancerButton()V
.end method

.method public abstract setFocusEnhancerButtonState(Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerContract$FocusEnhancerButtonState;)V
.end method

.method public abstract showFocusEnhancerButton()V
.end method
