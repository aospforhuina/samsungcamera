.class public interface abstract Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$View;
.super Ljava/lang/Object;
.source "SelfieToneMenuContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$View<",
        "Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getSliderProgress()I
.end method

.method public abstract setSliderProgress(I)V
.end method

.method public abstract setSliderRange(II)V
.end method

.method public abstract setWideResolutionSliderBackground()V
.end method
