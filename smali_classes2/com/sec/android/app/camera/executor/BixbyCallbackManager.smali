.class public Lcom/sec/android/app/camera/executor/BixbyCallbackManager;
.super Ljava/lang/Object;
.source "BixbyCallbackManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$ShootingModeChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BixbyCallbackManager"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mContext:Landroid/content/Context;

.field private mCurrentShootingMode:I

.field private final mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mInitBixbyApiThread:Ljava/lang/Thread;

.field private final mStateCallback:Li4/a$a;

.field private mStateHandler:Li4/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;-><init>(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mStateCallback:Li4/a$a;

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 5
    iput-object p3, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 6
    iput-object p4, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->lambda$start$0()V

    return-void
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mCurrentShootingMode:I

    return p0
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object p0
.end method

.method private synthetic lambda$start$0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lf4/c;->e(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lf4/c;->d()Li4/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mStateHandler:Li4/a;

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mStateCallback:Li4/a$a;

    invoke-virtual {v0, p0}, Li4/a;->f(Li4/a$a;)V

    return-void
.end method


# virtual methods
.method public onShootingModeChanged(IIZ)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mCurrentShootingMode:I

    return-void
.end method

.method start()V
    .locals 2

    const-string v0, "BixbyCallbackManager"

    const-string/jumbo v1, "start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerShootingModeChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$ShootingModeChangedListener;)V

    .line 3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/executor/h0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/executor/h0;-><init>(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    const-string v1, "mInitBixbyApiThread"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method stop()V
    .locals 2

    const-string v0, "BixbyCallbackManager"

    const-string/jumbo v1, "stop"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 4
    iput-object v0, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mInitBixbyApiThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mStateHandler:Li4/a;

    invoke-virtual {v1, v0}, Li4/a;->f(Li4/a$a;)V

    .line 6
    iput-object v0, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mStateHandler:Li4/a;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterShootingModeChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$ShootingModeChangedListener;)V

    return-void
.end method
