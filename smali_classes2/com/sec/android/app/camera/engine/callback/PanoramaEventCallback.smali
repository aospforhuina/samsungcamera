.class Lcom/sec/android/app/camera/engine/callback/PanoramaEventCallback;
.super Lcom/sec/android/app/camera/engine/callback/BaseCallback;
.source "PanoramaEventCallback.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callback/PanoramaEventCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/engine/callback/BaseCallback<",
        "Lcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;",
        ">;",
        "Lcom/samsung/android/camera/core2/callback/PanoramaEventCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PanoramaEventCallback"


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;-><init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V

    return-void
.end method

.method public static synthetic b(IILcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/engine/callback/PanoramaEventCallback;->lambda$onRectChanged$5(IILcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V

    return-void
.end method

.method public static synthetic c(ILcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/callback/PanoramaEventCallback;->lambda$onError$2(ILcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V

    return-void
.end method

.method public static synthetic i(ILcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/callback/PanoramaEventCallback;->lambda$onDirectionChanged$1(ILcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V

    return-void
.end method

.method public static synthetic k([BLcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/callback/PanoramaEventCallback;->lambda$onLivePreviewData$3([BLcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V

    return-void
.end method

.method public static synthetic l(ILcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/callback/PanoramaEventCallback;->lambda$onProgressStitching$4(ILcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V

    return-void
.end method

.method private static synthetic lambda$onCaptureResult$0(Landroid/net/Uri;Lcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;->onCaptureResult(Landroid/net/Uri;)V

    return-void
.end method

.method private static synthetic lambda$onDirectionChanged$1(ILcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;->onDirectionChanged(I)V

    return-void
.end method

.method private static synthetic lambda$onError$2(ILcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;->onError(I)V

    return-void
.end method

.method private static synthetic lambda$onLivePreviewData$3([BLcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;->onLivePreviewData([B)V

    return-void
.end method

.method private static synthetic lambda$onProgressStitching$4(ILcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;->onProgressStitching(I)V

    return-void
.end method

.method private static synthetic lambda$onRectChanged$5(IILcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;->onRectChanged(II)V

    return-void
.end method

.method private static synthetic lambda$onUIImageData$6([BLcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;->onUIImageData([B)V

    return-void
.end method

.method public static synthetic m([BLcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/callback/PanoramaEventCallback;->lambda$onUIImageData$6([BLcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V

    return-void
.end method

.method public static synthetic n(Landroid/net/Uri;Lcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/callback/PanoramaEventCallback;->lambda$onCaptureResult$0(Landroid/net/Uri;Lcom/sec/android/app/camera/interfaces/CallbackManager$PanoramaEventListener;)V

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
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setPanoramaEventCallback(Lcom/samsung/android/camera/core2/callback/PanoramaEventCallback;)V

    return-void
.end method

.method public onCaptureResult(Landroid/net/Uri;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureResult: resultUri = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PanoramaEventCallback"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance p2, Lcom/sec/android/app/camera/engine/callback/h0;

    invoke-direct {p2, p1}, Lcom/sec/android/app/camera/engine/callback/h0;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEvent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onCaptured(Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    sget-object p1, Lcom/sec/android/app/camera/engine/callback/k0;->a:Lcom/sec/android/app/camera/engine/callback/k0;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEventToUiThread(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onCapturedMaxFrames(Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    sget-object p1, Lcom/sec/android/app/camera/engine/callback/l0;->a:Lcom/sec/android/app/camera/engine/callback/l0;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEventToUiThread(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onDirectionChanged(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    new-instance p2, Lcom/sec/android/app/camera/engine/callback/e0;

    invoke-direct {p2, p1}, Lcom/sec/android/app/camera/engine/callback/e0;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEventToUiThread(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onError(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PanoramaEventCallback"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance p2, Lcom/sec/android/app/camera/engine/callback/d0;

    invoke-direct {p2, p1}, Lcom/sec/android/app/camera/engine/callback/d0;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEvent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onLivePreviewData([BLcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    new-instance p2, Lcom/sec/android/app/camera/engine/callback/i0;

    invoke-direct {p2, p1}, Lcom/sec/android/app/camera/engine/callback/i0;-><init>([B)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEventToUiThread(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onMoveSlowly(Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    sget-object p1, Lcom/sec/android/app/camera/engine/callback/m0;->a:Lcom/sec/android/app/camera/engine/callback/m0;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEventToUiThread(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onProgressStitching(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    new-instance p2, Lcom/sec/android/app/camera/engine/callback/f0;

    invoke-direct {p2, p1}, Lcom/sec/android/app/camera/engine/callback/f0;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEventToUiThread(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onRectChanged(IILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    new-instance p3, Lcom/sec/android/app/camera/engine/callback/g0;

    invoke-direct {p3, p1, p2}, Lcom/sec/android/app/camera/engine/callback/g0;-><init>(II)V

    invoke-virtual {p0, p3}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEventToUiThread(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onUIImageData([BLcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    new-instance p2, Lcom/sec/android/app/camera/engine/callback/j0;

    invoke-direct {p2, p1}, Lcom/sec/android/app/camera/engine/callback/j0;-><init>([B)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEventToUiThread(Ljava/util/function/Consumer;)V

    return-void
.end method
