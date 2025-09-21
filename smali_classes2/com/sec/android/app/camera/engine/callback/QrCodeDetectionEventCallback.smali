.class Lcom/sec/android/app/camera/engine/callback/QrCodeDetectionEventCallback;
.super Lcom/sec/android/app/camera/engine/callback/BaseCallback;
.source "QrCodeDetectionEventCallback.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callback/QRCodeDetectionEventCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/engine/callback/BaseCallback<",
        "Lcom/sec/android/app/camera/interfaces/CallbackManager$QrCodeDetectionEventListener;",
        ">;",
        "Lcom/samsung/android/camera/core2/callback/QRCodeDetectionEventCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QrCodeDetectionEventCallback"


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;-><init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V

    return-void
.end method

.method public static synthetic b(Landroid/graphics/Bitmap;Ljava/lang/String;[ILcom/sec/android/app/camera/interfaces/CallbackManager$QrCodeDetectionEventListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/callback/QrCodeDetectionEventCallback;->lambda$onQRCodeDetected$0(Landroid/graphics/Bitmap;Ljava/lang/String;[ILcom/sec/android/app/camera/interfaces/CallbackManager$QrCodeDetectionEventListener;)V

    return-void
.end method

.method private static synthetic lambda$onQRCodeDetected$0(Landroid/graphics/Bitmap;Ljava/lang/String;[ILcom/sec/android/app/camera/interfaces/CallbackManager$QrCodeDetectionEventListener;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x5a

    .line 1
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/ImageUtils;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2
    :goto_0
    invoke-interface {p3, p1, p2, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager$QrCodeDetectionEventListener;->onQrCodeDetected(Ljava/lang/String;[ILandroid/graphics/Bitmap;)V

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
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setQrCodeDetectionEventCallback(Lcom/samsung/android/camera/core2/callback/QRCodeDetectionEventCallback;)V

    return-void
.end method

.method public onError(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onError : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QrCodeDetectionEventCallback"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onQRCodeDetected(Ljava/lang/String;[ILandroid/graphics/Bitmap;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    new-instance p4, Lcom/sec/android/app/camera/engine/callback/r0;

    invoke-direct {p4, p3, p1, p2}, Lcom/sec/android/app/camera/engine/callback/r0;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;[I)V

    invoke-virtual {p0, p4}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEventToUiThread(Ljava/util/function/Consumer;)V

    return-void
.end method
