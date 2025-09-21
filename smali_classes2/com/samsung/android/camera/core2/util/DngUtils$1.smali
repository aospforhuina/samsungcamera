.class Lcom/samsung/android/camera/core2/util/DngUtils$1;
.super Ljava/util/HashMap;
.source "DngUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/util/DngUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/samsung/android/camera/core2/util/DngUtils$SetDngMetadataExecutor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/util/a0;->a:Lcom/samsung/android/camera/core2/util/a0;

    const-string v1, "deviceName"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/util/q;->a:Lcom/samsung/android/camera/core2/util/q;

    const-string v1, "orientation"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/util/e0;->a:Lcom/samsung/android/camera/core2/util/e0;

    const-string v1, "captureTime"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/samsung/android/camera/core2/util/t;->a:Lcom/samsung/android/camera/core2/util/t;

    const-string v1, "blackLevel"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/samsung/android/camera/core2/util/h0;->a:Lcom/samsung/android/camera/core2/util/h0;

    const-string/jumbo v1, "whiteLevel"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/samsung/android/camera/core2/util/u;->a:Lcom/samsung/android/camera/core2/util/u;

    const-string v1, "colorMatrix"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/samsung/android/camera/core2/util/b0;->a:Lcom/samsung/android/camera/core2/util/b0;

    const-string v1, "colorCalibration"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/samsung/android/camera/core2/util/x;->a:Lcom/samsung/android/camera/core2/util/x;

    const-string v1, "neutralColorPoint"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/samsung/android/camera/core2/util/s;->a:Lcom/samsung/android/camera/core2/util/s;

    const-string v1, "illuminati"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/samsung/android/camera/core2/util/z;->a:Lcom/samsung/android/camera/core2/util/z;

    const-string v1, "forwardTransform"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/samsung/android/camera/core2/util/g0;->a:Lcom/samsung/android/camera/core2/util/g0;

    const-string v1, "noiseProfile"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/samsung/android/camera/core2/util/c0;->a:Lcom/samsung/android/camera/core2/util/c0;

    const-string v1, "exposureTime"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/samsung/android/camera/core2/util/r;->a:Lcom/samsung/android/camera/core2/util/r;

    const-string v1, "colorFilterArrangement"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/samsung/android/camera/core2/util/w;->a:Lcom/samsung/android/camera/core2/util/w;

    const-string v1, "fNumber"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/samsung/android/camera/core2/util/d0;->a:Lcom/samsung/android/camera/core2/util/d0;

    const-string v1, "iso"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/samsung/android/camera/core2/util/i0;->a:Lcom/samsung/android/camera/core2/util/i0;

    const-string v1, "exposureCompensation"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/samsung/android/camera/core2/util/y;->a:Lcom/samsung/android/camera/core2/util/y;

    const-string v1, "focalLength"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/samsung/android/camera/core2/util/f0;->a:Lcom/samsung/android/camera/core2/util/f0;

    const-string v1, "focalLength35mmFilm"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/samsung/android/camera/core2/util/v;->a:Lcom/samsung/android/camera/core2/util/v;

    const-string v1, "latitude"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic A(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->k(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static synthetic B(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->f(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static synthetic C(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->l(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static synthetic D(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->t(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static synthetic E(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p1, p0, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->j(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static synthetic F(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->m(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static synthetic G(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->n(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static synthetic H(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->q(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static synthetic I(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->d(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static synthetic J(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->c(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static synthetic K(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->u(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static synthetic L(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->g(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static synthetic M(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->e(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static synthetic N(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->r(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static synthetic O(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->p(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static synthetic P(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->o(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->y(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->x(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->M(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->A(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->D(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->I(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->G(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->z(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->K(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->E(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->B(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->O(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->J(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->L(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->H(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic t(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->C(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->N(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->F(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic w(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->P(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static synthetic x(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->h(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static synthetic y(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->i(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static synthetic z(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->s(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method
