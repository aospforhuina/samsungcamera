.class Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;
.super Lcom/sec/android/app/camera/engine/callback/BaseCallback;
.source "ZoomMapPreviewCallback.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callback/PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/engine/callback/BaseCallback<",
        "Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;",
        ">;",
        "Lcom/samsung/android/camera/core2/callback/PreviewCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomMapViewPreviewCallback"


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbackThread:Landroid/os/HandlerThread;

.field private final mHandlerLock:Ljava/lang/Object;

.field private mIsFrameHandling:Z

.field private mTargetHeight:I

.field private mTargetWidth:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;-><init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mHandlerLock:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic b(Landroid/graphics/Bitmap;Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->lambda$handlePreviewFrame$1(Landroid/graphics/Bitmap;Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->lambda$onPreviewFrame$0(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;)V

    return-void
.end method

.method private handlePreviewFrame(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v1, v0, [B

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 3
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;->a()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;->a()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mTargetHeight:I

    iget v5, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mTargetWidth:I

    const/16 v6, 0x5a

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/camera/util/ImageUtils;->convertYuvToRGB([BIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/sec/android/app/camera/engine/callback/j1;

    invoke-direct {p2, p1}, Lcom/sec/android/app/camera/engine/callback/j1;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEvent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$handlePreviewFrame$1(Landroid/graphics/Bitmap;Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;->onPreviewFrame(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$onPreviewFrame$0(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->handlePreviewFrame(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mIsFrameHandling:Z

    return-void
.end method


# virtual methods
.method enable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setSubPreviewCallback(Lcom/samsung/android/camera/core2/callback/PreviewCallback;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mIsFrameHandling:Z

    return-void
.end method

.method injectMock(Landroid/os/Handler;Landroid/os/HandlerThread;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mCallbackHandler:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mCallbackThread:Landroid/os/HandlerThread;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPreviewFrame(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 2

    .line 1
    iget-boolean p3, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mIsFrameHandling:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 2
    iput-boolean p3, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mIsFrameHandling:Z

    .line 3
    iget-object p3, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mHandlerLock:Ljava/lang/Object;

    monitor-enter p3

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mCallbackHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 5
    monitor-exit p3

    return-void

    .line 6
    :cond_1
    new-instance v1, Lcom/sec/android/app/camera/engine/callback/i1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/engine/callback/i1;-><init>(Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method setTargetSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mTargetWidth:I

    .line 2
    iput p2, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mTargetHeight:I

    return-void
.end method

.method start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ZoomMapViewPreviewCallback"

    const-string/jumbo v2, "start"

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mCallbackThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ZoomMapPreviewCallbackThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mCallbackThread:Landroid/os/HandlerThread;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 7
    :cond_1
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mCallbackHandler:Landroid/os/Handler;

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method stop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mCallbackThread:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "ZoomMapViewPreviewCallback"

    const-string/jumbo v3, "stop - start"

    .line 3
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :catch_0
    :try_start_2
    iput-object v2, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mCallbackThread:Landroid/os/HandlerThread;

    const-string v1, "ZoomMapViewPreviewCallback"

    const-string/jumbo v3, "stop - end"

    .line 7
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mCallbackHandler:Landroid/os/Handler;

    .line 9
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->mIsFrameHandling:Z

    return-void

    :catchall_0
    move-exception p0

    .line 11
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
