.class public interface abstract Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;
.super Ljava/lang/Object;
.source "FilterTabContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View<",
        "Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract closeAddingFiltersMenu()Z
.end method

.method public abstract hideFilterList()V
.end method

.method public abstract isAddingFiltersMenuOpened()Z
.end method

.method public abstract onAddingFiltersButtonClicked()V
.end method

.method public abstract setDownloadButtonDim(Z)V
.end method

.method public abstract showFilterList()V
.end method
