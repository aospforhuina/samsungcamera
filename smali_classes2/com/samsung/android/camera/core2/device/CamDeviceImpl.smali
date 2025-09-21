.class Lcom/samsung/android/camera/core2/device/CamDeviceImpl;
.super Lcom/samsung/android/camera/core2/CamDevice;
.source "CamDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;,
        Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;
    }
.end annotation


# instance fields
.field private final A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final B:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;",
            ">;"
        }
    .end annotation
.end field

.field private final C:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

.field private final D:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

.field private final E:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

.field private final F:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

.field private final G:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

.field private final H:Ljava/lang/Object;

.field private final I:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/samsung/android/camera/core2/device/CamDeviceCaptureCallback<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final J:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;",
            "Lcom/samsung/android/camera/core2/util/BlockingImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private N:Landroid/hardware/camera2/CameraDevice;

.field private O:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

.field private P:Landroid/hardware/camera2/CameraCaptureSession;

.field private Q:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

.field private R:Landroid/view/Surface;

.field private S:Landroid/hardware/camera2/params/OutputConfiguration;

.field private T:Landroid/view/Surface;

.field private U:Landroid/view/Surface;

.field private V:Landroid/view/Surface;

.field private W:Landroid/media/ImageReader;

.field private X:Landroid/media/ImageReader;

.field private Y:Landroid/media/ImageReader;

.field private Z:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

.field private a0:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

.field private final b0:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;",
            ">;"
        }
    .end annotation
.end field

.field private c0:Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;

.field private d0:Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;

.field private e0:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;

.field private final f:Ljava/lang/String;

.field private f0:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

.field private final g:Ljava/lang/String;

.field private g0:Ljava/util/concurrent/CountDownLatch;

.field private volatile h0:Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

.field private i0:J

.field private j0:J

.field private final k:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private k0:I

.field private final l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

.field private l0:I

.field private final m:Lcom/samsung/android/camera/core2/CamDevice$StateCallback;

.field private m0:I

.field private final n:Landroid/content/Context;

.field private n0:I

.field private final o:Lcom/samsung/android/camera/core2/CamCapability;

.field private o0:I

.field private final p:Lcom/google/ar/core/Session;

.field private p0:I

.field private final q:Lcom/google/ar/core/SharedCamera;

.field private q0:I

.field private final r:Z

.field private r0:I

.field private final s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private s0:I

.field private final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private t0:I

.field private final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/ImageReader;",
            "Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;",
            ">;"
        }
    .end annotation
.end field

.field private u0:I

.field private final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/ImageReader;",
            "Lcom/samsung/android/camera/core2/CamDevice$PreviewDepthCallback;",
            ">;"
        }
    .end annotation
.end field

.field private v0:I

.field private final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private w0:I

.field private final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private x0:Z

.field private final y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/ar/core/Session;Lcom/google/ar/core/SharedCamera;Lcom/samsung/android/camera/core2/CamDevice$StateCallback;Lcom/samsung/android/camera/core2/CamCapability;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 4

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/CamDevice;-><init>()V

    .line 8
    new-instance v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/device/f1;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->v:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->x:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->y:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->A:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->B:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 18
    new-instance v0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->C:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    .line 19
    new-instance v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->D:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    .line 20
    new-instance v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePicture;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePicture;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->E:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    .line 21
    new-instance v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->F:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    .line 22
    new-instance v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateBurstPicRecord;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateBurstPicRecord;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->G:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    .line 23
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    .line 24
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->I:Ljava/util/Map;

    .line 25
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->J:Ljava/util/Map;

    .line 26
    sget-object v1, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->a:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    .line 27
    const-class v1, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->b0:Ljava/util/EnumSet;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f0:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    .line 29
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->g0:Ljava/util/concurrent/CountDownLatch;

    .line 30
    sget-object v0, Lcom/samsung/android/camera/core2/CamDevice$CaptureState;->a:Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->h0:Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    .line 31
    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CamDeviceImpl-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/samsung/android/camera/core2/CamCapability;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    :try_start_0
    const-string v2, "context"

    .line 32
    invoke-static {p1, v2}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "callback"

    .line 33
    invoke-static {p4, v2}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "camCapability"

    .line 34
    invoke-static {p5, v2}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->n:Landroid/content/Context;

    .line 36
    iput-object p5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->o:Lcom/samsung/android/camera/core2/CamCapability;

    .line 37
    invoke-virtual {p5}, Lcom/samsung/android/camera/core2/CamCapability;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->g:Ljava/lang/String;

    if-nez p6, :cond_2

    .line 39
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p5

    if-nez p5, :cond_1

    .line 40
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    if-eqz p5, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->s:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string p2, "No handler given, and current thread has no looper!"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_1
    :goto_0
    new-instance p6, Landroid/os/Handler;

    invoke-direct {p6, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    :cond_2
    invoke-static {p4, p6}, Lcom/samsung/android/camera/core2/callback/forwarder/CamDeviceStateCallbackForwarder;->t(Lcom/samsung/android/camera/core2/CamDevice$StateCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/CamDeviceStateCallbackForwarder;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m:Lcom/samsung/android/camera/core2/CamDevice$StateCallback;

    .line 44
    iput-object p2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->p:Lcom/google/ar/core/Session;

    .line 45
    iput-object p3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->q:Lcom/google/ar/core/SharedCamera;

    const/4 p4, 0x1

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    move p2, p4

    goto :goto_1

    :cond_3
    move p2, v1

    .line 46
    :goto_1
    iput-boolean p2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r:Z

    .line 47
    new-instance p3, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    invoke-direct {p3, p0}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)V

    iput-object p3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    .line 48
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->startBackgroundHandlerThread()V

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v1

    aput-object p7, p0, p4

    const/4 p1, 0x2

    .line 49
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p0, p1

    const-string p1, "CamDeviceImpl is created : Id %s, LastId %s, IsSupportArCore %b"

    .line 50
    invoke-static {v0, p1, p0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    .line 51
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object p2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->s:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1
.end method

.method constructor <init>(Lcom/samsung/android/camera/core2/device/CamDeviceConfig;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceConfig;->b()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceConfig;->e()Lcom/samsung/android/camera/core2/CamDevice$StateCallback;

    move-result-object v4

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceConfig;->a()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v5

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceConfig;->c()Landroid/os/Handler;

    move-result-object v6

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceConfig;->d()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 6
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;-><init>(Landroid/content/Context;Lcom/google/ar/core/Session;Lcom/google/ar/core/SharedCamera;Lcom/samsung/android/camera/core2/CamDevice$StateCallback;Lcom/samsung/android/camera/core2/CamCapability;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic A0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->y:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic B0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->N:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static bridge synthetic C0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static bridge synthetic D0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Q:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    return-void
.end method

.method static synthetic E0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;)Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/CamDevice;->d:Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;

    return-object p1
.end method

.method static synthetic F0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;)Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/CamDevice;->d:Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;

    return-object p1
.end method

.method static synthetic G0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;)Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/CamDevice;->d:Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;

    return-object p1
.end method

.method static synthetic H0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;)Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/CamDevice;->d:Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;

    return-object p1
.end method

.method private J0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->I:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->I:Ljava/util/Map;

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

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureCallback;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureCallback;->a()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->I:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private K0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P0()V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O0()V

    return-void
.end method

.method private L0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W:Landroid/media/ImageReader;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "clearMainPreviewImageReader"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W:Landroid/media/ImageReader;

    .line 7
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private L1(Lcom/samsung/android/camera/core2/container/SessionConfig;Lcom/samsung/android/camera/core2/CamDevice$SessionMode;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$1;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->N0()V

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K0()V

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->S0()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->c2(Lcom/samsung/android/camera/core2/container/SessionConfig;)V

    .line 7
    iget-object p2, p1, Lcom/samsung/android/camera/core2/container/SessionConfig;->f:Lcom/samsung/android/camera/core2/container/SessionConfig$DepthCbConfigCollector;

    invoke-direct {p0, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->a2(Lcom/samsung/android/camera/core2/container/SessionConfig$DepthCbConfigCollector;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->h2(Lcom/samsung/android/camera/core2/container/SessionConfig;)V

    :goto_0
    return v1
.end method

.method private M0(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->J:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/device/b1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/camera/core2/device/b1;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private N0()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->J:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/device/z0;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/device/z0;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private O0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->a0:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    if-eqz v0, :cond_0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "clearPictureDepthImageReader"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->a0:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->b()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->a0:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private P0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Y:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->v:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Y:Landroid/media/ImageReader;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "clearPreviewDepthImageReader"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Y:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Y:Landroid/media/ImageReader;

    .line 7
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private Q0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->L0()V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->R0()V

    return-void
.end method

.method private synthetic Q1(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "clearPicImageReader %s"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->b()V

    .line 3
    iget-object p2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->J:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->b0:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private R0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->X:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->X:Landroid/media/ImageReader;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "clearSubPreviewImageReader"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->X:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->X:Landroid/media/ImageReader;

    .line 7
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic R1(Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "post SessionCallback(onDeviceClosed)"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;->e()V

    return-void
.end method

.method private S0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Z:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    if-eqz v0, :cond_0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "clearThumbnailImageReader"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Z:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->b()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Z:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private static synthetic S1(Landroid/util/Pair;)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/camera2/params/OutputConfiguration;

    return-object p0
.end method

.method private T0(Lcom/samsung/android/camera/core2/container/SessionConfig;Lcom/samsung/android/camera/core2/CamDevice$SessionMode;)V
    .locals 9

    const-string v0, "Prepare-CreateCaptureSession"

    .line 1
    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig;->d()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "createCaptureSessionInternal E"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Z1()V

    .line 7
    iget-object v1, p1, Lcom/samsung/android/camera/core2/container/SessionConfig;->a:Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->g2(Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;Lcom/samsung/android/camera/core2/CamDevice$SessionMode;)V

    .line 8
    iget-object v1, p1, Lcom/samsung/android/camera/core2/container/SessionConfig;->b:Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;

    invoke-direct {p0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->e2(Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;)V

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->L1(Lcom/samsung/android/camera/core2/container/SessionConfig;Lcom/samsung/android/camera/core2/CamDevice$SessionMode;)I

    move-result v1

    .line 10
    iget-object v2, p1, Lcom/samsung/android/camera/core2/container/SessionConfig;->h:Lcom/samsung/android/camera/core2/container/SessionConfig$BuilderConfig;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/container/SessionConfig$BuilderConfig;->e()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    .line 11
    iget-object v2, p1, Lcom/samsung/android/camera/core2/container/SessionConfig;->h:Lcom/samsung/android/camera/core2/container/SessionConfig$BuilderConfig;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/container/SessionConfig$BuilderConfig;->d()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->L:Ljava/util/Map;

    .line 12
    iget-object v2, p1, Lcom/samsung/android/camera/core2/container/SessionConfig;->h:Lcom/samsung/android/camera/core2/container/SessionConfig$BuilderConfig;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/container/SessionConfig$BuilderConfig;->f()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M:Ljava/util/Map;

    .line 13
    new-instance v2, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;

    iget-object v3, p1, Lcom/samsung/android/camera/core2/container/SessionConfig;->j:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V

    .line 14
    iget-boolean v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 15
    iget-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->q:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {v3}, Lcom/google/ar/core/SharedCamera;->getArCoreSurfaces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    .line 16
    iget-object v6, p0, Lcom/samsung/android/camera/core2/CamDevice;->c:Ljava/util/List;

    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x1

    invoke-direct {p0, v5, v8}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W0(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v5

    invoke-direct {v7, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->q:Lcom/google/ar/core/SharedCamera;

    iget-object v5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/google/ar/core/SharedCamera;->createARSessionStateCallback(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v2

    .line 18
    :cond_1
    iget-object v3, p1, Lcom/samsung/android/camera/core2/container/SessionConfig;->i:Lcom/samsung/android/camera/core2/local/parameter/SemCameraParameter;

    invoke-direct {p0, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->p2(Lcom/samsung/android/camera/core2/local/parameter/SemCameraParameter;)V

    .line 19
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "CreateCaptureSession"

    const/4 v5, 0x0

    .line 20
    invoke-static {v3, v5}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 21
    iget-object v3, p0, Lcom/samsung/android/camera/core2/CamDevice;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/core2/device/u0;->a:Lcom/samsung/android/camera/core2/device/u0;

    .line 22
    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 23
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 24
    new-instance v5, Lcom/samsung/android/camera/core2/device/w0;

    invoke-direct {v5, p0}, Lcom/samsung/android/camera/core2/device/w0;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)V

    .line 25
    new-instance v6, Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-direct {v6, v1, v3, v5, v2}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 26
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->a(Ljava/util/Map;Landroid/util/Pair;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/core2/device/x0;

    invoke-direct {v2, v6}, Lcom/samsung/android/camera/core2/device/x0;-><init>(Landroid/hardware/camera2/params/SessionConfiguration;)V

    .line 27
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 28
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->N:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    .line 29
    invoke-direct {p0, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u2(Lcom/samsung/android/camera/core2/CamDevice$SessionMode;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    iget-object p1, p1, Lcom/samsung/android/camera/core2/container/SessionConfig;->j:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Q:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setPriority(I)V

    .line 32
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "createCaptureSessionInternal X"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 33
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object p2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 35
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw p1

    :catch_2
    move-exception p0

    .line 36
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static synthetic T1(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private U0(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "createMainPreviewImageReader"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->c()I

    move-result v2

    const/4 v3, 0x3

    .line 6
    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W:Landroid/media/ImageReader;

    .line 7
    new-instance v1, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;

    sget-object v2, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;->a:Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;)V

    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    sget-object v3, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->a:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 8
    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getImageReaderHandler(Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;)Landroid/os/Handler;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 10
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r:Z

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->q:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/google/ar/core/SharedCamera;->setAppSurfaces(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private synthetic U1(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/camera/core2/device/c1;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/device/c1;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private V0(Landroid/util/Size;Ljava/lang/Class;I)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Size;",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Landroid/hardware/camera2/params/OutputConfiguration;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Landroid/hardware/camera2/params/OutputConfiguration;->semCreateOutputConfiguration(Landroid/util/Size;Ljava/lang/Class;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic V1(Landroid/hardware/camera2/params/SessionConfiguration;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method private W0(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 1

    const/4 p0, -0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/hardware/camera2/params/OutputConfiguration;->semCreateOutputConfiguration(ILandroid/view/Surface;II)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private synthetic W1(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "post SessionCallback(onDisconnected) - session(%s)"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-interface {p2}, Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;->onDisconnected()V

    return-void
.end method

.method private X0(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->J:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    .line 2
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils;->a(Lcom/samsung/android/camera/core2/util/BlockingImageReader;Landroid/util/Size;Ljava/lang/Integer;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v3

    const-string p1, "createPicImageReader - reuse(%s)"

    invoke-static {p0, p1, p3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->o(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->b()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->p(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M0(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "createPicImageReader - create(%s, cnt:%d)"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    .line 10
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 11
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 12
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->c()I

    move-result v3

    .line 13
    invoke-static {v1, v2, v3, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p3

    .line 14
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->k()Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    move-result-object v2

    .line 16
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->b()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v0, p3, v1, v2, p2}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;-><init>(Landroid/media/ImageReader;Ljava/lang/String;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;I)V

    .line 17
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->J:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private synthetic X1(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getSendSessionCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/device/t0;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/camera/core2/device/t0;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "post SessionCallback(onDisconnected) fail - post fail"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "post SessionCallback(onDisconnected) fail - postHandler is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private Y0(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->a0:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils;->a(Lcom/samsung/android/camera/core2/util/BlockingImageReader;Landroid/util/Size;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "createPictureDepthImageReader - reuse"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->a0:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->o(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O0()V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "createPictureDepthImageReader - create"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->c()I

    move-result v3

    const/4 v4, 0x5

    .line 11
    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->a:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->b()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;-><init>(Landroid/media/ImageReader;Ljava/lang/String;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;I)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->a0:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    .line 14
    new-instance p1, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;

    sget-object v1, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;->c:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;

    invoke-direct {p1, p0, v0, v1}, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;)V

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    sget-object v1, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->q:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 15
    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getImageReaderHandler(Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;)Landroid/os/Handler;

    move-result-object p0

    .line 16
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->n(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method private synthetic Y1(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/util/MemoryUtils;->d()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/CamDevice;->b:I

    .line 2
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/MemoryUtils;->c(Lcom/samsung/android/camera/core2/CamCapability;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/CamDevice;->a:I

    return-void
.end method

.method public static synthetic Z(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->T1(Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-void
.end method

.method private Z1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u()Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;->getId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareCreateCaptureSession - stopRepeating is failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->J0()V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    .line 7
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    .line 8
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/camera/core2/device/a1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/camera/core2/device/a1;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/CamDevice;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static synthetic a0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->R1(Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V

    return-void
.end method

.method private a1(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "createPreviewDepthImageReader"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->c()I

    move-result p1

    const/4 v2, 0x3

    .line 6
    invoke-static {v0, v1, p1, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Y:Landroid/media/ImageReader;

    .line 7
    new-instance v0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;

    sget-object v1, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;->c:Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;)V

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    sget-object v1, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->p:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 8
    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getImageReaderHandler(Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;)Landroid/os/Handler;

    move-result-object p0

    .line 9
    invoke-virtual {p1, v0, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private a2(Lcom/samsung/android/camera/core2/container/SessionConfig$DepthCbConfigCollector;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DepthCbConfigCollector;->d()Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DepthCbConfigCollector;->c()Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P0()V

    .line 4
    invoke-static {v0}, Lcom/samsung/android/camera/core2/container/SessionConfig;->b(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->a1(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Y:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W0(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/samsung/android/camera/core2/CamDevice;->c:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s2(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig;->b(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Y0(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)V

    .line 10
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->a0:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->k()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W0(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/samsung/android/camera/core2/CamDevice;->c:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s2(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O0()V

    :goto_0
    return-void
.end method

.method public static synthetic b0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->X1(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V

    return-void
.end method

.method private b1(Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->R:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W0(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/params/OutputConfiguration;->setMirrorMode(I)V

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;->e()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;->f()Ljava/lang/Class;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;->e()Landroid/util/Size;

    move-result-object v1

    .line 8
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const-class v2, Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 10
    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->V0(Landroid/util/Size;Ljava/lang/Class;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;->setMirrorMode(I)V

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    .line 13
    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->S:Landroid/hardware/camera2/params/OutputConfiguration;

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private b2(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->h()Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;->d(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;)Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    move-result-object p2

    .line 2
    invoke-static {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig;->b(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M0(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->X0(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;I)V

    .line 5
    iget-object p3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->J:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->k()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->b()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W0(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p1

    .line 6
    iget-object p3, p0, Lcom/samsung/android/camera/core2/CamDevice;->c:Ljava/util/List;

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s2(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic c0(Landroid/util/Pair;)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->S1(Landroid/util/Pair;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private c2(Lcom/samsung/android/camera/core2/container/SessionConfig;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->o:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/device/y0;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/device/y0;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    iget-object v0, p1, Lcom/samsung/android/camera/core2/container/SessionConfig;->c:Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->d:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    const/4 v2, 0x5

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->b2(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;I)V

    .line 4
    sget-object v1, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->f:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    iget v3, p0, Lcom/samsung/android/camera/core2/CamDevice;->b:I

    invoke-direct {p0, v1, v0, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->b2(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;I)V

    .line 5
    sget-object v1, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->g:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    iget v3, p0, Lcom/samsung/android/camera/core2/CamDevice;->a:I

    invoke-direct {p0, v1, v0, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->b2(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;I)V

    .line 6
    iget-object v0, p1, Lcom/samsung/android/camera/core2/container/SessionConfig;->d:Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;

    .line 7
    sget-object v1, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->k:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->b2(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;I)V

    .line 8
    sget-object v1, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->l:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    iget v3, p0, Lcom/samsung/android/camera/core2/CamDevice;->b:I

    invoke-direct {p0, v1, v0, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->b2(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;I)V

    .line 9
    sget-object v1, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->m:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    iget v3, p0, Lcom/samsung/android/camera/core2/CamDevice;->a:I

    invoke-direct {p0, v1, v0, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->b2(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;I)V

    .line 10
    iget-object p1, p1, Lcom/samsung/android/camera/core2/container/SessionConfig;->e:Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;

    .line 11
    sget-object v0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->n:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-direct {p0, v0, p1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->b2(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;I)V

    .line 12
    sget-object v0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->o:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    iget v1, p0, Lcom/samsung/android/camera/core2/CamDevice;->b:I

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->b2(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;I)V

    .line 13
    sget-object v0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->p:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    iget v1, p0, Lcom/samsung/android/camera/core2/CamDevice;->a:I

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->b2(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;I)V

    return-void
.end method

.method public static synthetic d0(Landroid/hardware/camera2/params/SessionConfiguration;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->V1(Landroid/hardware/camera2/params/SessionConfiguration;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private d1(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "createSubPreviewImageReader"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->c()I

    move-result p1

    const/4 v2, 0x3

    .line 6
    invoke-static {v0, v1, p1, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->X:Landroid/media/ImageReader;

    .line 7
    new-instance v0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;

    sget-object v1, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;->b:Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;)V

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    sget-object v1, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->b:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 8
    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getImageReaderHandler(Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;)Landroid/os/Handler;

    move-result-object p0

    .line 9
    invoke-virtual {p1, v0, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private d2(Landroid/hardware/camera2/params/OutputConfiguration;Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewExtraSurfaceConfig;Lcom/samsung/android/camera/core2/CamDevice$SessionMode;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig;->c(Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;->c()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->V:Landroid/view/Surface;

    .line 3
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewExtraSurfaceConfig;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->enableSurfaceSharing()V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->V:Landroid/view/Surface;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    return-void

    .line 6
    :cond_0
    sget-object p1, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->b:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    if-ne p3, p1, :cond_1

    .line 7
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "highSpeedCaptureSession only support SurfaceSharing"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->V:Landroid/view/Surface;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->b()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W0(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p1

    .line 9
    iget-object p3, p0, Lcom/samsung/android/camera/core2/CamDevice;->c:Ljava/util/List;

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s2(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static synthetic e0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M0(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;)V

    return-void
.end method

.method private e1(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Z:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils;->a(Lcom/samsung/android/camera/core2/util/BlockingImageReader;Landroid/util/Size;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "createThumbnailImageReader - reuse"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Z:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->o(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->S0()V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "createThumbnailImageReader - create"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->d()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;->c()I

    move-result v3

    const/4 v4, 0x5

    .line 11
    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->a:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->b()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;-><init>(Landroid/media/ImageReader;Ljava/lang/String;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;I)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Z:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    .line 14
    new-instance p1, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;

    sget-object v1, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;->b:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;

    invoke-direct {p1, p0, v0, v1}, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;)V

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    sget-object v1, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->r:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 15
    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getImageReaderHandler(Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;)Landroid/os/Handler;

    move-result-object p0

    .line 16
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->n(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method private e2(Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;->c()Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;->d()Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->L0()V

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->R0()V

    .line 5
    invoke-static {v0}, Lcom/samsung/android/camera/core2/container/SessionConfig;->b(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->U0(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W0(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/samsung/android/camera/core2/CamDevice;->c:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s2(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig;->b(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->d1(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)V

    .line 11
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->X:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W0(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/samsung/android/camera/core2/CamDevice;->c:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s2(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static synthetic f0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W1(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V

    return-void
.end method

.method private f2(Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig;->c(Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;->c()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->T:Landroid/view/Surface;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W0(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/samsung/android/camera/core2/CamDevice;->c:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s2(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->T:Landroid/view/Surface;

    .line 6
    :goto_0
    invoke-static {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig;->c(Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;->c()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->U:Landroid/view/Surface;

    .line 8
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W0(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/camera/core2/CamDevice;->c:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s2(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_1
    iput-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->U:Landroid/view/Surface;

    :goto_1
    return-void
.end method

.method public static synthetic g0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Q1(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V

    return-void
.end method

.method private g2(Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;Lcom/samsung/android/camera/core2/CamDevice$SessionMode;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;->f()Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;->g()Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;->e()Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;->h()Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;->c()Landroid/view/Surface;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->R:Landroid/view/Surface;

    const/4 v3, 0x0

    .line 6
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->V:Landroid/view/Surface;

    .line 7
    iput-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->S:Landroid/hardware/camera2/params/OutputConfiguration;

    .line 8
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->b1(Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9
    invoke-direct {p0, v3, v1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->d2(Landroid/hardware/camera2/params/OutputConfiguration;Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewExtraSurfaceConfig;Lcom/samsung/android/camera/core2/CamDevice$SessionMode;)V

    .line 10
    iget-object p2, p0, Lcom/samsung/android/camera/core2/CamDevice;->c:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f2(Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;)V

    return-void
.end method

.method public static synthetic h0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->U1(Ljava/lang/Runnable;)V

    return-void
.end method

.method private h2(Lcom/samsung/android/camera/core2/container/SessionConfig;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/samsung/android/camera/core2/container/SessionConfig;->g:Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    .line 2
    invoke-static {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig;->b(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->S0()V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->e1(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Z:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->k()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W0(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/CamDevice;->c:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s2(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$DefaultStreamConfig;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic i0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Y1(Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void
.end method

.method static bridge synthetic j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object p0
.end method

.method static bridge synthetic k0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic l0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/CamCapability;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->o:Lcom/samsung/android/camera/core2/CamCapability;

    return-object p0
.end method

.method static bridge synthetic m0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    return-object p0
.end method

.method static bridge synthetic n0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->g0:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic o0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static bridge synthetic p0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->n:Landroid/content/Context;

    return-object p0
.end method

.method private p2(Lcom/samsung/android/camera/core2/local/parameter/SemCameraParameter;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/local/parameter/SemCameraParameter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "raw params"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->i(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraParameter - rawParam "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->N:Landroid/hardware/camera2/CameraDevice;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/local/parameter/SemCameraParameter;->a(Landroid/hardware/camera2/CameraDevice;Lcom/samsung/android/camera/core2/local/parameter/SemCameraParameter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :try_start_3
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, v1, p0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catch_1
    move-exception p0

    .line 8
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->s:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static bridge synthetic q0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic r0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic s0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->x0:Z

    return p0
.end method

.method private s2(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    return-object p1
.end method

.method static bridge synthetic t0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r:Z

    return p0
.end method

.method static bridge synthetic u0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->g:Ljava/lang/String;

    return-object p0
.end method

.method private u2(Lcom/samsung/android/camera/core2/CamDevice$SessionMode;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSessionMode - sessionMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

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

.method static bridge synthetic v0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->x:Ljava/util/Map;

    return-object p0
.end method

.method private v2(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;Z)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    .line 1
    iget-object v9, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v9

    .line 2
    :try_start_0
    iget-object v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "startPreviewRepeatingInternal E - CamDeviceRepeatingRequestCnt %s, PreviewStateCallback %s, isHighSpeedRequests %b"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 3
    invoke-static/range {p2 .. p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    .line 4
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v3, v5

    .line 5
    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->c:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 7
    iget-object v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->r:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->f()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iget-object v2, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W:Landroid/media/ImageReader;

    sget-object v3, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->k:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->c(ZLjava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->k()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v6

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    iget-object v2, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->X:Landroid/media/ImageReader;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->c(ZLjava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->h()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v6

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    iget-object v2, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Y:Landroid/media/ImageReader;

    sget-object v3, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->o:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->c(ZLjava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->i()I

    move-result v1

    if-lez v1, :cond_3

    move v4, v6

    :cond_3
    iget-object v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->V:Landroid/view/Surface;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->g:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v4, v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->c(ZLjava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->f()I

    move-result v6

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->k()I

    move-result v10

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->g()I

    move-result v11

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->h()I

    move-result v12

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->d()I

    move-result v13

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->i()I

    move-result v14

    .line 18
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-lez v6, :cond_4

    .line 19
    new-instance v5, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    const/4 v4, 0x0

    iget-object v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W:Landroid/media/ImageReader;

    .line 20
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v16

    move-object v1, v5

    move-object/from16 v2, p0

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    move-object/from16 v1, v17

    .line 21
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-lez v10, :cond_5

    .line 22
    new-instance v6, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    const/4 v4, 0x0

    iget-object v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->X:Landroid/media/ImageReader;

    .line 23
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v7, v6

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    .line 24
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-lez v11, :cond_7

    .line 25
    iget-object v5, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->R:Landroid/view/Surface;

    if-eqz v5, :cond_6

    .line 26
    new-instance v7, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    const/4 v4, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 27
    :cond_6
    iget-object v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "startPreviewRepeatingInternal - mMainPreviewSurface is null, may be in deferred preview surface case"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_7
    :goto_3
    if-nez v8, :cond_a

    if-lez v12, :cond_8

    .line 28
    new-instance v7, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    const/4 v4, 0x0

    iget-object v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Y:Landroid/media/ImageReader;

    .line 29
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object v1, v7

    move-object/from16 v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    .line 30
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-lez v13, :cond_a

    .line 31
    iget-boolean v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r:Z

    if-eqz v1, :cond_9

    .line 32
    iget-object v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->q:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {v1}, Lcom/google/ar/core/SharedCamera;->getArCoreSurfaces()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/Surface;

    .line 33
    new-instance v10, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    const/4 v4, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 34
    :cond_9
    new-instance v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v2, "arCoreRequestCnt must be zero in normal camDevice"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v0

    :cond_a
    if-lez v14, :cond_b

    .line 35
    new-instance v7, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->V:Landroid/view/Surface;

    move-object v1, v7

    move-object/from16 v2, p0

    move v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_b
    :try_start_1
    sget-object v1, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$Policy;->a:Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$Policy;

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f1()J

    move-result-wide v2

    invoke-virtual {v1, v15, v2, v3, v8}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$Policy;->a(Ljava/util/List;JZ)Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    new-instance v2, Lcom/samsung/android/camera/core2/device/CamDevicePrevCaptureCallback;

    move-object/from16 v3, p2

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/camera/core2/device/CamDevicePrevCaptureCallback;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;)V

    if-nez v8, :cond_c

    .line 39
    iget-boolean v4, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r:Z

    if-eqz v4, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->d()I

    move-result v4

    if-lez v4, :cond_c

    .line 40
    iget-object v4, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->q:Lcom/google/ar/core/SharedCamera;

    iget-object v5, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/google/ar/core/SharedCamera;->setCaptureCallback(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    :cond_c
    :try_start_3
    iget-object v4, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup;->b()Ljava/util/List;

    move-result-object v1

    iget-object v5, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    .line 42
    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v5

    .line 43
    invoke-virtual {v4, v1, v2, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v1
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    :try_start_4
    invoke-virtual {v0, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->i2(Lcom/samsung/android/camera/core2/device/CamDeviceCaptureCallback;)V

    .line 45
    iput-object v3, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->c0:Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;

    .line 46
    iget-object v2, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->D:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    invoke-virtual {v0, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t2(Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;)V

    .line 47
    iget-object v0, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPreviewRepeatingInternal X - sequenceId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 48
    monitor-exit v9

    return v1

    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 50
    new-instance v1, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v1, v0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v1

    :catch_2
    move-exception v0

    .line 51
    new-instance v1, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v1, v0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v1

    :catch_3
    move-exception v0

    .line 52
    new-instance v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    .line 53
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method static bridge synthetic w0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w:Ljava/util/Map;

    return-object p0
.end method

.method private w2(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;Z)I
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move/from16 v8, p3

    .line 1
    iget-object v9, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v9

    .line 2
    :try_start_0
    iget-object v1, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "startRecordRepeatingInternal E - CamDeviceRepeatingRequestCnt %s, RecordStateCallback %s, isHighSpeedRequests %b"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v3, v10

    .line 3
    invoke-static/range {p2 .. p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    aput-object v4, v3, v11

    const/4 v4, 0x2

    .line 4
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 5
    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v1, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->c:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->a:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K1()Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    move-result-object v2

    if-ne v1, v2, :cond_0

    move v1, v11

    goto :goto_0

    :cond_0
    move v1, v10

    :goto_0
    iget-object v2, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    sget-object v3, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->r:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->c(ZLjava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 8
    iget-object v1, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M:Ljava/util/Map;

    invoke-static {v1, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 9
    iget-boolean v1, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r:Z

    if-nez v1, :cond_15

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->e()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v11

    goto :goto_1

    :cond_1
    move v1, v10

    :goto_1
    iget-object v2, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->T:Landroid/view/Surface;

    sget-object v3, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->f:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->c(ZLjava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->j()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v11

    goto :goto_2

    :cond_2
    move v1, v10

    :goto_2
    iget-object v2, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->U:Landroid/view/Surface;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->c(ZLjava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->f()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v11

    goto :goto_3

    :cond_3
    move v1, v10

    :goto_3
    iget-object v2, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W:Landroid/media/ImageReader;

    sget-object v3, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->k:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->c(ZLjava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->k()I

    move-result v1

    if-lez v1, :cond_4

    move v1, v11

    goto :goto_4

    :cond_4
    move v1, v10

    :goto_4
    iget-object v2, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->X:Landroid/media/ImageReader;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->c(ZLjava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->i()I

    move-result v1

    if-lez v1, :cond_5

    move v1, v11

    goto :goto_5

    :cond_5
    move v1, v10

    :goto_5
    iget-object v2, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->V:Landroid/view/Surface;

    sget-object v3, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->g:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->c(ZLjava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->e()I

    move-result v6

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->j()I

    move-result v12

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->g()I

    move-result v13

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->f()I

    move-result v14

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->k()I

    move-result v15

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->i()I

    move-result v16

    .line 21
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-lez v6, :cond_6

    .line 22
    new-instance v4, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M:Ljava/util/Map;

    const/16 v17, 0x1

    iget-object v2, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->T:Landroid/view/Surface;

    move-object v1, v4

    move-object/from16 v18, v2

    move-object/from16 v2, p0

    move-object v10, v4

    move/from16 v4, v17

    move-object v11, v5

    move-object/from16 v5, v18

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    move-object v11, v5

    :goto_6
    if-lez v12, :cond_7

    .line 23
    new-instance v10, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M:Ljava/util/Map;

    const/4 v4, 0x1

    iget-object v5, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->U:Landroid/view/Surface;

    move-object v1, v10

    move-object/from16 v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-lez v13, :cond_b

    .line 24
    iget-object v5, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->R:Landroid/view/Surface;

    if-eqz v5, :cond_a

    .line 25
    new-instance v10, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    if-eqz v8, :cond_8

    .line 26
    iget-object v1, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M:Ljava/util/Map;

    goto :goto_7

    :cond_8
    iget-object v1, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    :goto_7
    move-object v3, v1

    if-eqz v8, :cond_9

    const/4 v4, 0x1

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    :goto_8
    move-object v1, v10

    move-object/from16 v2, p0

    move v6, v13

    .line 27
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    .line 28
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 29
    :cond_a
    iget-object v1, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "startRecordRepeatingInternal - mMainPreviewSurface is null, may be in deferred preview surface case"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_b
    :goto_9
    if-lez v14, :cond_e

    .line 30
    new-instance v10, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    if-eqz v8, :cond_c

    .line 31
    iget-object v1, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M:Ljava/util/Map;

    goto :goto_a

    :cond_c
    iget-object v1, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    :goto_a
    move-object v3, v1

    if-eqz v8, :cond_d

    const/4 v4, 0x1

    goto :goto_b

    :cond_d
    const/4 v4, 0x0

    .line 32
    :goto_b
    iget-object v1, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W:Landroid/media/ImageReader;

    .line 33
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object v1, v10

    move-object/from16 v2, p0

    move v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    .line 34
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    if-lez v15, :cond_11

    .line 35
    new-instance v10, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    if-eqz v8, :cond_f

    .line 36
    iget-object v1, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M:Ljava/util/Map;

    goto :goto_c

    :cond_f
    iget-object v1, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    :goto_c
    move-object v3, v1

    if-eqz v8, :cond_10

    const/4 v4, 0x1

    goto :goto_d

    :cond_10
    const/4 v4, 0x0

    .line 37
    :goto_d
    iget-object v1, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->X:Landroid/media/ImageReader;

    .line 38
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object v1, v10

    move-object/from16 v2, p0

    move v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    .line 39
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    if-lez v16, :cond_14

    .line 40
    new-instance v10, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    if-eqz v8, :cond_12

    .line 41
    iget-object v1, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M:Ljava/util/Map;

    goto :goto_e

    :cond_12
    iget-object v1, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    :goto_e
    move-object v3, v1

    if-eqz v8, :cond_13

    const/4 v4, 0x1

    goto :goto_f

    :cond_13
    const/4 v4, 0x0

    .line 42
    :goto_f
    iget-object v5, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->V:Landroid/view/Surface;

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    .line 43
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_14
    :try_start_1
    sget-object v1, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$Policy;->a:Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$Policy;

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f1()J

    move-result-wide v2

    invoke-virtual {v1, v11, v2, v3, v8}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$Policy;->a(Ljava/util/List;JZ)Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :try_start_2
    new-instance v2, Lcom/samsung/android/camera/core2/device/CamDeviceRecCaptureCallback;

    invoke-direct {v2, v7, v0}, Lcom/samsung/android/camera/core2/device/CamDeviceRecCaptureCallback;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :try_start_3
    iget-object v3, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup;->b()Ljava/util/List;

    move-result-object v1

    iget-object v4, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v1
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    :try_start_4
    invoke-virtual {v7, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->i2(Lcom/samsung/android/camera/core2/device/CamDeviceCaptureCallback;)V

    .line 49
    iput-object v0, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->d0:Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;

    .line 50
    iget-object v0, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->F:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    invoke-virtual {v7, v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t2(Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;)V

    .line 51
    iget-object v0, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRecordRepeatingInternal X - sequenceId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 52
    monitor-exit v9

    return v1

    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 54
    new-instance v1, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v1, v0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v1

    :catch_2
    move-exception v0

    .line 55
    new-instance v1, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v1, v0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v1

    :catch_3
    move-exception v0

    .line 56
    iget-object v1, v7, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRecordRepeatingInternal - CamDeviceCaptureRequestGroup.createCaptureRequestGroup is failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 57
    new-instance v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v1

    .line 58
    :cond_15
    new-instance v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->v:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string/jumbo v2, "startRecordRepeatingInternal isn\'t supported in ArCoreCamDevice"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 59
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method static bridge synthetic x0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->A:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic y0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic z0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/CamDevice$StateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m:Lcom/samsung/android/camera/core2/CamDevice$StateCallback;

    return-object p0
.end method


# virtual methods
.method public A()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "restartPreviewRepeating"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f0:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    invoke-interface {p0}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;->i()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->v:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v1, "restartPreviewRepeating isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method A1()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->L:Ljava/util/Map;

    return-object p0
.end method

.method public B(I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "setAePreCaptureTrigger(%d) - sequenceId %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f0:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    invoke-interface {p0, p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;->e(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 5
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->v:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v0, "setAePreCaptureTrigger isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method B1()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/media/ImageReader;",
            "Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u:Ljava/util/Map;

    return-object p0
.end method

.method public C(II)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "setAfAndAePreCaptureTrigger(%d)(%d) - sequenceId %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f0:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;->c(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    .line 5
    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->v:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string p2, "setAfAndAePreCaptureTrigger isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method C1()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/media/ImageReader;",
            "Lcom/samsung/android/camera/core2/CamDevice$PreviewDepthCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->v:Ljava/util/Map;

    return-object p0
.end method

.method public D(I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "setAfTrigger(%d) - sequenceId %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f0:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    invoke-interface {p0, p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;->b(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 5
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->v:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v0, "setAfTrigger isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method D1()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M:Ljava/util/Map;

    return-object p0
.end method

.method public E(Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "setBurstPictureCallback(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method E1()Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->G:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    return-object p0
.end method

.method public F(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraAudioRestriction - mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->N:Landroid/hardware/camera2/CameraDevice;

    const-string v2, "cameraDevice"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->N:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->setCameraAudioRestriction(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw p1

    :catch_1
    move-exception p0

    .line 7
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, v1, p0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method F1()Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->E:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    return-object p0
.end method

.method public G(Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W:Landroid/media/ImageReader;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "setMainPreviewCallback(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method G1()Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->C:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    return-object p0
.end method

.method public H(Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "setMultiPictureCallback(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->x:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method H1()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->U:Landroid/view/Surface;

    return-object p0
.end method

.method public I(Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "setPictureCallback(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method I0(Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->checkDiscardPictureData(Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)V

    return-void
.end method

.method I1()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getSendPictureHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public J(Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "setPictureDepthCallback(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->A:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method J1()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getSendShutterHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public K(Lcom/samsung/android/camera/core2/CamDevice$PreviewDepthCallback;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Y:Landroid/media/ImageReader;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "setPreviewDepthCallback(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->v:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method K1()Lcom/samsung/android/camera/core2/CamDevice$SessionMode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    return-object p0
.end method

.method public L(Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->X:Landroid/media/ImageReader;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "setSubPreviewCallback(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public M(Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "setThumbnailCallback(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->y:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method M1()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object p0
.end method

.method public N(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "setTrigger %s : %s - sequenceId : %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Lcom/samsung/android/camera/core2/util/StringUtils;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f0:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 5
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->v:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string/jumbo p2, "setTrigger isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method N1()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->y:Ljava/util/Map;

    return-object p0
.end method

.method public O(Ljava/util/List;Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;",
            ">;",
            "Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;",
            ")I"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "startBurstPicRecordRepeating E - requestOptionsList size %d"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_0

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;

    .line 6
    iget-object v5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v7, "    startBurstPicRecordRepeating - requestOptionsList(%d) - %s "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    aput-object v4, v8, v3

    invoke-static {v5, v7, v8}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->d0:Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;

    .line 8
    iget-object p2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f0:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    invoke-interface {p2, p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;->m(Ljava/util/List;)I

    move-result p1

    .line 9
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startBurstPicRecordRepeating X - sequenceId "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 10
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 12
    :cond_1
    new-instance p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->v:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string/jumbo p2, "startBurstPicRecordRepeating isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Z:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    return-object p0
.end method

.method public P(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;)I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "startBurstPictureRepeating E - requestOptions %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->e0:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f0:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    invoke-interface {v1, p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;->j(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;)I

    move-result p1

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startBurstPictureRepeating X - sequenceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 7
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 9
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->v:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string/jumbo v0, "startBurstPictureRepeating isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method P1()Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->B:Ljava/util/concurrent/ConcurrentNavigableMap;

    return-object p0
.end method

.method public Q(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->b:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K1()Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->f()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s0:I

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->k()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t0:I

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->g()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u0:I

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->i()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w0:I

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->v2(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;Z)I

    move-result p0

    return p0

    .line 8
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->v:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string/jumbo p2, "startHighSpeedPreviewRepeating isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string p2, "sessionMode is not highSpeed"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method public R(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->e()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->v0:I

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->g()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u0:I

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->f()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s0:I

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->k()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t0:I

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->i()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w0:I

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w2(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;Z)I

    move-result p0

    return p0
.end method

.method public S(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->b:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K1()Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->f()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k0:I

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->k()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l0:I

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->g()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m0:I

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->h()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->p0:I

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->d()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->q0:I

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->i()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r0:I

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->v2(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;Z)I

    move-result p0

    return p0

    .line 9
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string p2, "sessionMode is highSpeed"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method public T(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->e()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->n0:I

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->j()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->o0:I

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->g()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m0:I

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->f()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k0:I

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->k()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l0:I

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->i()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r0:I

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w2(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;Z)I

    move-result p0

    return p0
.end method

.method public U()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f0:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    invoke-interface {v1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;->g()I

    move-result v1

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopBurstPicRecordRepeating - sequenceId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public V()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f0:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    invoke-interface {v1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;->a()I

    move-result v1

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopBurstPictureRepeating - sequenceId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public W()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "stopRepeating"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f0:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    invoke-interface {p0}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;->f()V

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

.method public X(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "takeMultiPicture - requestOptionsList size %d"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;

    .line 5
    iget-object v5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v7, "    takeMultiPicture - requestOptionsList(%d) - %s "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    aput-object v4, v8, v3

    invoke-static {v5, v7, v8}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f0:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    invoke-interface {v1, p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;->l(Ljava/util/List;)I

    move-result p1

    .line 7
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v1, "takeMultiPicture - sequenceId %d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p0, v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public Y(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "takePicture - requestOptions %s sequenceId %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f0:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;->k(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    .line 4
    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method Z0(Ljava/util/Map;Z)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move/from16 v7, p2

    .line 1
    iget-object v8, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_0

    .line 2
    :try_start_0
    iget v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s0:I

    move v6, v1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k0:I

    if-lez v1, :cond_1

    move v6, v9

    goto :goto_0

    :cond_1
    move v6, v10

    :goto_0
    if-eqz v7, :cond_2

    .line 3
    iget v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t0:I

    move v11, v1

    goto :goto_1

    :cond_2
    iget v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l0:I

    if-lez v1, :cond_3

    move v11, v9

    goto :goto_1

    :cond_3
    move v11, v10

    :goto_1
    if-eqz v7, :cond_4

    .line 4
    iget v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u0:I

    move v12, v1

    goto :goto_2

    :cond_4
    iget v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m0:I

    if-lez v1, :cond_5

    move v12, v9

    goto :goto_2

    :cond_5
    move v12, v10

    .line 5
    :goto_2
    iget-object v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->r:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    if-lez v6, :cond_6

    .line 6
    iget-object v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W:Landroid/media/ImageReader;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->k:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    :cond_6
    if-lez v11, :cond_7

    .line 7
    iget-object v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->X:Landroid/media/ImageReader;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->k:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 8
    :cond_7
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-lez v6, :cond_8

    .line 9
    new-instance v14, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    const/4 v4, 0x0

    iget-object v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W:Landroid/media/ImageReader;

    .line 10
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object v1, v14

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    .line 11
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-lez v11, :cond_9

    .line 12
    new-instance v14, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    const/4 v4, 0x0

    iget-object v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->X:Landroid/media/ImageReader;

    .line 13
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object v1, v14

    move-object v2, p0

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    .line 14
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    if-lez v12, :cond_b

    .line 15
    iget-object v5, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->R:Landroid/view/Surface;

    if-eqz v5, :cond_a

    .line 16
    new-instance v11, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    const/4 v4, 0x0

    move-object v1, v11

    move-object v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 17
    :cond_a
    iget-object v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "createPreviewCaptureRequestList - mMainPreviewSurface is null, may be in deferred preview surface case"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 18
    :cond_b
    :goto_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    iget-object v6, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5, v6, v11}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->c(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v4, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    iget-object v5, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5, v6, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 22
    :cond_c
    :try_start_1
    sget-object v2, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$Policy;->a:Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$Policy;

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f1()J

    move-result-wide v3

    invoke-virtual {v2, v13, v3, v4, v7}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$Policy;->a(Ljava/util/List;JZ)Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 25
    iget-object v4, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K:Ljava/util/Map;

    iget-object v5, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5, v6, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_5

    .line 26
    :cond_d
    iget-object v0, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "createPreviewCaptureRequestList - captureRequest list size %d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v0, v1, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup;->b()Ljava/util/List;

    move-result-object v0

    monitor-exit v8

    return-object v0

    :catch_0
    move-exception v0

    .line 28
    new-instance v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    .line 29
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public a(Landroid/view/Surface;)V
    .locals 4

    const-string v0, "mainPreviewSurface"

    .line 1
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMainPreviewSurface - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->c:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->S:Landroid/hardware/camera2/params/OutputConfiguration;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->q:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->S:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->S:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->R:Landroid/view/Surface;

    .line 9
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, v1, p0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 11
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw p1

    :catch_2
    move-exception p0

    .line 12
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw p1

    :catch_3
    move-exception p0

    .line 13
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, v1, p0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public b()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f0:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    invoke-interface {v1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;->h()I

    move-result v1

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applySettings -  sequenceId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->v:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v1, "applySettings isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method c1(Ljava/util/Map;Z)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v7, p2

    .line 1
    iget-object v8, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v8

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    .line 2
    :try_start_0
    iget v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->v0:I

    move v6, v1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->n0:I

    if-lez v1, :cond_1

    move v6, v9

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v7, :cond_3

    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 3
    :cond_3
    iget v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->o0:I

    if-lez v1, :cond_2

    move v11, v9

    :goto_1
    if-eqz v7, :cond_4

    .line 4
    iget v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s0:I

    move v12, v1

    goto :goto_2

    :cond_4
    iget v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k0:I

    if-lez v1, :cond_5

    move v12, v9

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    :goto_2
    if-eqz v7, :cond_6

    .line 5
    iget v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t0:I

    move v13, v1

    goto :goto_3

    :cond_6
    iget v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l0:I

    if-lez v1, :cond_7

    move v13, v9

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    :goto_3
    if-eqz v7, :cond_8

    .line 6
    iget v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u0:I

    move v14, v1

    goto :goto_4

    :cond_8
    iget v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m0:I

    if-lez v1, :cond_9

    move v14, v9

    goto :goto_4

    :cond_9
    const/4 v14, 0x0

    .line 7
    :goto_4
    iget-object v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->r:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    if-lez v6, :cond_a

    move v1, v9

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    .line 8
    :goto_5
    iget-object v2, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->T:Landroid/view/Surface;

    sget-object v3, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->f:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->c(ZLjava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    if-lez v11, :cond_b

    move v1, v9

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 9
    :goto_6
    iget-object v2, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->U:Landroid/view/Surface;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->c(ZLjava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    if-lez v12, :cond_c

    move v1, v9

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    .line 10
    :goto_7
    iget-object v2, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W:Landroid/media/ImageReader;

    sget-object v3, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->k:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->c(ZLjava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    if-lez v13, :cond_d

    move v1, v9

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    .line 11
    :goto_8
    iget-object v2, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->X:Landroid/media/ImageReader;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->c(ZLjava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 12
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-lez v6, :cond_e

    .line 13
    new-instance v5, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M:Ljava/util/Map;

    const/4 v4, 0x1

    iget-object v2, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->T:Landroid/view/Surface;

    move-object v1, v5

    move-object/from16 v16, v2

    move-object/from16 v2, p0

    move-object v10, v5

    move-object/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    if-lez v11, :cond_f

    .line 14
    new-instance v10, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M:Ljava/util/Map;

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->U:Landroid/view/Surface;

    move-object v1, v10

    move-object/from16 v2, p0

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    if-lez v12, :cond_10

    .line 15
    new-instance v10, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M:Ljava/util/Map;

    const/4 v4, 0x1

    iget-object v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W:Landroid/media/ImageReader;

    .line 16
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object v1, v10

    move-object/from16 v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    .line 17
    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    if-lez v13, :cond_11

    .line 18
    new-instance v10, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M:Ljava/util/Map;

    const/4 v4, 0x1

    iget-object v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->X:Landroid/media/ImageReader;

    .line 19
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object v1, v10

    move-object/from16 v2, p0

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    .line 20
    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    if-lez v14, :cond_13

    .line 21
    iget-object v5, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->R:Landroid/view/Surface;

    if-eqz v5, :cond_12

    .line 22
    new-instance v10, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M:Ljava/util/Map;

    const/4 v4, 0x1

    move-object v1, v10

    move-object/from16 v2, p0

    move v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 23
    :cond_12
    iget-object v1, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "createRecordCaptureRequestList - mMainPreviewSurface is null, may be in deferred preview surface case"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 24
    :cond_13
    :goto_9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 25
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M:Ljava/util/Map;

    iget-object v6, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5, v6, v10}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->c(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v4, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M:Ljava/util/Map;

    iget-object v5, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5, v6, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_a

    .line 28
    :cond_14
    :try_start_1
    sget-object v2, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$Policy;->a:Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$Policy;

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f1()J

    move-result-wide v3

    invoke-virtual {v2, v15, v3, v4, v7}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$Policy;->a(Ljava/util/List;JZ)Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 31
    iget-object v4, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M:Ljava/util/Map;

    iget-object v5, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5, v6, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_b

    .line 32
    :cond_15
    iget-object v0, v0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "createRecordCaptureRequestList - captureRequest list size %d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup;->b()Ljava/util/List;

    move-result-object v0

    monitor-exit v8

    return-object v0

    :catch_0
    move-exception v0

    .line 34
    new-instance v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    .line 35
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "close E - cameraDevice(%s)"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->N:Landroid/hardware/camera2/CameraDevice;

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-boolean v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->x0:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "close - CamDevice is closed already"

    invoke-static {p0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->x0:Z

    .line 7
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->C:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t2(Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;)V

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->J0()V

    .line 9
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 10
    iget-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Q:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    :cond_2
    if-eqz v1, :cond_4

    .line 12
    iget-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getSendSessionCallbackHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 13
    new-instance v4, Lcom/samsung/android/camera/core2/device/v0;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/camera/core2/device/v0;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v3, "post SessionCallback(onDeviceClosed) fail - post fail"

    invoke-static {v1, v3}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v3, "post SessionCallback(onDeviceClosed) fail - postHandler is null"

    invoke-static {v1, v3}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 16
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->N:Landroid/hardware/camera2/CameraDevice;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/core2/device/d1;->a:Lcom/samsung/android/camera/core2/device/d1;

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 17
    iput-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->R:Landroid/view/Surface;

    .line 18
    iput-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->S:Landroid/hardware/camera2/params/OutputConfiguration;

    .line 19
    iput-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->T:Landroid/view/Surface;

    .line 20
    iput-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->U:Landroid/view/Surface;

    .line 21
    iput-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->V:Landroid/view/Surface;

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->stopImageReaderHandlerThread()V

    .line 24
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->stopBackgroundHandlerThread()V

    .line 25
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Q0()V

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->N0()V

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K0()V

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->S0()V

    .line 30
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 32
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 33
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->x:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 34
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 35
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 36
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->A:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 37
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->J:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 39
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "close X"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 40
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 41
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public d()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l1()Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;->b:Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "checkValidDeviceStatus - deviceStatus(%s)"

    invoke-static {p0, v3, v2}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance p0, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera device not opened. current state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public f(Lcom/samsung/android/camera/core2/container/SessionConfig;)V
    .locals 2

    :try_start_0
    const-string v0, "sessionConfig"

    .line 1
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/samsung/android/camera/core2/container/SessionConfig;->j:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    const-string v1, "sessionConfig.callback"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->a:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->T0(Lcom/samsung/android/camera/core2/container/SessionConfig;Lcom/samsung/android/camera/core2/CamDevice$SessionMode;)V

    return-void

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->s:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1
.end method

.method f1()J
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->i0:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->i0:J

    return-wide v0
.end method

.method g1()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public h(Lcom/samsung/android/camera/core2/container/SessionConfig;)V
    .locals 2

    :try_start_0
    const-string v0, "sessionConfig"

    .line 1
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/samsung/android/camera/core2/container/SessionConfig;->j:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    const-string v1, "sessionConfig.callback"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r:Z

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->b:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->T0(Lcom/samsung/android/camera/core2/container/SessionConfig;Lcom/samsung/android/camera/core2/CamDevice$SessionMode;)V

    return-void

    .line 5
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->v:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v0, "highSpeedCaptureSession isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->s:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1
.end method

.method h1()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z:Ljava/util/Map;

    return-object p0
.end method

.method public i1()Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object p0
.end method

.method i2(Lcom/samsung/android/camera/core2/device/CamDeviceCaptureCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/device/CamDeviceCaptureCallback<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->I:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->I:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method isClosed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->x0:Z

    return p0
.end method

.method j1()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getCaptureCallbackHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method j2(Ljava/util/EnumSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->b0:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "RequestedPictureRequestTypeSet info : %s"

    invoke-static {v0, v4, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->b0:Ljava/util/EnumSet;

    aput-object v2, v1, v3

    const-string v2, "CurrentPictureRequestTypeSet info : %s"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->b0:Ljava/util/EnumSet;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->J:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    if-eqz v1, :cond_1

    .line 7
    new-instance v2, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;

    sget-object v3, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;->a:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;

    invoke-direct {v2, p0, v1, v3}, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;)V

    iget-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->b()Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getImageReaderHandler(Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;)Landroid/os/Handler;

    move-result-object v3

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->n(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 10
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->b0:Ljava/util/EnumSet;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public k(ILjava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/camera2/CaptureRequest$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "createRequestBuilder Template %d IdSet %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Lcom/samsung/android/camera/core2/util/StringUtils;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4
    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 5
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->N:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->N:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(ILjava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object p2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 9
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw p1

    :catch_2
    move-exception p0

    .line 10
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method k1()Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method k2()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "restartHighSpeedRecordRepeatingInternal"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->d0:Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v3, "can\'t find recordStateCallback on current session"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->b(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->c()Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->v0:I

    .line 5
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->k(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s0:I

    .line 6
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->l(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t0:I

    .line 7
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->q(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u0:I

    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->m(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w0:I

    .line 9
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->o(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->i()Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->d0:Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;

    .line 11
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->R(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public l1()Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/CamDevice;->d:Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;

    return-object p0
.end method

.method l2()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "restartPreviewRepeatingInternal"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->c0:Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v3, "can\'t find previewStateCallback on current session"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->b(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->b:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K1()Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 5
    invoke-static {}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->c()Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s0:I

    .line 6
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->l(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t0:I

    .line 7
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->q(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u0:I

    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->m(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w0:I

    .line 9
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->o(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->i()Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->c0:Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;

    .line 11
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Q(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 12
    :cond_0
    invoke-static {}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->c()Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k0:I

    .line 13
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->l(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l0:I

    .line 14
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->q(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m0:I

    .line 15
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->m(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->p0:I

    .line 16
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->n(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->q0:I

    .line 17
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->j(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r0:I

    .line 18
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->o(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->i()Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->c0:Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;

    .line 20
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->S(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method m1()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->T:Landroid/view/Surface;

    return-object p0
.end method

.method m2()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "restartRecordRepeatingInternal"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->d0:Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v3, "can\'t find recordStateCallback on current session"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->b(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->c()Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->n0:I

    .line 5
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->k(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->o0:I

    .line 6
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->p(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k0:I

    .line 7
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->l(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l0:I

    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->q(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m0:I

    .line 9
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->m(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r0:I

    .line 10
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->o(I)Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt$Builder;->i()Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->d0:Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;

    .line 12
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->T(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method n1()Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->e0:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;

    return-object p0
.end method

.method n2(Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l:Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->sendPictureCallback(Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)V

    return-void
.end method

.method public o()Lcom/samsung/android/camera/core2/CamCapability;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->o:Lcom/samsung/android/camera/core2/CamCapability;

    return-object p0
.end method

.method o1()Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->c0:Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;

    return-object p0
.end method

.method o2()Ljava/util/concurrent/CountDownLatch;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->g0:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->g0:Ljava/util/concurrent/CountDownLatch;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->g0:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public p()Lcom/samsung/android/camera/core2/CamDevice$CaptureState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->h0:Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    return-object p0
.end method

.method p1()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0:J

    return-wide v0
.end method

.method q1()Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->d0:Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;

    return-object p0
.end method

.method q2(Lcom/samsung/android/camera/core2/CamDevice$CaptureState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureState - captureState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->h0:Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f:Ljava/lang/String;

    return-object p0
.end method

.method r1()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k0:I

    return p0
.end method

.method r2(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0:J

    return-void
.end method

.method s1()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->W:Landroid/media/ImageReader;

    return-object p0
.end method

.method t1()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m0:I

    return p0
.end method

.method t2(Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRepeatingState - repeatingState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f0:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

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

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->N:Landroid/hardware/camera2/CameraDevice;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "CamDeviceImpl(%s) - id(%s) - CameraDevice(%s)"

    .line 3
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f0:Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method u1()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->R:Landroid/view/Surface;

    return-object p0
.end method

.method v1()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->x:Ljava/util/Map;

    return-object p0
.end method

.method w1()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;",
            "Lcom/samsung/android/camera/core2/util/BlockingImageReader;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->J:Ljava/util/Map;

    return-object p0
.end method

.method x1()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w:Ljava/util/Map;

    return-object p0
.end method

.method public y()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r:Z

    return p0
.end method

.method y1()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->A:Ljava/util/Map;

    return-object p0
.end method

.method public z(Landroid/view/Surface;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "prepareSurface"

    .line 2
    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->c:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareSurface : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession;->prepare(Landroid/view/Surface;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 7
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, v1, p0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 9
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->a0:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    return-object p0
.end method
