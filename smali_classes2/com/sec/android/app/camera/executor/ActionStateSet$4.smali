.class Lcom/sec/android/app/camera/executor/ActionStateSet$4;
.super Lg4/a;
.source "ActionStateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/executor/ActionStateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg4/a;-><init>()V

    return-void
.end method


# virtual methods
.method public executeAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lg4/b;)V
    .locals 1

    const-string p0, "ActionStateSet"

    const-string v0, "action request"

    .line 1
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/sec/android/app/camera/executor/ActionStateSet;->f()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    .line 3
    :try_start_0
    invoke-static {p4}, Lcom/sec/android/app/camera/executor/ActionStateSet;->h(Lg4/b;)V

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/ActionStateSet;->g(Landroid/content/Context;)V

    .line 6
    invoke-static {p2, p3}, Lcom/sec/android/app/camera/executor/ActionStateSet;->init(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/executor/ActionStateSet;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 8
    invoke-static {}, Lcom/sec/android/app/camera/executor/ActionStateSet;->d()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "camera.action.EXECUTE_BIXBY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/executor/ActionStateSet;->d()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->launchCameraActivity(Landroid/content/Context;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
