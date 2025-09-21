.class public interface abstract Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;
.super Ljava/lang/Object;
.source "FilterTabContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract onAddingFiltersButtonClick()Z
.end method

.method public abstract onCreateMyFilterButtonClick()V
.end method

.method public abstract onFilterDownloadButtonClick()V
.end method

.method public abstract onItemAttached(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterLiveThumbnailObserver;I)V
.end method

.method public abstract onItemDetached(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterLiveThumbnailObserver;I)V
.end method

.method public abstract onTouchUpAddingFiltersMenuClosed()V
.end method
