.class Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CamDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/device/CamDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureSessionStateCallback"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

.field final synthetic b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->a:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->g(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->f(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->i(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->h(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->j(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    return-void
.end method

.method private synthetic f(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "post SessionCallback(onClosed) - session(%s)"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-interface {p2}, Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;->onDisconnected()V

    return-void
.end method

.method private synthetic g(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "post SessionCallback(onConfigureFailed) - session(%s)"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->a:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    invoke-interface {p0}, Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;->d()V

    return-void
.end method

.method private synthetic h(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "post SessionCallback(onConfigured) - session(%s)"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->a:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    invoke-interface {p0}, Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;->c()V

    return-void
.end method

.method private synthetic i(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "post SessionCallback(onReady) - session(%s)"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->a:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    invoke-interface {p0}, Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;->a()V

    return-void
.end method

.method private synthetic j(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "post SessionCallback(onSurfacePrepared) - session(%s)"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->a:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    invoke-interface {p0, p2}, Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;->b(Landroid/view/Surface;)V

    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "CameraCaptureSession StateCallback onActive - session(%s)"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "CameraCaptureSession StateCallback onClosed - session(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->o0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->C0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->y0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->v0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->A0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->x0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 12
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getSendSessionCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    new-instance v2, Lcom/samsung/android/camera/core2/device/k1;

    invoke-direct {v2, p0, p1, v1}, Lcom/samsung/android/camera/core2/device/k1;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onClosed) fail - post fail"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onClosed) fail - postHandler is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5

    const-string v0, "CreateCaptureSession"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v2, "CameraCaptureSession StateCallback onConfigureFailed - session(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->D0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->C0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getSendSessionCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v1, Lcom/samsung/android/camera/core2/device/g1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/camera/core2/device/g1;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onConfigureFailed) fail - post fail"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onConfigureFailed) fail - postHandler is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 6

    const-string v0, "CreateCaptureSession"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v2

    const-string v3, "CameraCaptureSession StateCallback onConfigured - session(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->D0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "CameraCaptureSession StateCallback onConfigured - CamDevice is closed"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v1, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->C0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 9
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->y0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->a:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getSendSessionCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    new-instance v1, Lcom/samsung/android/camera/core2/device/i1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/camera/core2/device/i1;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 13
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onConfigured) fail - post fail"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onConfigured) fail - postHandler is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CameraCaptureSession StateCallback onReady - session(%s)"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->n0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getSendSessionCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/samsung/android/camera/core2/device/h1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/camera/core2/device/h1;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onReady) fail - post fail"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onReady) fail - postHandler is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "CameraCaptureSession StateCallback onSurfacePrepared - session %s, surface %s"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceHandlerManager;->getSendSessionCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/samsung/android/camera/core2/device/j1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/camera/core2/device/j1;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onSurfacePrepared) fail - post fail"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->b:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onSurfacePrepared) fail - postHandler is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
