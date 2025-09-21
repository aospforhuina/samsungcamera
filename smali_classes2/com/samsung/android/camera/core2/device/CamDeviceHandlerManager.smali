.class Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;
.super Ljava/lang/Object;
.source "CamDeviceHandlerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;
    }
.end annotation


# static fields
.field private static final HANDLER_EXEC_LIMIT_TIME_MILLIS:J

.field private static final PENDING_PICTURE_DATA_HOLD_TIMEOUT_NANOS:J = 0x12a05f200L

.field private static final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundHandlerThread:Landroid/os/HandlerThread;

.field private final mBackgroundHandlerThreadLock:Ljava/lang/Object;

.field private final mCamDeviceImpl:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

.field private mCaptureCallbackHandler:Landroid/os/Handler;

.field private mCaptureCallbackHandlerSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

.field private final mImageReaderHandlerThreadLock:Ljava/lang/Object;

.field private final mImageReaderHandlerThreadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;",
            "Landroid/util/Pair<",
            "Landroid/os/HandlerThread;",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsBackgroundHandlerThreadsStopped:Z

.field private mSendPictureHandler:Landroid/os/Handler;

.field private mSendPictureHandlerSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mSendPictureHandlerThread:Landroid/os/HandlerThread;

.field private mSendSessionCallbackHandler:Landroid/os/Handler;

.field private mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

.field private mSendShutterHandler:Landroid/os/Handler;

.field private mSendShutterHandlerSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mSendShutterHandlerThread:Landroid/os/HandlerThread;

.field private mSendThumbnailHandler:Landroid/os/Handler;

.field private mSendThumbnailHandlerSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mSendThumbnailHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "CamDeviceHandlerManager"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->HANDLER_EXEC_LIMIT_TIME_MILLIS:J

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mImageReaderHandlerThreadLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThreadLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mIsBackgroundHandlerThreadsStopped:Z

    .line 5
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mImageReaderHandlerThreadMap:Ljava/util/Map;

    .line 6
    sget-object v0, Lcom/samsung/android/camera/core2/device/i0;->a:Lcom/samsung/android/camera/core2/device/i0;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerSupplier:Ljava/util/function/Supplier;

    .line 7
    sget-object v0, Lcom/samsung/android/camera/core2/device/r0;->a:Lcom/samsung/android/camera/core2/device/r0;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerSupplier:Ljava/util/function/Supplier;

    .line 8
    sget-object v0, Lcom/samsung/android/camera/core2/device/n0;->a:Lcom/samsung/android/camera/core2/device/n0;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerSupplier:Ljava/util/function/Supplier;

    .line 9
    sget-object v0, Lcom/samsung/android/camera/core2/device/o0;->a:Lcom/samsung/android/camera/core2/device/o0;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerSupplier:Ljava/util/function/Supplier;

    .line 10
    sget-object v0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "CamDeviceManager"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCamDeviceImpl:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    return-void
.end method

.method public static synthetic a()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->lambda$new$2()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;)Landroid/os/Handler;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->lambda$startBackgroundHandlerThread$6()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;)Landroid/os/Handler;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->lambda$startBackgroundHandlerThread$4()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->lambda$new$3()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private discardExpiredPictureData(J)V
    .locals 4

    const-wide v0, 0x12a05f200L

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCamDeviceImpl:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P1()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object p0

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentNavigableMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result p1

    const/16 p2, 0x14

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, p2, :cond_2

    .line 5
    sget-object p1, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array p2, v1, [Ljava/lang/Object;

    .line 6
    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    const-string v2, "discardExpiredPictureData - warning!! there are too many pending picture data : %d"

    .line 7
    invoke-static {p1, v2, p2}, Lcom/samsung/android/camera/core2/util/CLog;->r(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_2
    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentNavigableMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;

    .line 9
    invoke-virtual {p2, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->b(Z)V

    .line 10
    sget-object v2, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->c()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v0

    const-string p2, "discardExpiredPictureData - %s is discarded"

    invoke-static {v2, p2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    return-void
.end method

.method public static synthetic e()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->lambda$stopBackgroundHandlerThread$8()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->lambda$stopBackgroundHandlerThread$11()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;)Landroid/os/Handler;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->lambda$startBackgroundHandlerThread$5()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->lambda$new$1()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i(Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;)Landroid/os/Handler;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->lambda$startBackgroundHandlerThread$7()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->lambda$stopBackgroundHandlerThread$10()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic k()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->lambda$new$0()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic l()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->lambda$stopBackgroundHandlerThread$9()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$new$0()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$new$1()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$new$2()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$new$3()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$startBackgroundHandlerThread$4()Landroid/os/Handler;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mIsBackgroundHandlerThreadsStopped:Z

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CaptureCallback"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    .line 4
    sget-object v1, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "startBackgroundHandlerThread for captureCallbackHandlerThread"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v1, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-wide v3, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->HANDLER_EXEC_LIMIT_TIME_MILLIS:J

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;-><init>(Landroid/os/Looper;J)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandler:Landroid/os/Handler;

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$startBackgroundHandlerThread$5()Landroid/os/Handler;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mIsBackgroundHandlerThreadsStopped:Z

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SendPicture"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    .line 4
    sget-object v1, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "startBackgroundHandlerThread for sendPictureHandlerThread"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v1, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-wide v3, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->HANDLER_EXEC_LIMIT_TIME_MILLIS:J

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;-><init>(Landroid/os/Looper;J)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandler:Landroid/os/Handler;

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$startBackgroundHandlerThread$6()Landroid/os/Handler;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mIsBackgroundHandlerThreadsStopped:Z

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SendThumbnail"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    .line 4
    sget-object v1, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "startBackgroundHandlerThread for sendThumbnailHandlerThread"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v1, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-wide v3, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->HANDLER_EXEC_LIMIT_TIME_MILLIS:J

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;-><init>(Landroid/os/Looper;J)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandler:Landroid/os/Handler;

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$startBackgroundHandlerThread$7()Landroid/os/Handler;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mIsBackgroundHandlerThreadsStopped:Z

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SendShutter"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    .line 4
    sget-object v1, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "startBackgroundHandlerThread for sendShutterHandlerThread"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v1, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-wide v3, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->HANDLER_EXEC_LIMIT_TIME_MILLIS:J

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;-><init>(Landroid/os/Looper;J)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandler:Landroid/os/Handler;

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static synthetic lambda$stopBackgroundHandlerThread$10()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$stopBackgroundHandlerThread$11()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$stopBackgroundHandlerThread$8()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$stopBackgroundHandlerThread$9()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method checkDiscardPictureData(Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->i()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCamDeviceImpl:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P1()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    sget-object p1, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "checkDiscardPictureData - timestamp(%d) removed at TimestampToPictureDataMappingTable."

    invoke-static {p1, v3, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->discardExpiredPictureData(J)V

    return-void
.end method

.method getBackgroundHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method getCaptureCallbackHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method getImageReaderHandler(Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;)Landroid/os/Handler;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageReaderHandler - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mImageReaderHandlerThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mImageReaderHandlerThreadMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IReader-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startImageReaderHandlerThread-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mImageReaderHandlerThreadMap:Ljava/util/Map;

    invoke-interface {p0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    .line 10
    :cond_0
    iget-object p0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getSendPictureHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method getSendSessionCallbackHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method getSendShutterHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method sendPictureCallback(Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->g()Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->i()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v6, "sendPictureCallback - timestamp(%d), %s"

    invoke-static {v1, v6, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    sget-object v3, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager$1;->a:[I

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;->l()Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v3, v3, v6

    if-eq v3, v4, :cond_5

    if-eq v3, v2, :cond_3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_1

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->i()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;->l()Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "sendPictureCallback - invalid imageStream(timestamp %d) type(%s)"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;->a()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    if-eqz v3, :cond_2

    .line 8
    new-instance v6, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureDepthRunnable;

    iget-object v7, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCamDeviceImpl:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->d()Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;->b()Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;

    move-result-object v8

    invoke-direct {v6, v7, v0, v8}, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureDepthRunnable;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;)V

    .line 10
    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->i()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "sendPictureCallback - sendPictureHandler(%s) is null or can\'t post imageStream(timestamp %d) via sendPictureDepthRunnable"

    .line 12
    invoke-static {v1, v3, v2}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;->a()V

    goto/16 :goto_0

    .line 14
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    if-eqz v3, :cond_4

    .line 15
    new-instance v6, Lcom/samsung/android/camera/core2/device/CamDeviceSendThumbnailRunnable;

    iget-object v7, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCamDeviceImpl:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->d()Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;->c()Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;

    move-result-object v8

    invoke-direct {v6, v7, v0, v8}, Lcom/samsung/android/camera/core2/device/CamDeviceSendThumbnailRunnable;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;)V

    .line 17
    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_4
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->i()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "sendPictureCallback - sendThumbnailHandler(%s) is null or can\'t post imageStream(timestamp %d) via sendThumbnailRunnable"

    .line 19
    invoke-static {v1, v3, v2}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;->a()V

    goto/16 :goto_0

    .line 21
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    if-eqz v3, :cond_6

    .line 22
    new-instance v6, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;

    iget-object v7, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCamDeviceImpl:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-direct {v6, v7, v0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_6
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    .line 23
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->i()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "sendPictureCallback - sendPictureHandler(%s) is null or can\'t post imageStream(timestamp %d) via sendPictureRunnable"

    .line 24
    invoke-static {v1, v3, v2}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;->a()V

    goto/16 :goto_0

    .line 26
    :cond_7
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->checkDiscardPictureData(Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)V

    return-void
.end method

.method startBackgroundHandlerThread()V
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "[CAMFWKPI] startBackgroundHandlerThread E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    iget-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThreadLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    .line 4
    :try_start_0
    iput-boolean v4, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mIsBackgroundHandlerThreadsStopped:Z

    .line 5
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "Background"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    const-string/jumbo v5, "startBackgroundHandlerThread for backgroundHandlerThread"

    .line 6
    invoke-static {v0, v5}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 7
    iget-object v5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 8
    new-instance v5, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;

    iget-object v6, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    sget-wide v7, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->HANDLER_EXEC_LIMIT_TIME_MILLIS:J

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;-><init>(Landroid/os/Looper;J)V

    iput-object v5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandler:Landroid/os/Handler;

    .line 9
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "SendSessionCallback"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    const-string/jumbo v5, "startBackgroundHandlerThread for sendSessionCallbackHandlerThread"

    .line 10
    invoke-static {v0, v5}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 11
    iget-object v5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 12
    new-instance v5, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;

    iget-object v6, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;-><init>(Landroid/os/Looper;J)V

    iput-object v5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandler:Landroid/os/Handler;

    .line 13
    new-instance v5, Lcom/samsung/android/camera/core2/device/k0;

    invoke-direct {v5, p0}, Lcom/samsung/android/camera/core2/device/k0;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;)V

    iput-object v5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerSupplier:Ljava/util/function/Supplier;

    .line 14
    new-instance v5, Lcom/samsung/android/camera/core2/device/l0;

    invoke-direct {v5, p0}, Lcom/samsung/android/camera/core2/device/l0;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;)V

    iput-object v5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerSupplier:Ljava/util/function/Supplier;

    .line 15
    new-instance v5, Lcom/samsung/android/camera/core2/device/h0;

    invoke-direct {v5, p0}, Lcom/samsung/android/camera/core2/device/h0;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;)V

    iput-object v5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerSupplier:Ljava/util/function/Supplier;

    .line 16
    new-instance v5, Lcom/samsung/android/camera/core2/device/m0;

    invoke-direct {v5, p0}, Lcom/samsung/android/camera/core2/device/m0;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;)V

    iput-object v5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerSupplier:Ljava/util/function/Supplier;

    .line 17
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "[CAMFWKPI] startBackgroundHandlerThread X - %d ms"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, p0, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    .line 19
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method stopBackgroundHandlerThread()V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v1, "stopBackgroundHandlerThread E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string/jumbo v2, "stopBackgroundHandlerThread for backgroundThread"

    .line 4
    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    .line 8
    :goto_0
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    :try_start_3
    sget-object v2, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopBackgroundHandlerThread fail for backgroundThread - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11
    :try_start_4
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    goto :goto_0

    :goto_1
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    .line 12
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mBackgroundHandler:Landroid/os/Handler;

    .line 13
    throw v0

    .line 14
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 15
    sget-object v0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "stopBackgroundHandlerThread for sendSessionCallbackHandlerThread"

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 17
    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 18
    :try_start_6
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    .line 19
    :goto_3
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandler:Landroid/os/Handler;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 20
    :try_start_7
    sget-object v2, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopBackgroundHandlerThread fail for sendSessionCallbackHandlerThread - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 22
    :try_start_8
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    goto :goto_3

    :goto_4
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    .line 23
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandler:Landroid/os/Handler;

    .line 24
    throw v0

    .line 25
    :cond_1
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 26
    sget-object v0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "stopBackgroundHandlerThread for captureCallbackHandlerThread"

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 28
    :try_start_9
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 29
    :try_start_a
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    .line 30
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandler:Landroid/os/Handler;

    .line 31
    sget-object v0, Lcom/samsung/android/camera/core2/device/p0;->a:Lcom/samsung/android/camera/core2/device/p0;

    :goto_6
    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerSupplier:Ljava/util/function/Supplier;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    .line 32
    :try_start_b
    sget-object v2, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopBackgroundHandlerThread fail for captureCallbackHandlerThread - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 34
    :try_start_c
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    .line 35
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandler:Landroid/os/Handler;

    .line 36
    sget-object v0, Lcom/samsung/android/camera/core2/device/p0;->a:Lcom/samsung/android/camera/core2/device/p0;

    goto :goto_6

    .line 37
    :goto_7
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    .line 38
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandler:Landroid/os/Handler;

    .line 39
    sget-object v2, Lcom/samsung/android/camera/core2/device/p0;->a:Lcom/samsung/android/camera/core2/device/p0;

    iput-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerSupplier:Ljava/util/function/Supplier;

    .line 40
    throw v0

    .line 41
    :cond_2
    :goto_8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 42
    sget-object v0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "stopBackgroundHandlerThread for sendPictureHandlerThread"

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 44
    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 45
    :try_start_e
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    .line 46
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandler:Landroid/os/Handler;

    .line 47
    sget-object v0, Lcom/samsung/android/camera/core2/device/j0;->a:Lcom/samsung/android/camera/core2/device/j0;

    :goto_9
    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerSupplier:Ljava/util/function/Supplier;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    .line 48
    :try_start_f
    sget-object v2, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopBackgroundHandlerThread fail for sendPictureHandlerThread - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 50
    :try_start_10
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    .line 51
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandler:Landroid/os/Handler;

    .line 52
    sget-object v0, Lcom/samsung/android/camera/core2/device/j0;->a:Lcom/samsung/android/camera/core2/device/j0;

    goto :goto_9

    .line 53
    :goto_a
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    .line 54
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandler:Landroid/os/Handler;

    .line 55
    sget-object v2, Lcom/samsung/android/camera/core2/device/j0;->a:Lcom/samsung/android/camera/core2/device/j0;

    iput-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerSupplier:Ljava/util/function/Supplier;

    .line 56
    throw v0

    .line 57
    :cond_3
    :goto_b
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    .line 58
    sget-object v0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "stopBackgroundHandlerThread for sendThumbnailHandlerThread"

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 60
    :try_start_11
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 61
    :try_start_12
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    .line 62
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandler:Landroid/os/Handler;

    .line 63
    sget-object v0, Lcom/samsung/android/camera/core2/device/s0;->a:Lcom/samsung/android/camera/core2/device/s0;

    :goto_c
    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerSupplier:Ljava/util/function/Supplier;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto :goto_e

    :catchall_4
    move-exception v0

    goto :goto_d

    :catch_4
    move-exception v0

    .line 64
    :try_start_13
    sget-object v2, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopBackgroundHandlerThread fail for sendThumbnailHandlerThread - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 66
    :try_start_14
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    .line 67
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandler:Landroid/os/Handler;

    .line 68
    sget-object v0, Lcom/samsung/android/camera/core2/device/s0;->a:Lcom/samsung/android/camera/core2/device/s0;

    goto :goto_c

    .line 69
    :goto_d
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    .line 70
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandler:Landroid/os/Handler;

    .line 71
    sget-object v2, Lcom/samsung/android/camera/core2/device/s0;->a:Lcom/samsung/android/camera/core2/device/s0;

    iput-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerSupplier:Ljava/util/function/Supplier;

    .line 72
    throw v0

    .line 73
    :cond_4
    :goto_e
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5

    .line 74
    sget-object v0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "stopBackgroundHandlerThread for sendShutterHandlerThread"

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 76
    :try_start_15
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 77
    :try_start_16
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    .line 78
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandler:Landroid/os/Handler;

    .line 79
    sget-object v0, Lcom/samsung/android/camera/core2/device/q0;->a:Lcom/samsung/android/camera/core2/device/q0;

    :goto_f
    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerSupplier:Ljava/util/function/Supplier;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    goto :goto_11

    :catchall_5
    move-exception v0

    goto :goto_10

    :catch_5
    move-exception v0

    .line 80
    :try_start_17
    sget-object v2, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopBackgroundHandlerThread fail for sendShutterHandlerThread - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 82
    :try_start_18
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    .line 83
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandler:Landroid/os/Handler;

    .line 84
    sget-object v0, Lcom/samsung/android/camera/core2/device/q0;->a:Lcom/samsung/android/camera/core2/device/q0;

    goto :goto_f

    .line 85
    :goto_10
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    .line 86
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandler:Landroid/os/Handler;

    .line 87
    sget-object v2, Lcom/samsung/android/camera/core2/device/q0;->a:Lcom/samsung/android/camera/core2/device/q0;

    iput-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerSupplier:Ljava/util/function/Supplier;

    .line 88
    throw v0

    :cond_5
    :goto_11
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mIsBackgroundHandlerThreadsStopped:Z

    .line 90
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 91
    sget-object p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v0, "stopBackgroundHandlerThread X"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catchall_6
    move-exception p0

    .line 92
    :try_start_19
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    throw p0
.end method

.method stopImageReaderHandlerThread()V
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v1, "stopImageReaderHandlerThread E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mImageReaderHandlerThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mImageReaderHandlerThreadMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 5
    sget-object v4, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopImageReaderHandlerThread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/os/HandlerThread;

    .line 7
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 9
    :try_start_2
    sget-object v5, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v6, "stopImageReaderHandlerThread fail for %s - %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v4, v7, v3

    invoke-static {v5, v6, v7}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->mImageReaderHandlerThreadMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 12
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    sget-object p0, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v0, "stopImageReaderHandlerThread X"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 14
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
