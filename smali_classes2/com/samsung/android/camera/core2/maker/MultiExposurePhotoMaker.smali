.class Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;
.super Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;
.source "MultiExposurePhotoMaker.java"


# static fields
.field private static final j1:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private i1:Lcom/samsung/android/camera/core2/callback/MultiExposurePictureCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "MultiExposurePhotoMaker"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->j1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    const/16 p1, 0x23

    .line 2
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->r0:I

    .line 3
    new-instance p1, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker$1;-><init>(Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->c1:Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;

    .line 4
    new-instance p1, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker$2;-><init>(Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->a1:Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;

    return-void
.end method

.method public static synthetic I3(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->P3(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic J3(Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->R3(Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;)V

    return-void
.end method

.method public static synthetic K3()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->O3()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic L3(Lcom/samsung/android/camera/core2/CamCapability;Landroid/util/Size;)Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->Q3(Lcom/samsung/android/camera/core2/CamCapability;Landroid/util/Size;)Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic M3(Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;)Lcom/samsung/android/camera/core2/callback/MultiExposurePictureCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->i1:Lcom/samsung/android/camera/core2/callback/MultiExposurePictureCallback;

    return-object p0
.end method

.method static bridge synthetic N3()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->j1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object v0
.end method

.method private static synthetic O3()Ljava/lang/Object;
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic P3(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private static synthetic Q3(Lcom/samsung/android/camera/core2/CamCapability;Landroid/util/Size;)Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->d()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;-><init>(Landroid/util/Size;Ljava/lang/String;)V

    return-object v0
.end method

.method private synthetic R3(Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;->h()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->s0:I

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;->l()Landroid/util/Size;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;-><init>(Landroid/util/Size;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->W:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    return-void
.end method


# virtual methods
.method protected B3(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->j1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "releaseMaker"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->B3(Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void
.end method

.method public C()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method protected E3(Lcom/samsung/android/camera/core2/CamCapability;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->s0:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->W:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    .line 3
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object p1

    .line 5
    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/util/StreamConfigUtils;->e(Ljava/util/List;Landroid/util/Size;)Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;

    move-result-object p1

    .line 6
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/camera/core2/maker/rd;

    invoke-direct {p2, p0}, Lcom/samsung/android/camera/core2/maker/rd;-><init>(Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected N2()Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;

    new-instance v1, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    iget v2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->r0:I

    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    .line 2
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->K:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;-><init>(ILandroid/util/Size;Ljava/lang/Integer;)V

    new-instance v2, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    iget v3, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->s0:I

    .line 3
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->W:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->L:Ljava/lang/Integer;

    invoke-direct {v2, v3, v4, p0}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;-><init>(ILandroid/util/Size;Ljava/lang/Integer;)V

    invoke-direct {v0, v5, v1, v2}, Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;-><init>(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)V

    return-object v0
.end method

.method public a()I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->j1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v1, "stopBurstPictureRepeating"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->h1()Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->f:Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->a(Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    .line 3
    invoke-super {p0}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->H3()I

    move-result p0

    return p0
.end method

.method protected f2(Lcom/samsung/android/camera/core2/MakerPrivateCommand;)I
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker$3;->b:[I

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerPrivateCommand;->a()Lcom/samsung/android/camera/core2/MakerPrivateCommand$ID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/CLog$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "privateCommand: %s is not supported in %s"

    .line 4
    invoke-static {v1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1
.end method

.method protected final g1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/MakerPrivateCommand;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPrivateCommand;->e:Lcom/samsung/android/camera/core2/MakerPrivateCommand;

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateCommand;->f:Lcom/samsung/android/camera/core2/MakerPrivateCommand;

    invoke-static {p0, v0}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected o1()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/camera/core2/MakerPrivateKey<",
            "*>;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->o1()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->i0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    sget-object v2, Lcom/samsung/android/camera/core2/maker/ud;->a:Lcom/samsung/android/camera/core2/maker/ud;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    return-object p0
.end method

.method protected p1()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/camera/core2/MakerPrivateKey<",
            "*>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->p1()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->i0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    sget-object v2, Lcom/samsung/android/camera/core2/maker/sd;->a:Lcom/samsung/android/camera/core2/maker/sd;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    return-object p0
.end method

.method protected q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->j1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object p0
.end method

.method protected u3(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/container/DeviceConfiguration;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->A1()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->r0()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->v()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Size;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->p()Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->w()Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->h()Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$StreamType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$StreamType;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/core2/CamCapability;->u1(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p2

    .line 8
    invoke-static {v0, p2}, Lcom/samsung/android/camera/core2/util/ImageUtils;->getMaximumSizeInRatio(Landroid/util/Size;Ljava/util/Collection;)Landroid/util/Size;

    move-result-object p2

    :goto_0
    const/16 v0, 0x20

    .line 9
    iput v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->s0:I

    .line 10
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/camera/core2/maker/td;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/maker/td;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 11
    invoke-virtual {p2, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->W:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    return-void

    .line 13
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->E3(Lcom/samsung/android/camera/core2/CamCapability;Ljava/util/List;)V

    return-void
.end method

.method protected w1(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->w1(Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 2
    sget-object p1, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->j1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "initializeMaker E"

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string p0, "initializeMaker X"

    .line 5
    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method
