.class Lcom/sec/android/app/camera/DvfsManager;
.super Ljava/lang/Object;
.source "DvfsManager.java"


# static fields
.field static final CAMERA_BOOST_HINT:I = 0x41a

.field static final CAMERA_PAUSE_HINT:I = 0x41b

.field private static final CAMERA_RUNNING_HINT:I = 0x11c6

.field private static final TAG:Ljava/lang/String; = "DvfsManager"


# instance fields
.field private mCameraRunningDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field private final mContext:Landroid/content/Context;

.field private mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field private mLpmDisableManager:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/DvfsManager;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/DvfsManager;->mCameraRunningDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 4
    iput-object v0, p0, Lcom/sec/android/app/camera/DvfsManager;->mLpmDisableManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 5
    iput-object p1, p0, Lcom/sec/android/app/camera/DvfsManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(IILcom/samsung/android/os/SemDvfsManager;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/DvfsManager;->lambda$acquireDvfsLock$0(IILcom/samsung/android/os/SemDvfsManager;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/DvfsManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/DvfsManager;->lambda$setCameraRunningHint$4()V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/os/SemDvfsManager;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/DvfsManager;->lambda$setCameraRunningHint$3(Lcom/samsung/android/os/SemDvfsManager;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/DvfsManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/DvfsManager;->lambda$acquireDvfsLock$1(II)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/DvfsManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/DvfsManager;->lambda$acquireDVFSLockLPMDisable$2(I)V

    return-void
.end method

.method private synthetic lambda$acquireDVFSLockLPMDisable$2(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/DvfsManager;->mLpmDisableManager:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/DvfsManager;->mContext:Landroid/content/Context;

    const v1, 0x10003002

    const-string v2, "Camera_CPU_LPM_DISABLE"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/DvfsManager;->mLpmDisableManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/DvfsManager;->mLpmDisableManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "acquireDVFSLockLPMDisable acquire : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DvfsManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$acquireDvfsLock$0(IILcom/samsung/android/os/SemDvfsManager;)V
    .locals 2

    .line 1
    invoke-virtual {p2, p0}, Lcom/samsung/android/os/SemDvfsManager;->checkHintSupported(I)Z

    move-result v0

    const-string v1, "DvfsManager"

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2, p0}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 3
    invoke-virtual {p2, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "acquireDVFSLock : acquire "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "acquireDVFSLock : cannot support hint="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$acquireDvfsLock$1(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/DvfsManager;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/DvfsManager;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.camera"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/DvfsManager;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/DvfsManager;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/b2;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/camera/b2;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$setCameraRunningHint$3(Lcom/samsung/android/os/SemDvfsManager;)V
    .locals 3

    const/16 v0, 0x11c6

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsManager;->checkHintSupported(I)Z

    move-result v1

    const-string v2, "DvfsManager"

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    const-string p0, "setCameraRunningHint : acquire"

    .line 4
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "setCameraRunningHint : cannot support hint"

    .line 5
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$setCameraRunningHint$4()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/DvfsManager;->mCameraRunningDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/DvfsManager;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.camera_RunningHint"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/DvfsManager;->mCameraRunningDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/DvfsManager;->mCameraRunningDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/c2;->a:Lcom/sec/android/app/camera/c2;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method acquireDVFSLockLPMDisable(Landroid/os/Handler;I)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/z1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/camera/z1;-><init>(Lcom/sec/android/app/camera/DvfsManager;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method acquireDvfsLock(Landroid/os/Handler;II)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/a2;

    invoke-direct {v0, p0, p2, p3}, Lcom/sec/android/app/camera/a2;-><init>(Lcom/sec/android/app/camera/DvfsManager;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method release()V
    .locals 2

    const-string v0, "DvfsManager"

    const-string v1, "release"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/DvfsManager;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/DvfsManager;->mCameraRunningDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/DvfsManager;->mLpmDisableManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_2
    return-void
.end method

.method setCameraRunningHint(Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/y1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/y1;-><init>(Lcom/sec/android/app/camera/DvfsManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
