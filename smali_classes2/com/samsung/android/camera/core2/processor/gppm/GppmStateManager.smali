.class public Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;
.super Ljava/lang/Object;
.source "GppmStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private static final mGppmProvider:Lj4/b;

.field private static mWaitForGppmLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "GppmStateManager"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    invoke-static {}, Lj4/b;->i()Lj4/b;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->mGppmProvider:Lj4/b;

    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->mWaitForGppmLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic a()Lj4/b;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->mGppmProvider:Lj4/b;

    return-object v0
.end method

.method static bridge synthetic b(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->requestPermission(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic c(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->requestPermission(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic d()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->waitUntilRequestPermissionEnabled()V

    return-void
.end method

.method public static isGPPMEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->mGppmProvider:Lj4/b;

    invoke-virtual {v0, p0}, Lj4/b;->k(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "GPPM is disabled."

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "GPPM is enabled."

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static notifyBackgroundApp(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->mGppmProvider:Lj4/b;

    invoke-virtual {v0, p0}, Lj4/b;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    sget-object v1, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "PPP is background now."

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lj4/b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static notifyForceStart(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->mGppmProvider:Lj4/b;

    invoke-virtual {v0, p0}, Lj4/b;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "notifyForceStart"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lj4/b;->f(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public static notifyForceStop(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->mGppmProvider:Lj4/b;

    invoke-virtual {v0, p0}, Lj4/b;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "notifyForceStop"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lj4/b;->g(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public static notifyForegroundApp(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->mGppmProvider:Lj4/b;

    invoke-virtual {v0, p0}, Lj4/b;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    sget-object v1, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "PPP is foreground now."

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lj4/b;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static requestPermission(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->mGppmProvider:Lj4/b;

    invoke-virtual {v0, p0}, Lj4/b;->k(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lj4/b;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    sget-object p0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "requestPermission : success to get permission"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_1
    sget-object p0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "requestPermission : fail to get permission"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v2
.end method

.method private static requestPermission(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 3

    .line 5
    sget-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->mGppmProvider:Lj4/b;

    invoke-virtual {v0, p0}, Lj4/b;->k(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Lj4/b;->o(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 7
    sget-object p0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "requestPermission : success to get permission"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 8
    :cond_1
    sget-object p0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "requestPermission : fail to get permission"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v2
.end method

.method public static requestPermissionEnabled()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->mWaitForGppmLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "requestPermissionEnabled: countDown of WaitForGppmLatch."

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->mWaitForGppmLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "requestPermissionEnabled: WaitForGppmLatch is not active."

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static updateStateTo(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->mGppmProvider:Lj4/b;

    invoke-virtual {v0, p0}, Lj4/b;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    sget-object v1, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateStateTo from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Lj4/b;->j(Landroid/content/Context;Ljava/lang/String;)Lj4/b$b;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " E"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;->updateState(Landroid/content/Context;)Z

    move-result p0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStateTo to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " X : result = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public static updateStateTo(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;Landroid/os/Bundle;)Z
    .locals 4

    .line 5
    sget-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->mGppmProvider:Lj4/b;

    invoke-virtual {v0, p0}, Lj4/b;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    sget-object v1, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateStateTo from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Lj4/b;->j(Landroid/content/Context;Ljava/lang/String;)Lj4/b$b;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " E"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;->updateState(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p0

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateStateTo to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " X : result = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private static waitUntilRequestPermissionEnabled()V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v1, "updateState - Waiting for permission from GPPM."

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v1, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->mWaitForGppmLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x2710

    .line 3
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "updateState - Timed out 10 sec to wait for permission from GPPM."

    .line 4
    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v1, "updateState - failed"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
