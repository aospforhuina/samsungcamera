.class public interface abstract Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract$Presenter;
.super Ljava/lang/Object;
.source "CreateMyFilterMenuContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract onNameClicked(Ljava/lang/String;)V
.end method

.method public abstract onPreviewLongPressEnd()V
.end method

.method public abstract onPreviewLongPressStart()V
.end method

.method public abstract onSaveButtonClick(Ljava/lang/String;)V
.end method

.method public abstract onThumbnailImageClick()V
.end method

.method public abstract updateThumbnailImageLayout()V
.end method
