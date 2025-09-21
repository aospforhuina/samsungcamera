.class public Lcom/samsung/android/camera/core2/util/JpegUtils;
.super Ljava/lang/Object;
.source "JpegUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;,
        Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;,
        Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;
    }
.end annotation


# static fields
.field private static final a:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "JpegUtils"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/util/JpegUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/util/SemWrapper;->a()I

    move-result v0

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/util/SemWrapper;->f()I

    move-result v0

    const v1, 0xc3b4

    if-lt v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->u:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/util/k1;->a:Lcom/samsung/android/camera/core2/util/k1;

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%1$s"

    .line 6
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "SAMSUNG"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SM-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static synthetic B(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic C(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->A(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    return-void
.end method

.method private static synthetic D(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->G(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    return-void
.end method

.method private static synthetic E(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->B(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    return-void
.end method

.method private static synthetic F(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Landroid/hardware/camera2/CaptureResult;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/JpegUtils;->d0(Landroid/hardware/camera2/CaptureResult;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->z(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    return-void
.end method

.method private static synthetic G(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/util/JpegUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jpeg image unique id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->E(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic H(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->o(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    return-void
.end method

.method private static synthetic I(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;->c()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->p(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;[B)V

    :cond_0
    return-void
.end method

.method private static synthetic J([B)Z
    .locals 0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic K(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;[B)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->h(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;[B)V

    return-void
.end method

.method private static synthetic L(Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;->a:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic M(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)V
    .locals 0

    iget p1, p1, Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;->a:I

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->A(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    return-void
.end method

.method private static synthetic N(Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;->b:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic O(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->l(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    return-void
.end method

.method private static synthetic P(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)V
    .locals 2

    iget-wide v0, p1, Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;->b:J

    invoke-static {p0, v0, v1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->f(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;J)V

    return-void
.end method

.method private static synthetic Q(Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)Z
    .locals 4

    iget p0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;->c:I

    int-to-long v0, p0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic R(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)V
    .locals 0

    iget p1, p1, Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;->c:I

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->F(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    return-void
.end method

.method private static synthetic S(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Landroid/util/Size;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/util/JpegUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jpegSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->u(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    .line 3
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->r(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    return-void
.end method

.method private static synthetic T(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Landroid/util/Size;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/util/JpegUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jpegThumbSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->t(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    .line 3
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->s(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    return-void
.end method

.method private static synthetic U(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->q(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    return-void
.end method

.method private static synthetic V(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Float;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/util/JpegUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lensAperture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/16 v0, 0x64

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->m(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->d(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    return-void
.end method

.method private static synthetic W(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    div-int/lit16 p1, p1, 0x100

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->e(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    return-void
.end method

.method private static synthetic X(Landroid/util/Rational;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/util/JpegUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string v2, "aeCompensationStep = %d / %d, exposureCompensation = %s"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p2, p0

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->j(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;F)V

    :cond_0
    return-void
.end method

.method private static synthetic Y(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Float;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p2, v1

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;->d()F

    move-result p0

    div-float/2addr p2, p0

    float-to-int p0, p2

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->H(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->H(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    :goto_0
    return-void
.end method

.method private static synthetic Z(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V
    .locals 1

    const/16 v0, 0x64

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->H(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils;->U(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V

    return-void
.end method

.method private static synthetic a0(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Float;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/util/JpegUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lensFocalLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/16 v0, 0x64

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->n(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    return-void
.end method

.method public static synthetic b(Landroid/util/Rational;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/JpegUtils;->X(Landroid/util/Rational;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V

    return-void
.end method

.method public static b0(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;Lcom/samsung/android/camera/core2/ExtraBundle;Z)Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p4}, Lcom/samsung/android/camera/core2/util/JpegUtils;->c0(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;Z)Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;

    move-result-object p0

    .line 2
    sget-object p1, Lcom/samsung/android/camera/core2/ExtraBundle;->o:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p3, p1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/util/ImageUtils$CaptureDateTime;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p1, Lcom/samsung/android/camera/core2/util/ImageUtils$CaptureDateTime;->a:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->D(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/samsung/android/camera/core2/util/ImageUtils$CaptureDateTime;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->C(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static synthetic c(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils;->O(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V

    return-void
.end method

.method public static c0(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;Z)Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/util/JpegUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "result is null"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    new-instance v3, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;

    invoke-direct {v3}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;-><init>()V

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget v5, v1, Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;->d:I

    goto :goto_0

    :cond_1
    move v5, v4

    .line 5
    :goto_0
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v6}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/camera/core2/util/b1;

    invoke-direct {v7, v3}, Lcom/samsung/android/camera/core2/util/b1;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    .line 6
    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v6}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 9
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v6, v7, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    add-long/2addr v8, v6

    .line 10
    new-instance v6, Ljava/text/SimpleDateFormat;

    sget-object v7, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string/jumbo v11, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v6, v11, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 11
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 12
    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->D(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)V

    const-wide/16 v6, 0x1

    .line 13
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v6, v7, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    rem-long/2addr v8, v6

    .line 14
    sget-object v6, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v4

    const-string v8, "%03d"

    invoke-static {v6, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->C(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)V

    .line 15
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v6}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    new-instance v8, Lcom/samsung/android/camera/core2/util/a1;

    invoke-direct {v8, v3}, Lcom/samsung/android/camera/core2/util/a1;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    .line 16
    invoke-virtual {v6, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 17
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v6}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    new-instance v8, Lcom/samsung/android/camera/core2/util/w0;

    invoke-direct {v8, v3}, Lcom/samsung/android/camera/core2/util/w0;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    .line 18
    invoke-virtual {v6, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v6, 0x2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    if-eq v7, v5, :cond_4

    .line 19
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 20
    sget-object v10, Lcom/samsung/android/camera/core2/util/JpegUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exposureTime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    if-eqz v5, :cond_3

    const-wide/32 v10, 0x3b9aca00

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    .line 21
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    new-array v14, v6, [I

    .line 22
    invoke-static {v3, v14}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->k(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;[I)V

    .line 23
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v14, v14, v10

    if-ltz v14, :cond_2

    .line 24
    invoke-static {v3}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->b(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)[I

    move-result-object v14

    long-to-double v10, v10

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    sget-object v11, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-static {v5, v10, v11}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->intValue()I

    move-result v5

    aput v5, v14, v4

    .line 25
    invoke-static {v3}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->b(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)[I

    move-result-object v5

    double-to-int v10, v12

    aput v10, v5, v7

    goto :goto_1

    .line 26
    :cond_2
    invoke-static {v3}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->b(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)[I

    move-result-object v12

    aput v7, v12, v4

    .line 27
    invoke-static {v3}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->b(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)[I

    move-result-object v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    sget-object v11, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-static {v10, v5, v11}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->intValue()I

    move-result v5

    aput v5, v12, v7

    .line 28
    :cond_3
    :goto_1
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v10, Lcom/samsung/android/camera/core2/util/v0;

    invoke-direct {v10, v3}, Lcom/samsung/android/camera/core2/util/v0;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    .line 29
    invoke-virtual {v5, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 30
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v10, Lcom/samsung/android/camera/core2/util/s1;

    invoke-direct {v10, v3}, Lcom/samsung/android/camera/core2/util/s1;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    .line 31
    invoke-virtual {v5, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 32
    sget-object v5, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->v:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v10, Lcom/samsung/android/camera/core2/util/x0;

    invoke-direct {v10, v3}, Lcom/samsung/android/camera/core2/util/x0;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    .line 33
    invoke-virtual {v5, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v0, :cond_4

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;->a()Landroid/util/Rational;

    move-result-object v5

    .line 35
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v10}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-static {v10}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/camera/core2/util/f1;

    invoke-direct {v11, v5, v3}, Lcom/samsung/android/camera/core2/util/f1;-><init>(Landroid/util/Rational;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    .line 36
    invoke-virtual {v10, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 37
    :cond_4
    sget-object v5, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->S1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v10, Lcom/samsung/android/camera/core2/util/m1;

    invoke-direct {v10, v0, v3}, Lcom/samsung/android/camera/core2/util/m1;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    new-instance v11, Lcom/samsung/android/camera/core2/util/u0;

    invoke-direct {v11, v3}, Lcom/samsung/android/camera/core2/util/u0;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    .line 38
    invoke-static {v5, v10, v11}, Lcom/samsung/android/camera/core2/device/a;->a(Ljava/util/Optional;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 39
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v10, Lcom/samsung/android/camera/core2/util/t1;

    invoke-direct {v10, v3}, Lcom/samsung/android/camera/core2/util/t1;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    .line 40
    invoke-virtual {v5, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 41
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v10, Lcom/samsung/android/camera/core2/util/z0;

    invoke-direct {v10, v3}, Lcom/samsung/android/camera/core2/util/z0;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    .line 42
    invoke-virtual {v5, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 43
    sget-object v5, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->s0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v10, Lcom/samsung/android/camera/core2/util/e1;

    invoke-direct {v10, v3, v2}, Lcom/samsung/android/camera/core2/util/e1;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Landroid/hardware/camera2/CaptureResult;)V

    .line 44
    invoke-virtual {v5, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v0, :cond_5

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;->b()[F

    move-result-object v5

    .line 46
    array-length v10, v5

    if-lez v10, :cond_5

    .line 47
    array-length v10, v5

    sub-int/2addr v10, v7

    aget v5, v5, v10

    float-to-double v10, v5

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v10, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v8

    double-to-int v5, v10

    invoke-static {v3, v5}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->y(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V

    .line 48
    :cond_5
    sget-object v5, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->G1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v8, Lcom/samsung/android/camera/core2/util/c1;

    invoke-direct {v8, v3}, Lcom/samsung/android/camera/core2/util/c1;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    .line 49
    invoke-virtual {v5, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string v5, "samsung"

    .line 50
    invoke-static {v3, v5}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->x(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)V

    .line 51
    invoke-static {v2}, Lcom/samsung/android/camera/core2/util/JpegUtils;->A(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->i(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)V

    .line 52
    sget-object v5, Lcom/samsung/android/camera/core2/util/JpegUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Device Name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->a(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 53
    sget-object v8, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->K1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v8}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/camera/core2/util/y0;

    invoke-direct {v9, v3}, Lcom/samsung/android/camera/core2/util/y0;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    .line 54
    invoke-virtual {v8, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 55
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v8}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Location;

    if-eqz v8, :cond_6

    .line 56
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "jpegGpsLocation = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-static {v3, v9, v10}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->v(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;D)V

    .line 58
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-static {v3, v9, v10}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->w(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;D)V

    .line 59
    invoke-virtual {v8}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-static {v3, v8, v9}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->c(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;D)V

    goto :goto_2

    :cond_6
    const-string v8, "jpegGpsLocation is null"

    .line 60
    invoke-static {v5, v8}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 61
    :goto_2
    sget-object v8, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->D:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v8}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/camera/core2/util/g1;

    invoke-direct {v9, v3, v0}, Lcom/samsung/android/camera/core2/util/g1;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;)V

    .line 62
    invoke-virtual {v8, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 63
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->E1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_7

    .line 64
    array-length v8, v0

    goto :goto_3

    :cond_7
    move v8, v4

    .line 65
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->i()[B

    move-result-object v9

    if-eqz v9, :cond_8

    .line 66
    array-length v10, v9

    goto :goto_4

    :cond_8
    move v10, v4

    :goto_4
    add-int v11, v8, v10

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    .line 67
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v6

    const-string v6, "jpegImgDebugInfoSize(%d) + solutionDebugInfoSize(%d) = debugInfoApp4Size(%d)"

    .line 68
    invoke-static {v5, v6, v12}, Lcom/samsung/android/camera/core2/util/CLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v11, :cond_b

    .line 69
    new-array v6, v11, [B

    if-eqz v0, :cond_9

    .line 70
    array-length v7, v0

    invoke-static {v0, v4, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    array-length v0, v0

    goto :goto_5

    :cond_9
    move v0, v4

    :goto_5
    if-eqz v9, :cond_a

    .line 72
    array-length v7, v9

    invoke-static {v9, v4, v6, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    :cond_a
    invoke-static {v3, v6}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->g(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;[B)V

    .line 74
    :cond_b
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->F1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v4, Lcom/samsung/android/camera/core2/util/l1;->a:Lcom/samsung/android/camera/core2/util/l1;

    .line 75
    invoke-virtual {v0, v4}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/camera/core2/util/d1;

    invoke-direct {v4, v3}, Lcom/samsung/android/camera/core2/util/d1;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    .line 76
    invoke-virtual {v0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 77
    invoke-static/range {p2 .. p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/samsung/android/camera/core2/util/i1;->a:Lcom/samsung/android/camera/core2/util/i1;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/camera/core2/util/r1;

    invoke-direct {v4, v3}, Lcom/samsung/android/camera/core2/util/r1;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    .line 79
    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 80
    sget-object v1, Lcom/samsung/android/camera/core2/util/h1;->a:Lcom/samsung/android/camera/core2/util/h1;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/camera/core2/util/p1;

    invoke-direct {v4, v3}, Lcom/samsung/android/camera/core2/util/p1;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    .line 81
    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 82
    sget-object v1, Lcom/samsung/android/camera/core2/util/j1;->a:Lcom/samsung/android/camera/core2/util/j1;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/util/q1;

    invoke-direct {v1, v3}, Lcom/samsung/android/camera/core2/util/q1;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/util/o1;

    invoke-direct {v1, v3}, Lcom/samsung/android/camera/core2/util/o1;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz p3, :cond_c

    .line 86
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/util/n1;

    invoke-direct {v1, v3}, Lcom/samsung/android/camera/core2/util/n1;-><init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_6

    :cond_c
    const-string v0, "addThumbnail false"

    .line 88
    invoke-static {v5, v0}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_6
    return-object v3
.end method

.method public static synthetic d(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils;->P(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)V

    return-void
.end method

.method private static d0(Landroid/hardware/camera2/CaptureResult;I)I
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->q0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x6

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz p0, :cond_0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return v3

    .line 8
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public static synthetic e(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Landroid/util/Size;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils;->T(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Landroid/util/Size;)V

    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils;->G(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils;->W(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic h(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Landroid/util/Size;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils;->S(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Landroid/util/Size;)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/JpegUtils;->B(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils;->H(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic k([B)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/JpegUtils;->J([B)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/JpegUtils;->I(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic m(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils;->E(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic n(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Landroid/hardware/camera2/CaptureResult;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/JpegUtils;->F(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Landroid/hardware/camera2/CaptureResult;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic o(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Float;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils;->V(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic p(Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/JpegUtils;->N(Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils;->D(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic r(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Float;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils;->a0(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic s(Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/JpegUtils;->L(Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic t(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils;->R(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)V

    return-void
.end method

.method public static synthetic u(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils;->M(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)V

    return-void
.end method

.method public static synthetic v(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Float;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/JpegUtils;->Y(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic w(Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/JpegUtils;->Q(Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;[B)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils;->K(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;[B)V

    return-void
.end method

.method public static synthetic y(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils;->C(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic z(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/JpegUtils;->Z(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    return-void
.end method
