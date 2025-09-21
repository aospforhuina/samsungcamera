.class Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;
.super Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;
.source "PanoramaPhotoMaker.java"


# static fields
.field private static final B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private static final C1:Lcom/samsung/android/camera/core2/container/FrameRate;


# instance fields
.field private final A1:Lcom/samsung/android/camera/core2/node/Node$OutputPort$PortDataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/Node$OutputPort$PortDataCallback<",
            "Lcom/samsung/android/camera/core2/util/ImageFile;",
            ">;"
        }
    .end annotation
.end field

.field private i1:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;

.field private j1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

.field private k1:Lcom/samsung/android/camera/core2/node/NodeChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private l1:Lcom/samsung/android/camera/core2/node/NodeChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private m1:Lcom/samsung/android/camera/core2/node/ConverterNode;

.field private n1:Lcom/samsung/android/camera/core2/node/ExifManageNode;

.field private o1:Lcom/samsung/android/camera/core2/node/SefNode;

.field private p1:Lcom/samsung/android/camera/core2/node/XMPInjectorNode;

.field private q1:Lcom/samsung/android/camera/core2/container/WatermarkInfo;

.field private r1:Landroid/net/Uri;

.field private s1:Lcom/samsung/android/camera/core2/node/NodeChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Landroid/media/Image;",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final t1:Lcom/samsung/android/camera/core2/node/WatermarkNode$NodeCallback;

.field private final u1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

.field private final v1:Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;

.field private final w1:Lcom/samsung/android/camera/core2/node/ExifManageNode$NodeCallback;

.field private final x1:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$NodeCallback;

.field private final y1:Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;

.field private final z1:Lcom/samsung/android/camera/core2/node/XMPInjectorNode$NodeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "PanoramaPhotoMaker"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/container/FrameRate;->d:Lcom/samsung/android/camera/core2/container/FrameRate;

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->C1:Lcom/samsung/android/camera/core2/container/FrameRate;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/samsung/android/camera/core2/maker/je;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/je;-><init>(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->t1:Lcom/samsung/android/camera/core2/node/WatermarkNode$NodeCallback;

    .line 3
    new-instance p1, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$1;-><init>(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->u1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    .line 4
    new-instance p1, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$2;-><init>(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->v1:Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;

    .line 5
    new-instance p1, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$3;-><init>(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->w1:Lcom/samsung/android/camera/core2/node/ExifManageNode$NodeCallback;

    .line 6
    new-instance p1, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$4;-><init>(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->x1:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$NodeCallback;

    .line 7
    new-instance p1, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$5;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$5;-><init>(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->y1:Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;

    .line 8
    new-instance p1, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$6;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$6;-><init>(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->z1:Lcom/samsung/android/camera/core2/node/XMPInjectorNode$NodeCallback;

    .line 9
    new-instance p1, Lcom/samsung/android/camera/core2/maker/he;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/he;-><init>(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->A1:Lcom/samsung/android/camera/core2/node/Node$OutputPort$PortDataCallback;

    const/16 p1, 0x23

    .line 10
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->o0:I

    .line 11
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->r0:I

    .line 12
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->d:Ljava/util/Set;

    sget-object p2, Lcom/samsung/android/camera/core2/MakerPublicKey;->f:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance p1, Lcom/samsung/android/camera/core2/maker/wd;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/wd;-><init>(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->C0:Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;

    const/16 p1, 0x22

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->E:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic I3(Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->h4(Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public static synthetic J3(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->l4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic K3(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->u4(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method

.method public static synthetic L3(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->n4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic M3(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->o4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic N3(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;Lcom/samsung/android/camera/core2/util/ImageFile;Lcom/samsung/android/camera/core2/callback/PanoramaEventCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->q4(Lcom/samsung/android/camera/core2/util/ImageFile;Lcom/samsung/android/camera/core2/callback/PanoramaEventCallback;)V

    return-void
.end method

.method public static synthetic O3(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->j4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic P3(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->k4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic Q3(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->p4()V

    return-void
.end method

.method public static synthetic R3(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;Landroid/media/Image;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->s4(Landroid/media/Image;Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void
.end method

.method public static synthetic S3(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;ILcom/samsung/android/camera/core2/callback/PanoramaEventCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->t4(ILcom/samsung/android/camera/core2/callback/PanoramaEventCallback;)V

    return-void
.end method

.method public static synthetic T3(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->i4(I)V

    return-void
.end method

.method public static synthetic U3(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->m4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic V3(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;Lcom/samsung/android/camera/core2/util/ImageFile;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->r4(Lcom/samsung/android/camera/core2/util/ImageFile;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    return-void
.end method

.method static bridge synthetic W3(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->v4(I)V

    return-void
.end method

.method static bridge synthetic X3(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->w4(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;)V

    return-void
.end method

.method static bridge synthetic Y3()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object v0
.end method

.method private Z3(Landroid/hardware/camera2/CaptureResult;Landroid/net/Uri;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "addDisplayP3Sef is skipped - uri is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/SEFInterface;->u(Landroid/hardware/camera2/CaptureResult;)Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    sget-object p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "addDisplayP3Sef is skipped - sefParam is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->e:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "rw"

    invoke-virtual {p0, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/camera/core2/maker/yd;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/maker/yd;-><init>(Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    .line 6
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 7
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 8
    :catch_0
    sget-object p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "addDisplayP3Sef is failed"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private a4(Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->m()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->q1:Lcom/samsung/android/camera/core2/container/WatermarkInfo;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    invoke-virtual {v3, v0}, Lcom/samsung/android/camera/core2/node/Node;->initialize(Z)V

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v3

    invoke-direct {v0, v3, p1, v2}, Lcom/samsung/android/camera/core2/container/CompressConfiguration;-><init>(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/util/ImageInfo;Z)V

    .line 4
    iput v1, v0, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->compressType:I

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;->setCompressConfiguration(Lcom/samsung/android/camera/core2/container/CompressConfiguration;)V

    :cond_1
    return-void
.end method

.method private b4(Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->q1:Lcom/samsung/android/camera/core2/container/WatermarkInfo;

    if-eqz p0, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/camera/core2/ExtraBundle;->W:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    :cond_0
    return-void
.end method

.method private c4(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->q1:Lcom/samsung/android/camera/core2/container/WatermarkInfo;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->Y:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p3, v1, v0}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 4
    :cond_0
    new-instance p3, Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    invoke-direct {p3, p2, p1}, Lcom/samsung/android/camera/core2/container/CompressConfiguration;-><init>(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    .line 5
    iput-object p4, p3, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->extJpegMetadata:Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/NodeChain;

    const-class p1, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->h(Ljava/lang/Class;)Lcom/samsung/android/camera/core2/node/Node;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    .line 7
    invoke-virtual {p0, p3}, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;->setCompressConfiguration(Lcom/samsung/android/camera/core2/container/CompressConfiguration;)V

    :cond_1
    return-void
.end method

.method private d4()Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/node/NodeChain;

    new-instance v1, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$8;

    sget-object v2, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$8;-><init>(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;ILcom/samsung/android/camera/core2/node/Node$PortType;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/node/NonDestructionNode;

    sget-object v3, Lcom/samsung/android/camera/core2/maker/ie;->a:Lcom/samsung/android/camera/core2/maker/ie;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->e:Landroid/content/Context;

    invoke-direct {v1, v3, p0}, Lcom/samsung/android/camera/core2/node/NonDestructionNode;-><init>(Lcom/samsung/android/camera/core2/node/NonDestructionNode$NodeCallback;Landroid/content/Context;)V

    .line 3
    const-class p0, Lcom/samsung/android/camera/core2/node/NonDestructionNode;

    invoke-virtual {v0, v1, p0, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v0
.end method

.method private e4(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    new-instance v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$9;

    sget-object v3, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v3}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$9;-><init>(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;ILcom/samsung/android/camera/core2/node/Node$PortType;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    .line 2
    new-instance v2, Lcom/samsung/android/camera/core2/node/WatermarkNode;

    new-instance v5, Lcom/samsung/android/camera/core2/node/WatermarkNode$WatermarkInitParam;

    invoke-direct {v5, p1}, Lcom/samsung/android/camera/core2/node/WatermarkNode$WatermarkInitParam;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->t1:Lcom/samsung/android/camera/core2/node/WatermarkNode$NodeCallback;

    invoke-direct {v2, v5, p1}, Lcom/samsung/android/camera/core2/node/WatermarkNode;-><init>(Lcom/samsung/android/camera/core2/node/WatermarkNode$WatermarkInitParam;Lcom/samsung/android/camera/core2/node/WatermarkNode$NodeCallback;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->u1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    aput-object p0, p1, v4

    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    .line 4
    const-class p1, Lcom/samsung/android/camera/core2/node/WatermarkNode;

    invoke-virtual {v1, v2, p1, v3}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    .line 5
    invoke-virtual {v1, p0, v0, v3}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v1
.end method

.method private f4()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/ImageUtils;->getRatio(Landroid/util/Size;)F

    move-result v0

    const v1, 0x3faaaaab

    .line 2
    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/ImageUtils;->compareRatio(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    div-int/lit16 p0, p0, 0x140

    return p0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    div-int/lit16 p0, p0, 0x100

    return p0
.end method

.method private g4()Landroid/util/Size;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    .line 3
    new-instance p0, Landroid/util/SizeF;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/CamCapability;->g1(F)F

    move-result v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/CamCapability;->h1(F)F

    move-result v0

    invoke-direct {p0, v2, v0}, Landroid/util/SizeF;-><init>(FF)V

    .line 4
    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 5
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    const/high16 v3, 0x43b40000    # 360.0f

    div-float v1, v3, v1

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result p0

    div-float/2addr v3, p0

    mul-float/2addr v3, v4

    float-to-int p0, v3

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v2, v2}, Landroid/util/Size;-><init>(II)V

    .line 7
    :goto_0
    sget-object p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "horizontal max rate: %d, vertical max rate: %d"

    invoke-static {p0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private static synthetic h4(Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/util/SEFInterface;->i(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)J

    return-void
.end method

.method private static synthetic i4(I)V
    .locals 1

    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v0, "NonDestructionNode.NodeCallback throws Error"

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic j4(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private synthetic k4(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/NodeChain;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/node/NodeChain;->k(Z)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->k(Z)V

    return-void
.end method

.method private synthetic l4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/NodeChain;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->f(Z)V

    return-void
.end method

.method private synthetic m4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;->setDeviceOrientation(I)V

    return-void
.end method

.method private synthetic n4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;->setMotionStitchingEnable(Z)V

    return-void
.end method

.method private static synthetic o4(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private synthetic p4()V
    .locals 3

    sget-object v0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private synthetic q4(Lcom/samsung/android/camera/core2/util/ImageFile;Lcom/samsung/android/camera/core2/callback/PanoramaEventCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    const/16 v1, 0x64

    invoke-interface {p2, v1, v0}, Lcom/samsung/android/camera/core2/callback/PanoramaEventCallback;->onProgressStitching(ILcom/samsung/android/camera/core2/CamDevice;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->e:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->r1:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/camera/core2/util/FileUtils;->N(Landroid/content/Context;Ljava/nio/file/Path;Landroid/net/Uri;)Z

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageFile;->a()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->r1:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->Z3(Landroid/hardware/camera2/CaptureResult;Landroid/net/Uri;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->r1:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/camera/core2/callback/PanoramaEventCallback;->onCaptureResult(Landroid/net/Uri;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private synthetic r4(Lcom/samsung/android/camera/core2/util/ImageFile;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 2

    .line 1
    sget-object p2, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataReceived : mOutPortPictureCallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getPanoramaEventCallback()Lcom/samsung/android/camera/core2/callback/PanoramaEventCallback;

    move-result-object p2

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/camera/core2/maker/pe;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/camera/core2/maker/pe;-><init>(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;Lcom/samsung/android/camera/core2/util/ImageFile;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic s4(Landroid/media/Image;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/FlagLock;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->s1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {p2, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p2, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b0:Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p2, v0, p1, v1}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PreviewCallbackHelper;->a(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;Landroid/media/Image;Lcom/samsung/android/camera/core2/CamDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5
    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic t4(ILcom/samsung/android/camera/core2/callback/PanoramaEventCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/camera/core2/callback/PanoramaEventCallback;->onError(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private static synthetic u4(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->b:Landroid/util/Size;

    invoke-virtual {p2, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->x(Landroid/util/Size;)V

    const/16 v0, 0x100

    .line 2
    invoke-virtual {p2, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->t(I)V

    .line 3
    invoke-virtual {p2, p1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->r(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 4
    new-instance p1, Lcom/samsung/android/camera/core2/util/StrideInfo;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->b:Landroid/util/Size;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    invoke-virtual {p2, p1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->z(Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    return-void
.end method

.method private v4(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getPanoramaEventCallback()Lcom/samsung/android/camera/core2/callback/PanoramaEventCallback;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/maker/oe;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/camera/core2/maker/oe;-><init>(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private w4(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/FlagLock;->b()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->H0:Lcom/samsung/android/camera/core2/util/BlockingReference;

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/camera/core2/util/BlockingReference;->b(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/TotalCaptureResult;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/node/NodeChain;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/node/NodeChain;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->q1:Lcom/samsung/android/camera/core2/container/WatermarkInfo;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/container/WatermarkInfo;->c()Lcom/samsung/android/camera/core2/container/WatermarkInfo$Margin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Margin;->b()I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->q1:Lcom/samsung/android/camera/core2/container/WatermarkInfo;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/WatermarkInfo;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 5
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->q1:Lcom/samsung/android/camera/core2/container/WatermarkInfo;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/WatermarkInfo;->c()Lcom/samsung/android/camera/core2/container/WatermarkInfo$Margin;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Margin;->a()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->q1:Lcom/samsung/android/camera/core2/container/WatermarkInfo;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/container/WatermarkInfo;->b()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 6
    sget-object v5, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v6, "processPicture : watermarkInfo = %s"

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->q1:Lcom/samsung/android/camera/core2/container/WatermarkInfo;

    aput-object v8, v7, v0

    invoke-static {v5, v6, v7}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "processPicture : required result size {minWidth %d, minHeight %d}, croppedSize = %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->c:Landroid/util/Size;

    aput-object v9, v7, v8

    .line 8
    invoke-static {v5, v6, v7}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object v6, p1, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->c:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-lt v6, v1, :cond_0

    iget-object v1, p1, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->c:Landroid/util/Size;

    .line 10
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-ge v1, v4, :cond_1

    :cond_0
    const-string v1, "processPicture : panorama result image does not meet minimum size for applying watermark."

    .line 11
    invoke-static {v5, v1}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 12
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {v1, v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->v(Z)V

    .line 13
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {v1, v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->v(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    move v0, v2

    goto/16 :goto_2

    :cond_1
    move v1, v0

    .line 14
    :goto_0
    :try_start_3
    new-instance v4, Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;

    invoke-direct {v4}, Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;-><init>()V

    .line 15
    iget v5, p1, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->e:I

    iput v5, v4, Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;->a:I

    .line 16
    iput v2, v4, Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;->d:I

    .line 17
    new-instance v5, Lcom/samsung/android/camera/core2/maker/xd;

    invoke-direct {v5, p1, v3}, Lcom/samsung/android/camera/core2/maker/xd;-><init>(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-static {v5}, Lcom/samsung/android/camera/core2/util/ImageInfo;->e(Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v3

    .line 18
    new-instance v5, Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;

    invoke-direct {v5}, Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;-><init>()V

    const/16 v6, 0x64

    .line 19
    iput v6, v5, Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;->a:I

    .line 20
    new-instance v6, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    iget-object v7, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    .line 21
    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 22
    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->f()Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    move-result-object v6

    .line 23
    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->h()Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    move-result-object v6

    .line 24
    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->j()Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    move-result-object v6

    .line 25
    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->k()Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    move-result-object v6

    .line 26
    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->e()Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;

    move-result-object v6

    .line 27
    invoke-static {v3, v6, v4, v0}, Lcom/samsung/android/camera/core2/util/JpegUtils;->c0(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;Z)Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;->b:Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;

    .line 28
    iget-object v6, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->n1:Lcom/samsung/android/camera/core2/node/ExifManageNode;

    invoke-virtual {v6, v5}, Lcom/samsung/android/camera/core2/node/ExifManageNode;->setExifConfiguration(Lcom/samsung/android/camera/core2/node/ExifManageNode$ExifConfiguration;)V

    .line 29
    iget-object v5, p1, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->c:Landroid/util/Size;

    if-eqz v5, :cond_3

    .line 30
    iget-object v6, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->p1:Lcom/samsung/android/camera/core2/node/XMPInjectorNode;

    new-instance v7, Lcom/samsung/android/camera/core2/node/XMPInjectorNode$XMPConfiguration;

    iget v8, p1, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->d:I

    iget-boolean v9, p1, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->f:Z

    if-eqz v9, :cond_2

    move v0, v2

    .line 31
    :cond_2
    invoke-direct {v7, v5, v8, v0}, Lcom/samsung/android/camera/core2/node/XMPInjectorNode$XMPConfiguration;-><init>(Landroid/util/Size;II)V

    .line 32
    invoke-virtual {v6, v7}, Lcom/samsung/android/camera/core2/node/XMPInjectorNode;->setXMPConfiguration(Lcom/samsung/android/camera/core2/node/XMPInjectorNode$XMPConfiguration;)V

    .line 33
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->p1:Lcom/samsung/android/camera/core2/node/XMPInjectorNode;

    invoke-virtual {v0, v2}, Lcom/samsung/android/camera/core2/node/Node;->setActivate(Z)V

    goto :goto_1

    .line 34
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->p1:Lcom/samsung/android/camera/core2/node/XMPInjectorNode;

    invoke-virtual {v5, v0}, Lcom/samsung/android/camera/core2/node/Node;->setActivate(Z)V

    .line 35
    :goto_1
    iget-object v0, p1, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->a:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-static {v0, v3}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->k(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v0

    .line 36
    new-instance v5, Lcom/samsung/android/camera/core2/ExtraBundle;

    invoke-direct {v5}, Lcom/samsung/android/camera/core2/ExtraBundle;-><init>()V

    .line 37
    invoke-direct {p0, v3}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->a4(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    .line 38
    invoke-direct {p0, v5}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->b4(Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 39
    iget-object v6, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v6

    invoke-direct {p0, v3, v6, v5, v4}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->c4(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;)V

    .line 40
    sget-object v3, Lcom/samsung/android/camera/core2/ExtraBundle;->H:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v3, v4}, Lcom/samsung/android/camera/core2/ExtraBundle;->j(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 41
    sget-object v4, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->K:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    const-string v6, "Panorama_Shot_Info"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {}, Lcom/samsung/android/camera/core2/util/SemWrapper;->f()I

    move-result v4

    const v6, 0xc3b4

    if-lt v4, v6, :cond_4

    .line 43
    sget-object v4, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->L:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_4
    sget-object v3, Lcom/samsung/android/camera/core2/ExtraBundle;->X:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    iget p1, p1, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->e:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, v3, p1}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 45
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->n1:Lcom/samsung/android/camera/core2/node/ExifManageNode;

    iget-object p1, p1, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    invoke-static {p1, v0, v5}, Lcom/samsung/android/camera/core2/node/Node;->set(Lcom/samsung/android/camera/core2/node/Node$InputPort;Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_5

    .line 46
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {p1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;->v(Z)V

    .line 47
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {p1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;->v(Z)V

    .line 48
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :catchall_1
    move-exception p1

    move v0, v1

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 49
    :try_start_4
    sget-object v3, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processPicture fail - can\'t get latestCaptureResult, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, v1}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->v4(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 51
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    if-eqz v0, :cond_6

    .line 52
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;->v(Z)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;->v(Z)V

    .line 54
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 55
    throw p1

    .line 56
    :cond_7
    sget-object p1, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "processPicture fail - pictureProcess is not enabled"

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, v1}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->v4(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method protected B3(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "releaseMaker"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/Node;->release()V

    .line 5
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->s1:Lcom/samsung/android/camera/core2/node/NodeChain;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->u()V

    .line 8
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->s1:Lcom/samsung/android/camera/core2/node/NodeChain;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 10
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 11
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->n1:Lcom/samsung/android/camera/core2/node/ExifManageNode;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/Node;->release()V

    .line 13
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->n1:Lcom/samsung/android/camera/core2/node/ExifManageNode;

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/ConverterNode;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/Node;->release()V

    .line 16
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/ConverterNode;

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->p1:Lcom/samsung/android/camera/core2/node/XMPInjectorNode;

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/Node;->release()V

    .line 19
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->p1:Lcom/samsung/android/camera/core2/node/XMPInjectorNode;

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/Node;->release()V

    .line 22
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/NodeChain;

    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->u()V

    .line 25
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/NodeChain;

    .line 26
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/NodeChain;

    if-eqz v0, :cond_7

    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->u()V

    .line 28
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/NodeChain;

    .line 29
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->o1:Lcom/samsung/android/camera/core2/node/SefNode;

    if-eqz v0, :cond_8

    .line 30
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/Node;->release()V

    .line 31
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->o1:Lcom/samsung/android/camera/core2/node/SefNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->B3(Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void

    :catchall_0
    move-exception p1

    .line 34
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 35
    throw p1

    :catchall_1
    move-exception p1

    .line 36
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 37
    throw p1
.end method

.method public C()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method protected F3(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->F3(Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->J0:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager;

    sget-object p1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->t:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->C1:Lcom/samsung/android/camera/core2/container/FrameRate;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager;->d(Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;Lcom/samsung/android/camera/core2/container/FrameRate;Z)Z

    return-void
.end method

.method public declared-synchronized G()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v1, "stopTakePicture"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->h1()Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->f:Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->a(Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;->stopCapture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected M2()Lcom/samsung/android/camera/core2/container/SessionConfig$DepthCbConfigCollector;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected N2()Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected declared-synchronized O2()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "createMakerRequestBuilder fail - mCamDevice is null"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->f:Ljava/util/Map;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/samsung/android/camera/core2/maker/MakerBase;->d1(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILjava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->f:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamDevice;->r()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 7
    invoke-static {v0, v1, v4, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->g:Ljava/util/Map;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/samsung/android/camera/core2/maker/MakerBase;->d1(Lcom/samsung/android/camera/core2/CamDevice;Ljava/util/Map;ILjava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected P2(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;
    .locals 3

    .line 1
    new-instance p1, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;

    new-instance v0, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    iget v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->o0:I

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    .line 2
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->E:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;-><init>(ILandroid/util/Size;Ljava/lang/Integer;)V

    const/4 p0, 0x0

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;-><init>(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)V

    return-object p1
.end method

.method public declared-synchronized R0(Landroid/net/Uri;Lcom/samsung/android/camera/core2/container/WatermarkInfo;)I
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v1, "takeStitchingPicture"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const-string v0, "resultUri"

    .line 2
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->h1()Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->f:Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->a(Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    const/4 v0, -0x1

    .line 4
    iput-object p2, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->q1:Lcom/samsung/android/camera/core2/container/WatermarkInfo;

    .line 5
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamDevice;->b()I

    move-result v0

    .line 7
    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->r1:Landroid/net/Uri;

    .line 8
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;->startCapture()V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/ConverterNode;

    sget-object p2, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE_FILE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "panorama_temp.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/ImageFile;->h(Ljava/io/File;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageFile;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/camera/core2/node/ConverterNode;->setOutputObj(Lcom/samsung/android/camera/core2/node/Node$PortType;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/samsung/android/camera/core2/exception/StorageNotEnoughException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/samsung/android/camera/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 11
    :try_start_3
    new-instance p2, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string/jumbo v0, "takeStitchingPicture fail"

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    const/4 p1, 0x4

    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->v4(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    :try_start_4
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 14
    :goto_1
    monitor-exit p0

    return v0

    .line 15
    :goto_2
    :try_start_5
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected R2()Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected T2()Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized U()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "cancelTakePicture"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->h1()Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->f:Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->a(Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;->cancelCapture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l0(Lcom/samsung/android/camera/core2/callback/PreviewCallback;Landroid/os/Handler;)I
    .locals 12

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "setMainPreviewCallback(%s)"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->k1()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/PreviewCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/PreviewCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/PreviewCallbackForwarder;

    move-result-object p2

    .line 3
    invoke-static {p2}, Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;->e(Lcom/samsung/android/camera/core2/callback/PreviewCallback;)Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b0:Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->h1()Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->f:Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {p2, v0}, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->h(Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 5
    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b0:Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;

    iget-object v8, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->E0:Lcom/samsung/android/camera/core2/util/MutableReference;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    .line 6
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/camera/core2/util/ImageUtils;->getPaddedNV21BufferSize(Landroid/util/Size;)I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, p0

    .line 7
    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/camera/core2/maker/MakerBase;->V1(Lcom/samsung/android/camera/core2/callback/forwarder/BufferCallbackForwarder;Lcom/samsung/android/camera/core2/util/MutableReference;III)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    sget-object p2, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager;->f:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    invoke-virtual {p0, p2, v2}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I2(Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    .line 9
    :try_start_3
    sget-object p2, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMainPreviewCallback - IllegalArgumentException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 10
    new-instance p2, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v0, "prepareBufferCallbackForwarder fail"

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->J0:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager;

    sget-object v0, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager;->f:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    invoke-virtual {p2, v0, v2}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager;->e(Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, -0x1

    .line 12
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected o1()Ljava/util/HashMap;
    .locals 4
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
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->w:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/de;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/de;-><init>(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->J:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/fe;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/fe;-><init>(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->l0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/ee;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/ee;-><init>(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->m0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/ge;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/ge;-><init>(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->Q:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/be;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/be;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->R:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/ce;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/ce;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
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
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->w:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/ne;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/ne;-><init>(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->J:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/le;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/le;-><init>(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->l0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    sget-object v2, Lcom/samsung/android/camera/core2/maker/zd;->a:Lcom/samsung/android/camera/core2/maker/zd;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->m0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    sget-object v2, Lcom/samsung/android/camera/core2/maker/ae;->a:Lcom/samsung/android/camera/core2/maker/ae;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->Q:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/me;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/me;-><init>(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->R:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/ke;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/ke;-><init>(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    return-object p0
.end method

.method protected q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object p0
.end method

.method protected declared-synchronized r3()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b0:Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->E0:Lcom/samsung/android/camera/core2/util/MutableReference;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/ImageUtils;->getPaddedNV21BufferSize(Landroid/util/Size;)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/core2/maker/MakerBase;->V1(Lcom/samsung/android/camera/core2/callback/forwarder/BufferCallbackForwarder;Lcom/samsung/android/camera/core2/util/MutableReference;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_1
    new-instance v1, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v2, "prepareBufferCallbackForwarder fail"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method protected w1(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 13

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/NonDestructionNode;

    const-class v1, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    const-class v2, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;

    sget-object v3, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->B1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v4, "initializeMaker E"

    invoke-static {v3, v4}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->g4()Landroid/util/Size;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v5, :cond_1

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-lez v5, :cond_1

    .line 4
    iget-object v5, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object v5

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->m()Ljava/util/List;

    move-result-object v8

    .line 6
    invoke-static {v5, v8}, Lcom/samsung/android/camera/core2/util/ImageUtils;->getNearestSizeInRatio(Landroid/util/Size;Ljava/util/Collection;)Landroid/util/Size;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-lt v8, v7, :cond_0

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-lt v8, v7, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->i2()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->n()Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->f4()I

    move-result v10

    .line 11
    new-instance v11, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaInitParam;

    invoke-direct {v11}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaInitParam;-><init>()V

    .line 12
    iget-object v12, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->e:Landroid/content/Context;

    iput-object v12, v11, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaInitParam;->a:Landroid/content/Context;

    .line 13
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v12

    iput v12, v11, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaInitParam;->b:I

    .line 14
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    iput v4, v11, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaInitParam;->c:I

    .line 15
    iput v10, v11, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaInitParam;->d:I

    .line 16
    iput v8, v11, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaInitParam;->e:I

    .line 17
    iput v9, v11, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaInitParam;->f:I

    const/16 v4, 0x1388

    .line 18
    iput v4, v11, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaInitParam;->g:I

    .line 19
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/camera/core2/util/ImageUtils;->getRatio(Landroid/util/Size;)F

    move-result v4

    invoke-virtual {p1, v4}, Lcom/samsung/android/camera/core2/CamCapability;->h1(F)F

    move-result v4

    iput v4, v11, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaInitParam;->h:F

    .line 20
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/camera/core2/util/ImageUtils;->getRatio(Landroid/util/Size;)F

    move-result v4

    invoke-virtual {p1, v4}, Lcom/samsung/android/camera/core2/CamCapability;->g1(F)F

    move-result v4

    iput v4, v11, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaInitParam;->i:F

    .line 21
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object v4

    iput-object v4, v11, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaInitParam;->j:Landroid/util/Size;

    .line 22
    iput-object v5, v11, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaInitParam;->k:Landroid/util/Size;

    .line 23
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    iput-object v4, v11, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaInitParam;->l:Ljava/io/File;

    .line 24
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v4, 0x2

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v11, v4, v6

    .line 25
    iget-object v5, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->x1:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$NodeCallback;

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;

    iput-object v4, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;

    .line 26
    invoke-virtual {v4, v7}, Lcom/samsung/android/camera/core2/node/Node;->initialize(Z)V

    .line 27
    new-instance v4, Lcom/samsung/android/camera/core2/node/NodeChain;

    new-instance v5, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$7;

    sget-object v8, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PREVIEW:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-direct {v5, p0, v7, v8}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker$7;-><init>(Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;ILcom/samsung/android/camera/core2/node/Node$PortType;)V

    invoke-direct {v4, v5}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    iput-object v4, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->s1:Lcom/samsung/android/camera/core2/node/NodeChain;

    .line 28
    iget-object v5, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;

    invoke-virtual {v4, v5, v2, v8}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 30
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 31
    :try_start_1
    new-instance v2, Lcom/samsung/android/camera/core2/node/ExifManageNode;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->w1:Lcom/samsung/android/camera/core2/node/ExifManageNode$NodeCallback;

    invoke-direct {v2, v4}, Lcom/samsung/android/camera/core2/node/ExifManageNode;-><init>(Lcom/samsung/android/camera/core2/node/ExifManageNode$NodeCallback;)V

    iput-object v2, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->n1:Lcom/samsung/android/camera/core2/node/ExifManageNode;

    .line 32
    invoke-virtual {v2, v7}, Lcom/samsung/android/camera/core2/node/Node;->initialize(Z)V

    new-array v2, v7, [Ljava/lang/Object;

    .line 33
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->u1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    aput-object v4, v2, v6

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    iput-object v2, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->d4()Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/NodeChain;

    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->e4(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/NodeChain;

    .line 36
    new-instance p1, Lcom/samsung/android/camera/core2/node/ConverterNode;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->v1:Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;

    invoke-direct {p1, v2}, Lcom/samsung/android/camera/core2/node/ConverterNode;-><init>(Lcom/samsung/android/camera/core2/node/ConverterNode$NodeCallback;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/ConverterNode;

    .line 37
    invoke-virtual {p1, v7}, Lcom/samsung/android/camera/core2/node/Node;->initialize(Z)V

    .line 38
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/ConverterNode;

    sget-object v2, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    sget-object v4, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE_FILE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {p1, v2, v4}, Lcom/samsung/android/camera/core2/node/ConverterNode;->setPortType(Lcom/samsung/android/camera/core2/node/Node$PortType;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    .line 39
    new-instance p1, Lcom/samsung/android/camera/core2/node/XMPInjectorNode;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->z1:Lcom/samsung/android/camera/core2/node/XMPInjectorNode$NodeCallback;

    invoke-direct {p1, v2}, Lcom/samsung/android/camera/core2/node/XMPInjectorNode;-><init>(Lcom/samsung/android/camera/core2/node/XMPInjectorNode$NodeCallback;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->p1:Lcom/samsung/android/camera/core2/node/XMPInjectorNode;

    .line 40
    invoke-virtual {p1, v7}, Lcom/samsung/android/camera/core2/node/Node;->initialize(Z)V

    .line 41
    new-instance p1, Lcom/samsung/android/camera/core2/node/SefNode;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->y1:Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;

    invoke-direct {p1, v2}, Lcom/samsung/android/camera/core2/node/SefNode;-><init>(Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->o1:Lcom/samsung/android/camera/core2/node/SefNode;

    .line 42
    invoke-virtual {p1, v7}, Lcom/samsung/android/camera/core2/node/Node;->initialize(Z)V

    .line 43
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->n1:Lcom/samsung/android/camera/core2/node/ExifManageNode;

    iget-object p1, p1, Lcom/samsung/android/camera/core2/node/Node;->OUTPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$OutputPort;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    iget-object v2, v2, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    invoke-static {p1, v2}, Lcom/samsung/android/camera/core2/node/Node;->connectPort(Lcom/samsung/android/camera/core2/node/Node$OutputPort;Lcom/samsung/android/camera/core2/node/Node$InputPort;)V

    .line 44
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    iget-object p1, p1, Lcom/samsung/android/camera/core2/node/Node;->OUTPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$OutputPort;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {v2, v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->h(Ljava/lang/Class;)Lcom/samsung/android/camera/core2/node/Node;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/core2/node/NonDestructionNode;

    iget-object v2, v2, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    invoke-static {p1, v2}, Lcom/samsung/android/camera/core2/node/Node;->connectPort(Lcom/samsung/android/camera/core2/node/Node$OutputPort;Lcom/samsung/android/camera/core2/node/Node$InputPort;)V

    .line 45
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->h(Ljava/lang/Class;)Lcom/samsung/android/camera/core2/node/Node;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/node/NonDestructionNode;

    iget-object p1, p1, Lcom/samsung/android/camera/core2/node/Node;->OUTPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$OutputPort;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/NodeChain;

    const-class v2, Lcom/samsung/android/camera/core2/node/WatermarkNode;

    invoke-virtual {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;->h(Ljava/lang/Class;)Lcom/samsung/android/camera/core2/node/Node;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/node/WatermarkNode;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/node/Node;->connectPort(Lcom/samsung/android/camera/core2/node/Node$OutputPort;Lcom/samsung/android/camera/core2/node/Node$InputPort;)V

    .line 46
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {p1, v1}, Lcom/samsung/android/camera/core2/node/NodeChain;->h(Ljava/lang/Class;)Lcom/samsung/android/camera/core2/node/Node;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    iget-object p1, p1, Lcom/samsung/android/camera/core2/node/Node;->OUTPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$OutputPort;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/ConverterNode;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/node/Node;->connectPort(Lcom/samsung/android/camera/core2/node/Node$OutputPort;Lcom/samsung/android/camera/core2/node/Node$InputPort;)V

    .line 47
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/ConverterNode;

    iget-object p1, p1, Lcom/samsung/android/camera/core2/node/Node;->OUTPUTPORT_PICTURE_FILE:Lcom/samsung/android/camera/core2/node/Node$OutputPort;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->p1:Lcom/samsung/android/camera/core2/node/XMPInjectorNode;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE_FILE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/node/Node;->connectPort(Lcom/samsung/android/camera/core2/node/Node$OutputPort;Lcom/samsung/android/camera/core2/node/Node$InputPort;)V

    .line 48
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->p1:Lcom/samsung/android/camera/core2/node/XMPInjectorNode;

    iget-object p1, p1, Lcom/samsung/android/camera/core2/node/Node;->OUTPUTPORT_PICTURE_FILE:Lcom/samsung/android/camera/core2/node/Node$OutputPort;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->o1:Lcom/samsung/android/camera/core2/node/SefNode;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE_FILE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/node/Node;->connectPort(Lcom/samsung/android/camera/core2/node/Node$OutputPort;Lcom/samsung/android/camera/core2/node/Node$InputPort;)V

    .line 49
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->o1:Lcom/samsung/android/camera/core2/node/SefNode;

    iget-object p1, p1, Lcom/samsung/android/camera/core2/node/Node;->OUTPUTPORT_PICTURE_FILE:Lcom/samsung/android/camera/core2/node/Node$OutputPort;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->A1:Lcom/samsung/android/camera/core2/node/Node$OutputPort$PortDataCallback;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/node/Node;->setOutputPortDataCallback(Lcom/samsung/android/camera/core2/node/Node$OutputPort;Lcom/samsung/android/camera/core2/node/Node$OutputPort$PortDataCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string p0, "initializeMaker X"

    .line 51
    invoke-static {v3, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 52
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 53
    throw p1

    :catchall_1
    move-exception p1

    .line 54
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 55
    throw p1

    .line 56
    :cond_0
    new-instance p1, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v1, v7, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object p0

    aput-object p0, v1, v6

    const-string p0, "initializeMaker is failed - can\'t find thumbnailSize which corresponds with pictureSize %s"

    .line 58
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_1
    new-instance p1, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v1, v7, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object p0

    aput-object p0, v1, v6

    const-string p0, "initializeMaker is failed - get invalid max imageRate with pictureSize %s"

    .line 61
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
