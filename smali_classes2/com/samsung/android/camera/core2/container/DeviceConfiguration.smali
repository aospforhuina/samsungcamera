.class public Lcom/samsung/android/camera/core2/container/DeviceConfiguration;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;,
        Lcom/samsung/android/camera/core2/container/DeviceConfiguration$PictureEncodeFormat;,
        Lcom/samsung/android/camera/core2/container/DeviceConfiguration$DeviceUsageType;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/camera/core2/container/SurfaceData;

.field private b:Landroid/util/Size;

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Landroid/view/Surface;

.field private e:Landroid/view/Surface;

.field private f:Landroid/view/Surface;

.field private g:I

.field private h:I

.field private i:Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;

.field private j:Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;

.field private k:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

.field private l:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

.field private m:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

.field private n:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->g:I

    const/16 v0, 0x100

    .line 3
    iput v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->h:I

    return-void
.end method

.method private D(Lcom/samsung/android/camera/core2/container/DeviceConfiguration;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->i:Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;

    iget-object v1, p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->i:Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->j:Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;

    iget-object v1, p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->j:Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->k:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    iget-object v1, p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->k:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->l:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    iget-object v1, p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->l:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->m:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    iget-object p1, p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->m:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    .line 5
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private E(Lcom/samsung/android/camera/core2/container/DeviceConfiguration;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->a:Lcom/samsung/android/camera/core2/container/SurfaceData;

    iget-object v1, p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->a:Lcom/samsung/android/camera/core2/container/SurfaceData;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->b:Landroid/util/Size;

    iget-object v1, p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->b:Landroid/util/Size;

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->c:Ljava/lang/Class;

    iget-object v1, p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->c:Ljava/lang/Class;

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->d:Landroid/view/Surface;

    iget-object v1, p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->d:Landroid/view/Surface;

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->e:Landroid/view/Surface;

    iget-object v1, p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->e:Landroid/view/Surface;

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->f:Landroid/view/Surface;

    iget-object p1, p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->f:Landroid/view/Surface;

    .line 6
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic F(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/SurfaceData;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "mainPreviewSurfaceData = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static synthetic G(Ljava/lang/StringBuilder;Landroid/util/Size;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", mainPreviewSurfaceSize = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static synthetic H(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", thirdPicCbImgSizeConfig = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static synthetic I(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;)V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", parameters = %s"

    .line 3
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static synthetic J(Ljava/lang/StringBuilder;Ljava/lang/Class;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", mainPreviewSurfaceSource = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static synthetic K(Ljava/lang/StringBuilder;Landroid/view/Surface;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", firstRecorderSurface = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static synthetic L(Ljava/lang/StringBuilder;Landroid/view/Surface;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", secondRecorderSurface = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static synthetic M(Ljava/lang/StringBuilder;Landroid/view/Surface;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", previewExtraSurface = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static synthetic N(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", mainPreviewCbImgSizeConfig = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static synthetic O(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", subPreviewCbImgSizeConfig = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static synthetic P(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", firstPicCbImgSizeConfig = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static synthetic Q(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", secondPicCbImgSizeConfig = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Landroid/view/Surface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->K(Ljava/lang/StringBuilder;Landroid/view/Surface;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->I(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/StringBuilder;Landroid/view/Surface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->L(Ljava/lang/StringBuilder;Landroid/view/Surface;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/StringBuilder;Landroid/view/Surface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->M(Ljava/lang/StringBuilder;Landroid/view/Surface;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->H(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/StringBuilder;Ljava/lang/Class;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->J(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->O(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->P(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->Q(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;)V

    return-void
.end method

.method public static synthetic j(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/SurfaceData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->F(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/SurfaceData;)V

    return-void
.end method

.method public static synthetic k(Ljava/lang/StringBuilder;Landroid/util/Size;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->G(Ljava/lang/StringBuilder;Landroid/util/Size;)V

    return-void
.end method

.method public static synthetic l(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->N(Ljava/lang/StringBuilder;Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;)V

    return-void
.end method


# virtual methods
.method public A()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->e:Landroid/view/Surface;

    return-object p0
.end method

.method public B()Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->j:Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;

    return-object p0
.end method

.method public C()Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->m:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    return-object p0
.end method

.method public R(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->g:I

    return-void
.end method

.method public S(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->o:I

    return-void
.end method

.method public T(Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->k:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    return-void
.end method

.method public U(Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->d:Landroid/view/Surface;

    return-void
.end method

.method public V(Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->i:Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;

    return-void
.end method

.method public W(Lcom/samsung/android/camera/core2/container/SurfaceData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->a:Lcom/samsung/android/camera/core2/container/SurfaceData;

    return-void
.end method

.method public X(Landroid/util/Size;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->b:Landroid/util/Size;

    return-void
.end method

.method public Y(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->n:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    return-void
.end method

.method public Z(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->h:I

    return-void
.end method

.method public a0(Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->f:Landroid/view/Surface;

    return-void
.end method

.method public b0(Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->l:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    return-void
.end method

.method public c0(Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->j:Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;

    return-void
.end method

.method public d0(Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->m:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->E(Lcom/samsung/android/camera/core2/container/DeviceConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->D(Lcom/samsung/android/camera/core2/container/DeviceConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->g:I

    iget v3, p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->g:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->h:I

    iget v3, p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->h:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->o:I

    iget v3, p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->o:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->n:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    iget-object p1, p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->n:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    .line 5
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->a:Lcom/samsung/android/camera/core2/container/SurfaceData;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->b:Landroid/util/Size;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->c:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->d:Landroid/view/Surface;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->e:Landroid/view/Surface;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->f:Landroid/view/Surface;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->g:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->i:Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->j:Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->k:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->l:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->m:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->n:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->o:I

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xe

    aput-object p0, v0, v1

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public m()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->g:I

    return p0
.end method

.method public n()Z
    .locals 1

    iget p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->o:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->o:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public p()Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->k:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    return-object p0
.end method

.method public q()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->d:Landroid/view/Surface;

    return-object p0
.end method

.method public r()Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->i:Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;

    return-object p0
.end method

.method public s()Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->a:Lcom/samsung/android/camera/core2/container/SurfaceData;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/container/SurfaceData;->a()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public t()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->b:Landroid/util/Size;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->a:Lcom/samsung/android/camera/core2/container/SurfaceData;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/core2/container/b;

    invoke-direct {v2, v0}, Lcom/samsung/android/camera/core2/container/b;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->b:Landroid/util/Size;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/core2/container/a;

    invoke-direct {v2, v0}, Lcom/samsung/android/camera/core2/container/a;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->c:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/core2/container/c;

    invoke-direct {v2, v0}, Lcom/samsung/android/camera/core2/container/c;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->d:Landroid/view/Surface;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/core2/container/d;

    invoke-direct {v2, v0}, Lcom/samsung/android/camera/core2/container/d;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->e:Landroid/view/Surface;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/core2/container/e;

    invoke-direct {v2, v0}, Lcom/samsung/android/camera/core2/container/e;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->f:Landroid/view/Surface;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/core2/container/f;

    invoke-direct {v2, v0}, Lcom/samsung/android/camera/core2/container/f;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 8
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, ", pictureEncodeFormat = %d"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->i:Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/camera/core2/container/l;

    invoke-direct {v3, v0}, Lcom/samsung/android/camera/core2/container/l;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 10
    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->j:Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/camera/core2/container/k;

    invoke-direct {v3, v0}, Lcom/samsung/android/camera/core2/container/k;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 11
    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->k:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/camera/core2/container/i;

    invoke-direct {v3, v0}, Lcom/samsung/android/camera/core2/container/i;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 12
    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->l:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/camera/core2/container/j;

    invoke-direct {v3, v0}, Lcom/samsung/android/camera/core2/container/j;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 13
    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->m:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/camera/core2/container/h;

    invoke-direct {v3, v0}, Lcom/samsung/android/camera/core2/container/h;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 14
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, ", extraShotInfo = 0x%X"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->n:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/camera/core2/container/g;

    invoke-direct {v1, v0}, Lcom/samsung/android/camera/core2/container/g;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->c:Ljava/lang/Class;

    return-object p0
.end method

.method public v()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->a:Lcom/samsung/android/camera/core2/container/SurfaceData;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/container/SurfaceData;->b()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public w()Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->n:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    return-object p0
.end method

.method public x()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->h:I

    return p0
.end method

.method public y()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->f:Landroid/view/Surface;

    return-object p0
.end method

.method public z()Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->l:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    return-object p0
.end method
