.class public Lv3/b;
.super Ljava/lang/Object;
.source "STPServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/b$c;,
        Lv3/b$d;,
        Lv3/b$b;
    }
.end annotation


# static fields
.field private static j:Lv3/b;

.field private static final k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Landroid/util/SparseIntArray;

.field private static final m:[I

.field private static final n:Landroid/content/ComponentName;


# instance fields
.field private a:Landroid/content/Context;

.field private volatile b:Z

.field private c:Landroid/os/Messenger;

.field private final d:Landroid/os/Handler;

.field private final e:Lv3/b$d;

.field private f:Lv3/b$b;

.field private volatile g:I

.field private volatile h:Z

.field private final i:Lv3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lv3/b;->m:[I

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.singletake.service"

    const-string v3, "com.samsung.android.singletake.service.core.STPService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lv3/b;->n:Landroid/content/ComponentName;

    .line 3
    new-instance v1, Landroid/util/SparseArray;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v1, Lv3/b;->k:Landroid/util/SparseArray;

    const/4 v2, 0x0

    const-string v3, "BIND"

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    const-string v3, "INITIALIZE"

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x2

    const-string v4, "DEINITIALIZE"

    .line 6
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v4, "START"

    .line 7
    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v4, 0x4

    const-string v5, "STOP"

    .line 8
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v5, 0x5

    const-string v6, "CANCEL"

    .line 9
    invoke-virtual {v1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v6, 0x6

    const-string v7, "SET_CAM_CATURE_INFO"

    .line 10
    invoke-virtual {v1, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v7, 0x7

    const-string v8, "SET_DEVICE_ORIENTATION"

    .line 11
    invoke-virtual {v1, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x8

    const-string v9, "SET_MOTION_INFO"

    .line 12
    invoke-virtual {v1, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v9, 0x9

    const-string v10, "UNBIND"

    .line 13
    invoke-virtual {v1, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v9, 0xb

    const-string v10, "SET_JUMP_INFO"

    .line 14
    invoke-virtual {v1, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v10, 0xc9

    const-string v11, "COMMAND_GET_DEBUG_MODE"

    .line 15
    invoke-virtual {v1, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v10, 0xca

    const-string v11, "COMMAND_SET_DEBUG_MODE"

    .line 16
    invoke-virtual {v1, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v10, -0x1

    const-string v11, "START_AUDIO_RECORDING"

    .line 17
    invoke-virtual {v1, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v10, -0x2

    const-string v11, "STOP_AUDIO_RECORDING"

    .line 18
    invoke-virtual {v1, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v10, 0x33

    const-string v11, "ON_INITIALIZED"

    .line 19
    invoke-virtual {v1, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v10, 0x34

    const-string v11, "ON_DEINITIALIZED"

    .line 20
    invoke-virtual {v1, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v10, 0x35

    const-string v11, "ON_STARTED"

    .line 21
    invoke-virtual {v1, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v10, 0x36

    const-string v11, "ON_STOPPED"

    .line 22
    invoke-virtual {v1, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v10, 0x37

    const-string v11, "ON_CANCELLED"

    .line 23
    invoke-virtual {v1, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v10, 0x38

    const-string v11, "ON_ERROR"

    .line 24
    invoke-virtual {v1, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v10, 0x39

    const-string v11, "ON_RECORDING_STARTED"

    .line 25
    invoke-virtual {v1, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v10, 0xfb

    const-string v11, "NOTIFY_GET_DEBUG_MODE_RESULT"

    .line 26
    invoke-virtual {v1, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v10, 0xfc

    const-string v11, "NOTIFY_SET_DEBUG_MODE_RESULT"

    .line 27
    invoke-virtual {v1, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lv3/b;->l:Landroid/util/SparseIntArray;

    const/4 v10, -0x3

    .line 29
    invoke-virtual {v1, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, -0x6

    .line 30
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v3, -0x4

    .line 31
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, -0x5

    .line 32
    invoke-virtual {v1, v4, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    invoke-virtual {v1, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    invoke-virtual {v1, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    invoke-virtual {v1, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    invoke-virtual {v1, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    invoke-virtual {v1, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :array_0
    .array-data 4
        0x7d0
        0x3e8
        0x3e8
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "STPServiceClient"

    const-string v1, "SingleTake camera client Library version: 2.1.00.02"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lv3/b;->g:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lv3/b;->h:Z

    .line 5
    new-instance v0, Lv3/b$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv3/b$d;-><init>(Lv3/b$a;)V

    iput-object v0, p0, Lv3/b;->e:Lv3/b$d;

    .line 6
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceClient"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 9
    new-instance v1, Lv3/b$c;

    invoke-direct {v1, p0, v0}, Lv3/b$c;-><init>(Lv3/b;Landroid/os/Looper;)V

    iput-object v1, p0, Lv3/b;->d:Landroid/os/Handler;

    .line 10
    invoke-static {}, Lv3/a;->m()Lv3/a;

    move-result-object v0

    iput-object v0, p0, Lv3/b;->i:Lv3/a;

    return-void
.end method

.method private C()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lv3/b;->h:Z

    const-string v1, "STPServiceClient"

    if-eqz v0, :cond_0

    const-string p0, "StartService: already started"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.singletake.service.core.STPService.EXECUTE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    sget-object v2, Lv3/b;->n:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5
    iget-object v3, p0, Lv3/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lv3/b;->h:Z

    const-string p0, "StartService initiated"

    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartService failed: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service start failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private D()V
    .locals 0

    iget-object p0, p0, Lv3/b;->i:Lv3/a;

    invoke-virtual {p0}, Lv3/a;->q()V

    return-void
.end method

.method private declared-synchronized E(Landroid/os/Message;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lv3/b;->i:Lv3/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lv3/a;->k(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized F()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lv3/b;->i:Lv3/a;

    invoke-virtual {v0}, Lv3/a;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized G()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-direct {p0, v0}, Lv3/b;->u(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private H(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget p0, p1, Landroid/os/Message;->what:I

    if-ltz p0, :cond_0

    const/16 p1, 0xb

    if-le p0, p1, :cond_2

    :cond_0
    const/4 p1, -0x1

    if-gt p0, p1, :cond_1

    const/4 p1, -0x2

    if-ge p0, p1, :cond_2

    :cond_1
    const/16 p1, 0xc8

    if-lt p0, p1, :cond_3

    const/16 p1, 0xca

    if-gt p0, p1, :cond_3

    :cond_2
    return-void

    .line 2
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid operation type received !!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a()Lv3/b;
    .locals 1

    sget-object v0, Lv3/b;->j:Lv3/b;

    return-object v0
.end method

.method static synthetic b(Lv3/b;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lv3/b;->t(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic c(Lv3/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lv3/b;->u(Z)V

    return-void
.end method

.method static synthetic d()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lv3/b;->k:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic e(Lv3/b;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lv3/b;->r(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic f(Lv3/b;)V
    .locals 0

    invoke-direct {p0}, Lv3/b;->q()V

    return-void
.end method

.method static synthetic g(Lv3/b;)Lv3/b$b;
    .locals 0

    iget-object p0, p0, Lv3/b;->f:Lv3/b$b;

    return-object p0
.end method

.method private declared-synchronized h()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lv3/b;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lv3/b;->C()V

    .line 3
    invoke-direct {p0}, Lv3/b;->i()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.singletake.service.core.STPService.EXECUTE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v3, Lv3/b;->n:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 3
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v3, 0x1

    .line 4
    iput v3, p0, Lv3/b;->g:I

    .line 5
    iget-object v3, p0, Lv3/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lv3/b;->e:Lv3/b$d;

    const/16 v5, 0x41

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "STPServiceClient"

    const-string v3, "binding to service failed!"

    .line 6
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iput v1, p0, Lv3/b;->g:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return v0

    .line 9
    :cond_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v2, "STPServiceClient"

    const-string v3, "binding to service failed! - permission denied!"

    .line 10
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iput v1, p0, Lv3/b;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    return v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method private j()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service Bind try count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , waitPeriod "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lv3/b;->m:[I

    aget v4, v3, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "STPServiceClient"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    aget v0, v3, v0

    invoke-direct {p0, v0}, Lv3/b;->k(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    array-length v1, v3

    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private declared-synchronized k(I)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lv3/b;->i()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string v2, "STPServiceClient"

    const-string v4, "binding to service..."

    .line 2
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, p1

    .line 3
    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    iget p1, p0, Lv3/b;->g:I

    if-eq p1, v3, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const-string p1, "STPServiceClient"

    const-string v2, "service connection bind failed!"

    .line 5
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "STPServiceClient"

    const-string v2, "Client connected to Framework."

    .line 6
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_0

    :cond_1
    const-string p1, "STPServiceClient"

    const-string v2, "service connection bind timed out!"

    .line 7
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    const-string p1, "STPServiceClient"

    const-string/jumbo v2, "wait on thread failed"

    .line 8
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iput v0, p0, Lv3/b;->g:I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    monitor-exit p0

    return v1

    .line 11
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_3
    const-string p1, "STPServiceClient"

    const-string v2, "binding to service failed! - permission denied!"

    .line 12
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iput v0, p0, Lv3/b;->g:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized l()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lv3/b;->i:Lv3/a;

    invoke-virtual {v0}, Lv3/a;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m(Landroid/os/Message;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lv3/b;->i:Lv3/a;

    invoke-virtual {v0}, Lv3/a;->f()V

    .line 2
    invoke-direct {p0, p1}, Lv3/b;->p(Landroid/os/Message;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lv3/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized n()Lv3/b;
    .locals 2

    const-class v0, Lv3/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lv3/b;->j:Lv3/b;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lv3/b;

    invoke-direct {v1}, Lv3/b;-><init>()V

    sput-object v1, Lv3/b;->j:Lv3/b;

    .line 3
    :cond_0
    sget-object v1, Lv3/b;->j:Lv3/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized o(Landroid/os/Message;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lv3/b;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lv3/b;->m:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lv3/b;->k(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "STPServiceClient"

    const-string v0, "handleDebugMessages: unable to connect to service"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 4
    invoke-direct {p0, p1}, Lv3/b;->y(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lv3/b;->d:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 7
    iget-object v0, p0, Lv3/b;->c:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "STPServiceClient"

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDebugMode(): RemoteException occurred! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lv3/b;->s(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private p(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p0, Lv3/b;->g:I

    const-string v1, "STPServiceClient"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string p1, "handleMessage: service is not connected"

    .line 2
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    .line 3
    invoke-direct {p0, p1}, Lv3/b;->y(I)V

    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lv3/b;->c:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleProcess(): RemoteException occurred!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lv3/b;->s(I)V

    :goto_0
    return-void
.end method

.method private declared-synchronized q()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lv3/b;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "STPServiceClient"

    const-string v1, "onDeinitialized() received, Service init is in progress"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "STPServiceClient"

    const-string v1, "onDeinitialized() received, proceed to unbind service"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lv3/b;->u(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized r(Landroid/os/Message;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "STPServiceClient"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnInitialized(), NOTIFIES_RECORDING_START = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "notify_recording_start"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "audio_surface"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 4
    :try_start_1
    iget-object v0, p0, Lv3/b;->i:Lv3/a;

    const-string v1, "audio_surface"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {v0, p1}, Lv3/a;->n(Landroid/view/Surface;)V

    const-string p1, "STPServiceClient"

    const-string v0, "Service Initialized audio surface get"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "STPServiceClient"

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio surface get fail - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "STPServiceClient"

    const-string v0, "No audio surface received, Audio recording is disabled "

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private s(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lv3/b;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lv3/b;->l:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-direct {p0, p1}, Lv3/b;->y(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lv3/b;->u(Z)V

    :goto_0
    return-void
.end method

.method private declared-synchronized t(Landroid/os/IBinder;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "STPServiceClient"

    const-string v0, "onServiceConnected(): invalid binder received!"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 2
    iput p1, p0, Lv3/b;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lv3/b;->c:Landroid/os/Messenger;

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lv3/b;->g:I

    const-string p1, "STPServiceClient"

    const-string v0, "bound to service"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized u(Z)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lv3/b;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p1, "STPServiceClient"

    const-string v0, "Service is already in unbounded state, returning "

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 4
    :try_start_1
    iget-object v3, p0, Lv3/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lv3/b;->e:Lv3/b$d;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    iput v1, p0, Lv3/b;->g:I

    .line 6
    iput-boolean v2, p0, Lv3/b;->h:Z

    .line 7
    iput-object v0, p0, Lv3/b;->c:Landroid/os/Messenger;

    .line 8
    iput-boolean v2, p0, Lv3/b;->b:Z

    const-string v0, "STPServiceClient"

    const-string v1, "Single Take service unbound"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "STPServiceClient"

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occurred while unbind service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :try_start_4
    iput v1, p0, Lv3/b;->g:I

    .line 13
    iput-boolean v2, p0, Lv3/b;->h:Z

    .line 14
    iput-object v0, p0, Lv3/b;->c:Landroid/os/Messenger;

    .line 15
    iput-boolean v2, p0, Lv3/b;->b:Z

    const-string v0, "STPServiceClient"

    const-string v1, "Single Take service unbound"

    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_5
    const-string v4, "STPServiceClient"

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException occurred while unbind service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 18
    :try_start_6
    iput v1, p0, Lv3/b;->g:I

    .line 19
    iput-boolean v2, p0, Lv3/b;->h:Z

    .line 20
    iput-object v0, p0, Lv3/b;->c:Landroid/os/Messenger;

    .line 21
    iput-boolean v2, p0, Lv3/b;->b:Z

    const-string v0, "STPServiceClient"

    const-string v1, "Single Take service unbound"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    if-nez p1, :cond_1

    const/4 p1, -0x2

    .line 23
    invoke-direct {p0, p1}, Lv3/b;->y(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 24
    :cond_1
    monitor-exit p0

    return-void

    .line 25
    :goto_2
    :try_start_7
    iput v1, p0, Lv3/b;->g:I

    .line 26
    iput-boolean v2, p0, Lv3/b;->h:Z

    .line 27
    iput-object v0, p0, Lv3/b;->c:Landroid/os/Messenger;

    .line 28
    iput-boolean v2, p0, Lv3/b;->b:Z

    const-string v0, "STPServiceClient"

    const-string v1, "Single Take service unbound"

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 31
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized v(Landroid/os/Message;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lv3/b;->b:Z

    .line 2
    invoke-direct {p0}, Lv3/b;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lv3/b;->C()V

    .line 4
    invoke-direct {p0}, Lv3/b;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "STPServiceClient"

    const-string v0, "initService: unable to connect to service"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 6
    invoke-direct {p0, p1}, Lv3/b;->y(I)V

    .line 7
    iput-boolean v1, p0, Lv3/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 10
    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lv3/b;->d:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const-string/jumbo v2, "video_base"

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "STPServiceClient"

    const-string v1, "Service Client is Video based "

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lv3/b;->i:Lv3/a;

    invoke-virtual {v0}, Lv3/a;->g()V

    goto :goto_0

    :cond_1
    const-string v0, "STPServiceClient"

    const-string v1, "Service Client is Photo based "

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lv3/b;->i:Lv3/a;

    invoke-virtual {v0}, Lv3/a;->h()V

    .line 16
    iget-object v0, p0, Lv3/b;->i:Lv3/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv3/a;->j(Landroid/os/Bundle;)V

    .line 17
    :goto_0
    invoke-direct {p0, p1}, Lv3/b;->p(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private w()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/b;->c:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lv3/b;->c:Landroid/os/Messenger;

    .line 2
    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->pingBinder()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private declared-synchronized x()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lv3/b;->g:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    invoke-direct {p0}, Lv3/b;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "STPServiceClient"

    const-string v1, "Service is already Bounded "

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 4
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "STPServiceClient"

    const-string v1, "State is bound though service is not alive. Changing state to UNBOUND"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 6
    iput v0, p0, Lv3/b;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return v2

    .line 8
    :cond_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private y(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x38

    .line 1
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "service_error_code"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5
    :try_start_0
    iget-object p0, p0, Lv3/b;->d:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "STPServiceClient"

    const-string p1, "handleMessage: service cb handler is null"

    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public A(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lv3/b;->H(Landroid/os/Message;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMessage() , operationType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lv3/b;->k:Landroid/util/SparseArray;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STPServiceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc9

    if-eq v0, v2, :cond_0

    const/16 v2, 0xca

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-direct {p0}, Lv3/b;->G()V

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-direct {p0}, Lv3/b;->l()V

    .line 6
    invoke-direct {p0, p1}, Lv3/b;->p(Landroid/os/Message;)V

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-direct {p0, p1}, Lv3/b;->E(Landroid/os/Message;)V

    .line 8
    invoke-direct {p0, p1}, Lv3/b;->p(Landroid/os/Message;)V

    goto :goto_0

    .line 9
    :pswitch_3
    invoke-direct {p0, p1}, Lv3/b;->m(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "SingleTake camera client Library version: 2.1.00.02"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-direct {p0, p1}, Lv3/b;->v(Landroid/os/Message;)V

    goto :goto_0

    .line 12
    :pswitch_5
    invoke-direct {p0}, Lv3/b;->h()V

    goto :goto_0

    .line 13
    :pswitch_6
    invoke-direct {p0}, Lv3/b;->D()V

    goto :goto_0

    .line 14
    :pswitch_7
    invoke-direct {p0}, Lv3/b;->F()V

    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lv3/b;->o(Landroid/os/Message;)V

    goto :goto_0

    .line 16
    :cond_1
    :pswitch_8
    invoke-direct {p0, p1}, Lv3/b;->p(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized B(Landroid/content/Context;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lv3/b;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public z(Lv3/b$b;)V
    .locals 0

    iput-object p1, p0, Lv3/b;->f:Lv3/b$b;

    return-void
.end method
