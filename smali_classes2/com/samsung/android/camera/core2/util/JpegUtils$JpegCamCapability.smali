.class public Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;
.super Ljava/lang/Object;
.source "JpegUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/util/JpegUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JpegCamCapability"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;
    }
.end annotation


# instance fields
.field private final a:Landroid/util/Rational;

.field private final b:[F

.field private final c:[B

.field private final d:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->a(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;)Landroid/util/Rational;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;->a:Landroid/util/Rational;

    .line 3
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->b(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;->b:[F

    .line 4
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->c(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;->c:[B

    .line 5
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->d(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;->d:F

    return-void
.end method


# virtual methods
.method public a()Landroid/util/Rational;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;->a:Landroid/util/Rational;

    return-object p0
.end method

.method public b()[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;->b:[F

    return-object p0
.end method

.method public c()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;->c:[B

    return-object p0
.end method

.method public d()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;->d:F

    return p0
.end method
