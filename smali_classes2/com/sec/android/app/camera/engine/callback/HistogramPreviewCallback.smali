.class Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;
.super Lcom/sec/android/app/camera/engine/callback/BaseCallback;
.source "HistogramPreviewCallback.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/InternalEngine$PreviewCallbackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback$HistogramHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/engine/callback/BaseCallback<",
        "Lcom/sec/android/app/camera/interfaces/CallbackManager$HistogramUpdateListener;",
        ">;",
        "Lcom/sec/android/app/camera/interfaces/InternalEngine$PreviewCallbackListener;"
    }
.end annotation


# static fields
.field private static final HANDLE_PREVIEW_FRAME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HistogramPreviewCallback"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mHandler:Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback$HistogramHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsCallbackEnabled:Z

.field private final mPreviewCallback:Lcom/sec/android/app/camera/engine/callback/PreviewCallback;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/engine/callback/PreviewCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;-><init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 3
    iput-object p3, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mPreviewCallback:Lcom/sec/android/app/camera/engine/callback/PreviewCallback;

    return-void
.end method

.method public static synthetic b(Ljava/nio/ByteBuffer;IILcom/sec/android/app/camera/interfaces/CallbackManager$HistogramUpdateListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->lambda$updateHistogram$0(Ljava/nio/ByteBuffer;IILcom/sec/android/app/camera/interfaces/CallbackManager$HistogramUpdateListener;)V

    return-void
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;Ljava/nio/ByteBuffer;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->updateHistogram(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method private static synthetic lambda$updateHistogram$0(Ljava/nio/ByteBuffer;IILcom/sec/android/app/camera/interfaces/CallbackManager$HistogramUpdateListener;)V
    .locals 0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/HistogramUtil;->getHistogram([BII)[I

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager$HistogramUpdateListener;->onHistogramUpdated([I)V

    return-void
.end method

.method private updateHistogram(Ljava/nio/ByteBuffer;II)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/callback/s;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/callback/s;-><init>(Ljava/nio/ByteBuffer;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEvent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method enable(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HistogramPreviewCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mIsCallbackEnabled:Z

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mPreviewCallback:Lcom/sec/android/app/camera/engine/callback/PreviewCallback;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/callback/PreviewCallback;->enable(Z)V

    return-void
.end method

.method injectMock(Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback$HistogramHandler;Landroid/os/HandlerThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mHandler:Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback$HistogramHandler;

    .line 2
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public isEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isHistogramSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mIsCallbackEnabled:Z

    return p0
.end method

.method public onPreviewFrame(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mHandler:Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback$HistogramHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HistogramPreviewCallback"

    const-string v2, "onPreviewFrame -- removeMessage"

    .line 2
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mHandler:Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback$HistogramHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 5
    iput v1, v0, Landroid/os/Message;->what:I

    .line 6
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;->a()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 8
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;->a()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mHandler:Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback$HistogramHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method start()V
    .locals 3

    const-string v0, "HistogramPreviewCallback"

    const-string/jumbo v1, "start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HistogramHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mHandlerThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback$HistogramHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback$HistogramHandler;-><init>(Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;Landroid/os/Looper;Lcom/sec/android/app/camera/engine/callback/t;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mHandler:Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback$HistogramHandler;

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mPreviewCallback:Lcom/sec/android/app/camera/engine/callback/PreviewCallback;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->registerListener(Ljava/lang/Object;)V

    return-void
.end method

.method stop()V
    .locals 2

    const-string v0, "HistogramPreviewCallback"

    const-string/jumbo v1, "stop"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mIsCallbackEnabled:Z

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mPreviewCallback:Lcom/sec/android/app/camera/engine/callback/PreviewCallback;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->unregisterListener(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mHandlerThread:Landroid/os/HandlerThread;

    .line 8
    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback;->mHandler:Lcom/sec/android/app/camera/engine/callback/HistogramPreviewCallback$HistogramHandler;

    return-void
.end method
