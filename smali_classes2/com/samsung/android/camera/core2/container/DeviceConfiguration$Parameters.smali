.class public Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/container/DeviceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$AdaptivePixelMode;,
        Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ExternalDeviceConnected;,
        Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;,
        Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;,
        Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$StreamType;,
        Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;,
        Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;,
        Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ColorSpaceMode;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Byte;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Boolean;

.field private h:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

.field private i:Ljava/lang/Integer;

.field private j:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;

.field private k:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$StreamType;

.field private l:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

.field private m:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

.field private n:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ExternalDeviceConnected;

.field private o:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ColorSpaceMode;

.field private p:Ljava/lang/Long;

.field private q:Ljava/lang/Float;

.field private r:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$AdaptivePixelMode;

.field private s:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->a:Ljava/util/Map;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->l:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    .line 4
    iput-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->m:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    .line 5
    iput-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->q:Ljava/lang/Float;

    .line 6
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->C:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->b:Ljava/lang/Integer;

    .line 8
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->a0:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object v3, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->c:Ljava/lang/Integer;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->t0:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 11
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->e:Ljava/lang/Byte;

    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->s0:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->f:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->y0:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object v2, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->g:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->Y:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->c:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    iput-object v2, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->h:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->m0:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;->b:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;

    iput-object v2, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->j:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->O0:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$StreamType;->b:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$StreamType;

    iput-object v2, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->k:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$StreamType;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$StreamType;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->A:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ExternalDeviceConnected;->b:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ExternalDeviceConnected;

    iput-object v2, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->n:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ExternalDeviceConnected;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ExternalDeviceConnected;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->q:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ColorSpaceMode;->b:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ColorSpaceMode;

    iput-object v2, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->o:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ColorSpaceMode;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ColorSpaceMode;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->l0:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->p:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$AdaptivePixelMode;->b:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$AdaptivePixelMode;

    iput-object v2, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->r:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$AdaptivePixelMode;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$AdaptivePixelMode;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->B:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object v3, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->s:Ljava/lang/Integer;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Byte;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->a:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->t0:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->e:Ljava/lang/Byte;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public B(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->a:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->y0:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->g:Ljava/lang/Boolean;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a()Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ColorSpaceMode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->o:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ColorSpaceMode;

    return-object p0
.end method

.method public b()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public c()Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->h:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    return-object p0
.end method

.method public d()Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->l:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    return-object p0
.end method

.method public e()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->a:Ljava/util/Map;

    return-object p0
.end method

.method public f()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->p:Ljava/lang/Long;

    return-object p0
.end method

.method public g()Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->j:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;

    return-object p0
.end method

.method public h()Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$StreamType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->k:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$StreamType;

    return-object p0
.end method

.method public i()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public j()Ljava/lang/Byte;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->e:Ljava/lang/Byte;

    return-object p0
.end method

.method public k()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method public l(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$AdaptivePixelMode;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->a:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->r:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$AdaptivePixelMode;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$AdaptivePixelMode;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public m(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->a:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->m:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->m:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public n(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ColorSpaceMode;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->a:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->q:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->o:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ColorSpaceMode;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ColorSpaceMode;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public o(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ExternalDeviceConnected;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->a:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->A:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->n:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ExternalDeviceConnected;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ExternalDeviceConnected;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public p(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->a:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->C:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->b:Ljava/lang/Integer;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public q(Ljava/lang/Float;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->a:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->F:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->q:Ljava/lang/Float;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public r(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->a:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->a0:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->c:Ljava/lang/Integer;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public s(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->a:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->b0:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->d:Ljava/lang/Integer;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public t(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->a:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->Y:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->h:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public u(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->a:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->Z:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->i:Ljava/lang/Integer;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public v(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->a:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->N0:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->l:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public w(Ljava/lang/Long;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->a:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->l0:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->p:Ljava/lang/Long;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public x(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->a:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->m0:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->j:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public y(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$StreamType;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->a:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->O0:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->k:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$StreamType;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$StreamType;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public z(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->a:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->s0:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->f:Ljava/lang/Boolean;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
