.class public Lcom/sec/android/app/camera/engine/callback/MultiViewInfoCallback;
.super Lcom/sec/android/app/camera/engine/callback/BaseCallback;
.source "MultiViewInfoCallback.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/engine/callback/BaseCallback<",
        "Lcom/sec/android/app/camera/interfaces/CallbackManager$MultiViewInfoListener;",
        ">;",
        "Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;-><init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback$MultiViewInfo;Lcom/sec/android/app/camera/interfaces/CallbackManager$MultiViewInfoListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/callback/MultiViewInfoCallback;->lambda$onMultiViewInfoChanged$0(Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback$MultiViewInfo;Lcom/sec/android/app/camera/interfaces/CallbackManager$MultiViewInfoListener;)V

    return-void
.end method

.method private static synthetic lambda$onMultiViewInfoChanged$0(Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback$MultiViewInfo;Lcom/sec/android/app/camera/interfaces/CallbackManager$MultiViewInfoListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback$MultiViewInfo;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager$MultiViewInfoListener;->onMultiViewInfoChanged([Landroid/hardware/camera2/params/MeteringRectangle;)V

    return-void
.end method


# virtual methods
.method public enable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setMultiViewCropRoiInfoCallback(Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback;)V

    return-void
.end method

.method public onMultiViewInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback$MultiViewInfo;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback$MultiViewInfo;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/sec/android/app/camera/engine/callback/a0;

    invoke-direct {p1, p2}, Lcom/sec/android/app/camera/engine/callback/a0;-><init>(Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback$MultiViewInfo;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEventToUiThread(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method
