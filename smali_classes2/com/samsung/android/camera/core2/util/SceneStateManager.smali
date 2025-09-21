.class public Lcom/samsung/android/camera/core2/util/SceneStateManager;
.super Ljava/lang/Object;
.source "SceneStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/util/SceneStateManager$Task;,
        Lcom/samsung/android/camera/core2/util/SceneStateManager$TaskCallback;,
        Lcom/samsung/android/camera/core2/util/SceneStateManager$StateChangedCallback;,
        Lcom/samsung/android/camera/core2/util/SceneStateManager$State;
    }
.end annotation


# static fields
.field public static n:I = 0x1

.field public static o:I = 0x2


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/util/TimeChecker;

.field private final b:Lcom/samsung/android/camera/core2/util/TimeChecker;

.field private final c:Ljava/lang/Object;

.field private final d:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

.field private final e:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private final f:Ljava/lang/Object;

.field private g:Z

.field private h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

.field private final i:Lcom/samsung/android/camera/core2/util/SceneStateManager$StateChangedCallback;

.field private j:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final k:Lcom/samsung/android/camera/core2/util/SceneStateManager$TaskCallback;

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/util/CLog$Tag;JJLcom/samsung/android/camera/core2/util/SceneStateManager$StateChangedCallback;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->c:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->d:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->f:Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->f:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    const/high16 v0, -0x80000000

    .line 6
    iput v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->m:I

    .line 7
    new-instance v0, Lcom/samsung/android/camera/core2/util/TimeChecker;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p2, p3, v1}, Lcom/samsung/android/camera/core2/util/TimeChecker;-><init>(JLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->b:Lcom/samsung/android/camera/core2/util/TimeChecker;

    .line 8
    new-instance p2, Lcom/samsung/android/camera/core2/util/TimeChecker;

    invoke-direct {p2, p4, p5, v1}, Lcom/samsung/android/camera/core2/util/TimeChecker;-><init>(JLjava/util/concurrent/TimeUnit;)V

    iput-object p2, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->a:Lcom/samsung/android/camera/core2/util/TimeChecker;

    .line 9
    new-instance p2, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/SceneStateManager"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->e:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 10
    iput-object p6, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->i:Lcom/samsung/android/camera/core2/util/SceneStateManager$StateChangedCallback;

    .line 11
    iput p7, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->l:I

    .line 12
    new-instance p1, Lcom/samsung/android/camera/core2/util/SceneStateManager$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/util/SceneStateManager$1;-><init>(Lcom/samsung/android/camera/core2/util/SceneStateManager;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->k:Lcom/samsung/android/camera/core2/util/SceneStateManager$TaskCallback;

    return-void
.end method

.method static bridge synthetic a(Lcom/samsung/android/camera/core2/util/SceneStateManager;)Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->e:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/samsung/android/camera/core2/util/SceneStateManager;)Lcom/samsung/android/camera/core2/util/TimeChecker;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->b:Lcom/samsung/android/camera/core2/util/TimeChecker;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/samsung/android/camera/core2/util/SceneStateManager;)Lcom/samsung/android/camera/core2/util/TimeChecker;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->a:Lcom/samsung/android/camera/core2/util/TimeChecker;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/samsung/android/camera/core2/util/SceneStateManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->g:Z

    return-void
.end method

.method private f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->j:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->e:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "ANALYZING - done"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->g:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    invoke-direct {p0, v1}, Lcom/samsung/android/camera/core2/util/SceneStateManager;->l(Lcom/samsung/android/camera/core2/util/SceneStateManager$State;)V

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->g:Z

    .line 6
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

.method private g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->a:Lcom/samsung/android/camera/core2/util/TimeChecker;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/util/TimeChecker;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->a:Lcom/samsung/android/camera/core2/util/TimeChecker;

    .line 3
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/TimeChecker;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->j:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->e:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "MONITORING - max time"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 7
    sget-object v1, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->k:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    invoke-direct {p0, v1}, Lcom/samsung/android/camera/core2/util/SceneStateManager;->l(Lcom/samsung/android/camera/core2/util/SceneStateManager$State;)V

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget v0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->n:I

    iget v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->l:I

    and-int v2, v1, v0

    if-ne v0, v2, :cond_4

    .line 11
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    iget v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->m:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->n(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->e:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "MONITORING - change brightness Value"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->k:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/util/SceneStateManager;->l(Lcom/samsung/android/camera/core2/util/SceneStateManager$State;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->e:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "MONITORING - af scan"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->k:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/util/SceneStateManager;->l(Lcom/samsung/android/camera/core2/util/SceneStateManager$State;)V

    :cond_3
    :goto_0
    return-void

    .line 18
    :cond_4
    sget v0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->o:I

    and-int/2addr v1, v0

    if-ne v0, v1, :cond_5

    .line 19
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->e:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "MONITORING - ae searching"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->k:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/util/SceneStateManager;->l(Lcom/samsung/android/camera/core2/util/SceneStateManager$State;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private h(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->b:Lcom/samsung/android/camera/core2/util/TimeChecker;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/util/TimeChecker;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->b:Lcom/samsung/android/camera/core2/util/TimeChecker;

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/TimeChecker;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->p()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->e:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "WAITING - converged and focused"

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->m:I

    .line 8
    sget-object p1, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->l:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/util/SceneStateManager;->l(Lcom/samsung/android/camera/core2/util/SceneStateManager$State;)V

    :cond_2
    return-void
.end method

.method private l(Lcom/samsung/android/camera/core2/util/SceneStateManager$State;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    if-ne v1, p1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->e:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stateChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->i:Lcom/samsung/android/camera/core2/util/SceneStateManager$StateChangedCallback;

    if-eqz p0, :cond_1

    .line 7
    invoke-interface {p0, p1}, Lcom/samsung/android/camera/core2/util/SceneStateManager$StateChangedCallback;->a(Lcom/samsung/android/camera/core2/util/SceneStateManager$State;)V

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public e(Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->s(Ljava/lang/Integer;)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->t(Ljava/lang/Integer;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->r(Ljava/lang/Integer;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->v:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    const/4 v2, 0x0

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 7
    invoke-virtual {v1, p1}, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->u(Ljava/lang/Integer;)V

    .line 8
    sget-object p1, Lcom/samsung/android/camera/core2/util/SceneStateManager$2;->a:[I

    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/util/SceneStateManager;->f()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h(Z)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/util/SceneStateManager;->g()V

    .line 12
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->d:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->e:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;->b(Lcom/samsung/android/camera/core2/util/CLog$Tag;J)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->f:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    iput-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->l:I

    const/high16 v0, -0x80000000

    .line 6
    iput v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->m:I

    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/samsung/android/camera/core2/util/SceneStateManager$State;->k:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

    iput-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->h:Lcom/samsung/android/camera/core2/util/SceneStateManager$State;

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

.method public k(J)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->b:Lcom/samsung/android/camera/core2/util/TimeChecker;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/camera/core2/util/TimeChecker;->d(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public m(Lcom/samsung/android/camera/core2/util/SceneStateManager$Task;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->j:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->k:Lcom/samsung/android/camera/core2/util/SceneStateManager$TaskCallback;

    invoke-virtual {p1, v1}, Lcom/samsung/android/camera/core2/util/SceneStateManager$Task;->b(Lcom/samsung/android/camera/core2/util/SceneStateManager$TaskCallback;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->d:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    invoke-virtual {v1, p1}, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager;->j:Ljava/util/concurrent/Future;

    .line 5
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
