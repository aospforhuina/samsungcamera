.class public interface abstract Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;
.super Ljava/lang/Object;
.source "CropController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/cropper/controller/CropController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CropEventListener"
.end annotation


# virtual methods
.method public abstract onCancelCompleted(Landroid/content/Intent;)V
.end method

.method public abstract onExtractTextPrepared()V
.end method

.method public abstract onSaveCompleted(Landroid/content/Intent;)V
.end method

.method public abstract onSaveFailed(Landroid/content/Intent;)V
.end method

.method public abstract onSaveStarted()V
.end method
