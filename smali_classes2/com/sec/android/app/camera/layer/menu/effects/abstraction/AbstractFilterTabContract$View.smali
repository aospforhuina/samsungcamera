.class public interface abstract Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;
.super Ljava/lang/Object;
.source "AbstractFilterTabContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/effects/abstraction/BaseEffectTabContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$Presenter;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/camera/layer/menu/effects/abstraction/BaseEffectTabContract$View<",
        "TP;>;"
    }
.end annotation


# virtual methods
.method public abstract getMode()Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$ListMode;
.end method

.method public abstract hideAddingFiltersMenu()V
.end method

.method public abstract hideSlider(Z)V
.end method

.method public abstract initializeSlider(IIII)V
.end method

.method public abstract isItemDragging()Z
.end method

.method public abstract isListVisible()Z
.end method

.method public abstract isSliderVisible()Z
.end method

.method public abstract onSelectedPositionChanged(IILjava/lang/String;)V
.end method

.method public abstract removeList()V
.end method

.method public abstract scrollToInitPosition(IILjava/lang/String;)V
.end method

.method public abstract setAdapter(Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter;)V
.end method

.method public abstract setMode(Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$ListMode;)V
.end method

.method public abstract setSliderProgress(I)V
.end method

.method public abstract setSmoothScrollToPosition(I)V
.end method

.method public abstract updateChildBackground(I)V
.end method

.method public abstract updateList()V
.end method

.method public abstract updateList(I)V
.end method
