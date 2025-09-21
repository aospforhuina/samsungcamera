.class Lcom/samsung/android/camera/core2/maker/HighResExpertRawPhotoMaker;
.super Lcom/samsung/android/camera/core2/maker/ExpertRawPhotoMaker;
.source "HighResExpertRawPhotoMaker.java"


# static fields
.field private static final J1:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "HrExpertRawPhotoMaker"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/HighResExpertRawPhotoMaker;->J1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/ExpertRawPhotoMaker;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    const/4 p1, 0x4

    new-array p1, p1, [B

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ExpertRawPhotoMaker;->C1:[B

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/maker/ExpertRawPhotoMaker;->D1:Z

    return-void
.end method

.method public static synthetic K4(Landroid/util/Size;Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/HighResExpertRawPhotoMaker;->L4(Landroid/util/Size;Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;)Z

    move-result p0

    return p0
.end method

.method private static synthetic L4(Landroid/util/Size;Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;->l()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;->l()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr v0, p1

    .line 3
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr p1, p0

    if-gt v0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public C()I
    .locals 0

    const/16 p0, 0x28

    return p0
.end method

.method protected i1(Landroid/hardware/camera2/CaptureResult;)I
    .locals 0

    const/high16 p0, 0xab0000

    return p0
.end method

.method protected q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/HighResExpertRawPhotoMaker;->J1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object p0
.end method

.method protected u3(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/container/DeviceConfiguration;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->n1()Ljava/util/List;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object v0

    .line 3
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    .line 4
    invoke-interface {p2}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p2

    .line 5
    invoke-interface {p2}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/camera/core2/maker/kb;

    invoke-direct {v1, v0}, Lcom/samsung/android/camera/core2/maker/kb;-><init>(Landroid/util/Size;)V

    .line 6
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 7
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/ExpertRawPhotoMaker;->E3(Lcom/samsung/android/camera/core2/CamCapability;Ljava/util/List;)V

    return-void
.end method
