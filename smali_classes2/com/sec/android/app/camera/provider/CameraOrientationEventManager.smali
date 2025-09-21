.class public Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;
.super Ljava/lang/Object;
.source "CameraOrientationEventManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraOrientationEventManager"

.field private static mInstance:Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

.field private static final mInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private mIsSemContextListenerAvailable:Z

.field private mLastOrientation:I

.field private final mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mIsSemContextListenerAvailable:Z

    .line 4
    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mLastOrientation:I

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mApplicationContext:Landroid/content/Context;

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->initialize()V

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mLastOrientation:I

    return p0
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mLastOrientation:I

    return-void
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->notifyOrientationChanged(I)V

    return-void
.end method

.method private static clear()V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    sput-object v1, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private convertSemContextOrientationToDegree(I)I
    .locals 1

    const/4 p0, -0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_4

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    :cond_0
    move p0, v0

    goto :goto_0

    :cond_1
    const/16 p0, 0x5a

    goto :goto_0

    :cond_2
    const/16 p0, 0xb4

    goto :goto_0

    :cond_3
    const/16 p0, 0x10e

    :cond_4
    :goto_0
    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    .line 4
    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    sget-object v1, Lu3/b;->c:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mApplicationContext:Landroid/content/Context;

    const-string v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    .line 6
    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mIsSemContextListenerAvailable:Z

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mIsSemContextListenerAvailable:Z

    const-string v1, "CameraOrientationEventManager"

    if-eqz v0, :cond_2

    const-string/jumbo p0, "using SemContextListener"

    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "using OrientationEventListener of android"

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_3

    .line 11
    new-instance v0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$1;

    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$1;-><init>(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_3
    :goto_0
    return-void
.end method

.method private notifyOrientationChanged(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p0, "CameraOrientationEventManager"

    const-string p1, "notifyOrientationChanged - ORIENTATION_UNKNOWN"

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mLastOrientation:I

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;

    .line 5
    iget v2, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mLastOrientation:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;->onCameraOrientationChanged(I)V

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public disable()V
    .locals 2

    const-string v0, "CameraOrientationEventManager"

    const-string v1, "orientation listener disabled"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mIsSemContextListenerAvailable:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    .line 4
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mLastOrientation:I

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 11
    invoke-static {}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->clear()V

    .line 12
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public enable(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orientation listener enabled : current display rotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraOrientationEventManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mLastOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->convertSemContextOrientationToDegree(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->notifyOrientationChanged(I)V

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mIsSemContextListenerAvailable:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/4 v0, 0x6

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    :goto_0
    return-void
.end method

.method public getLastOrientation()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mLastOrientation:I

    return p0
.end method

.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->getAngle()I

    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->convertSemContextOrientationToDegree(I)I

    move-result p1

    .line 6
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->notifyOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public registerListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mLastOrientation:I

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;->onCameraOrientationChanged(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

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
