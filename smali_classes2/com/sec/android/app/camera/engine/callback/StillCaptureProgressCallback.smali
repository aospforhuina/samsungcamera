.class Lcom/sec/android/app/camera/engine/callback/StillCaptureProgressCallback;
.super Lcom/sec/android/app/camera/engine/callback/BaseCallback;
.source "StillCaptureProgressCallback.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callback/StillCaptureProgressCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/engine/callback/BaseCallback<",
        "Lcom/sec/android/app/camera/interfaces/CallbackManager$StillCaptureProgressListener;",
        ">;",
        "Lcom/samsung/android/camera/core2/callback/StillCaptureProgressCallback;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;-><init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Integer;Lcom/sec/android/app/camera/interfaces/CallbackManager$StillCaptureProgressListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/callback/StillCaptureProgressCallback;->lambda$onStillCaptureProgressChanged$0(Ljava/lang/Integer;Lcom/sec/android/app/camera/interfaces/CallbackManager$StillCaptureProgressListener;)V

    return-void
.end method

.method private static synthetic lambda$onStillCaptureProgressChanged$0(Ljava/lang/Integer;Lcom/sec/android/app/camera/interfaces/CallbackManager$StillCaptureProgressListener;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager$StillCaptureProgressListener;->onStillCaptureProgressChanged(I)V

    return-void
.end method


# virtual methods
.method enable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setStillCaptureProgressCallback(Lcom/samsung/android/camera/core2/callback/StillCaptureProgressCallback;)V

    return-void
.end method

.method public onStillCaptureProgressChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    new-instance p1, Lcom/sec/android/app/camera/engine/callback/e1;

    invoke-direct {p1, p2}, Lcom/sec/android/app/camera/engine/callback/e1;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEventToUiThread(Ljava/util/function/Consumer;)V

    return-void
.end method
