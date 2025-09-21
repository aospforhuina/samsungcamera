.class Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;
.super Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;
.source "SingleBokehPhotoMaker.java"


# static fields
.field private static final j2:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private volatile C1:I

.field private volatile D1:I

.field private E1:Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;

.field private F1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

.field private G1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

.field private H1:Lcom/samsung/android/camera/core2/node/SefNode;

.field private I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

.field private J1:Lcom/samsung/android/camera/core2/node/NodeChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Landroid/media/Image;",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private K1:Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;

.field private L1:[Lcom/samsung/android/camera/core2/container/NormalizedRect;

.field private M1:Landroid/util/Size;

.field private N1:[Landroid/hardware/camera2/params/Face;

.field private O1:[Landroid/hardware/camera2/params/Face;

.field private P1:[[I

.field private Q1:[[I

.field private R1:[[I

.field private S1:[[I

.field private T1:[B

.field private U1:I

.field private V1:[B

.field private W1:I

.field private X1:[I

.field private Y1:[Landroid/graphics/Rect;

.field private Z1:[I

.field private a2:[Landroid/graphics/Rect;

.field private b2:[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;

.field private final c2:Lcom/samsung/android/camera/core2/node/Node$OutputPort$PortDataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/Node$OutputPort$PortDataCallback<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final d2:Lcom/samsung/android/camera/core2/node/Node$OutputPort$PortDataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/Node$OutputPort$PortDataCallback<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final e2:Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode$NodeCallback;

.field private final f2:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

.field private final g2:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

.field private final h2:Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;

.field private final i2:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$NodeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "SingleBokehPhotoMaker"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j2:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/samsung/android/camera/core2/maker/uk;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/uk;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->c2:Lcom/samsung/android/camera/core2/node/Node$OutputPort$PortDataCallback;

    .line 3
    new-instance p1, Lcom/samsung/android/camera/core2/maker/vk;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/vk;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->d2:Lcom/samsung/android/camera/core2/node/Node$OutputPort$PortDataCallback;

    .line 4
    new-instance p1, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$1;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->e2:Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode$NodeCallback;

    .line 5
    new-instance p1, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$2;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->f2:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    .line 6
    new-instance p1, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$3;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->g2:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    .line 7
    new-instance p1, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$4;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->h2:Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;

    .line 8
    new-instance p1, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->i2:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$NodeCallback;

    const/16 p1, 0x23

    .line 9
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->o0:I

    const/16 v0, 0x100

    .line 10
    iput v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->q0:I

    .line 11
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->r0:I

    .line 12
    iput v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->t0:I

    .line 13
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u0:I

    .line 14
    iput v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->w0:I

    .line 15
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x0:I

    .line 16
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->N0:I

    .line 17
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->A:Ljava/lang/Boolean;

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->D1:I

    .line 19
    new-instance p1, Lcom/samsung/android/camera/core2/maker/vj;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/vj;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->C0:Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;

    .line 20
    new-instance p1, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->b1:Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;

    .line 21
    new-instance p1, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->c1:Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;

    return-void
.end method

.method public static synthetic A4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->s5(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic A5(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->setEyeEnlargementLevel(I)V

    return-void
.end method

.method public static synthetic B4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->m4(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic B5(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j2:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataReceived : mOutPortPictureCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->J:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p2, v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->r5(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->H1:Lcom/samsung/android/camera/core2/node/SefNode;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/Node;->set(Lcom/samsung/android/camera/core2/node/Node$InputPort;Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p2, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamDevice;)V

    :goto_0
    return-void
.end method

.method public static synthetic C4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j4(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic C5(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j2:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataReceived : mOutPortPictureCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->t(I)V

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->M1:Landroid/util/Size;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->x(Landroid/util/Size;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p2, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public static synthetic D4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->l4(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic D5(Landroid/media/Image;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/FlagLock;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->K1:Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;

    new-instance v0, Lcom/samsung/android/camera/core2/ExtraBundle;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/ExtraBundle;-><init>()V

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->f(Landroid/media/Image;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Void;

    .line 3
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->J1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {p2, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/Image;

    invoke-virtual {p0, p2}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->A3(Landroid/media/Image;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->z3(Landroid/media/Image;)V

    .line 5
    sget-object p2, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j2:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b0:Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p2, v0, p1, v1}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PreviewCallbackHelper;->a(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;Landroid/media/Image;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/Node;->isDeInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    const-wide/16 v0, 0x0

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2, v0, v1}, Lcom/samsung/android/camera/core2/node/Node2;->initialize(ZZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 9
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic E4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->F5(Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;)V

    return-void
.end method

.method private synthetic E5(Landroid/util/Size;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic F4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->x5(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic F5(Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    .line 2
    iput v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->s0:I

    .line 3
    new-instance v1, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;->l()Landroid/util/Size;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;-><init>(Landroid/util/Size;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->W:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    return-void
.end method

.method public static synthetic G4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Landroid/media/Image;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->D5(Landroid/media/Image;Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void
.end method

.method private static synthetic G5(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;ZLcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;)V
    .locals 0

    sget-object p2, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->g:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->e(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Z)V

    return-void
.end method

.method public static synthetic H4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->n4(Ljava/lang/Object;)V

    return-void
.end method

.method private H5(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->setDeviceOrientation(I)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->E1:Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;->setDeviceOrientation(I)V

    return-void
.end method

.method public static synthetic I4(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;ZLcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->G5(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;ZLcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;)V

    return-void
.end method

.method public static synthetic J4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->y5(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic K4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->i4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic L4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->k4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic M4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->B5(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    return-void
.end method

.method public static synthetic N4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->t5(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->u5(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->C5(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    return-void
.end method

.method static bridge synthetic Q4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->C1:I

    return p0
.end method

.method static bridge synthetic R4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->P1:[[I

    return-object p0
.end method

.method static bridge synthetic S4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Q1:[[I

    return-object p0
.end method

.method static bridge synthetic T4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->b2:[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;

    return-object p0
.end method

.method static bridge synthetic U4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[Lcom/samsung/android/camera/core2/container/NormalizedRect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->L1:[Lcom/samsung/android/camera/core2/container/NormalizedRect;

    return-object p0
.end method

.method static bridge synthetic V4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->D1:I

    return p0
.end method

.method static bridge synthetic W4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->F1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    return-object p0
.end method

.method static bridge synthetic X4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->T1:[B

    return-object p0
.end method

.method static bridge synthetic Y4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->U1:I

    return p0
.end method

.method static bridge synthetic Z4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[Landroid/hardware/camera2/params/Face;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->N1:[Landroid/hardware/camera2/params/Face;

    return-object p0
.end method

.method static bridge synthetic a5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->X1:[I

    return-object p0
.end method

.method static bridge synthetic b5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Y1:[Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic c5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->M1:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic d5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->G1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    return-object p0
.end method

.method static bridge synthetic e5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    return-object p0
.end method

.method static bridge synthetic f5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->b2:[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;

    return-void
.end method

.method static bridge synthetic g5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;[Lcom/samsung/android/camera/core2/container/NormalizedRect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->L1:[Lcom/samsung/android/camera/core2/container/NormalizedRect;

    return-void
.end method

.method static bridge synthetic h5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;[[I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->R1:[[I

    return-void
.end method

.method private synthetic i4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->setSlimFaceLevel(I)V

    return-void
.end method

.method static bridge synthetic i5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;[[I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->S1:[[I

    return-void
.end method

.method private synthetic j4(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->H5(I)V

    return-void
.end method

.method static bridge synthetic j5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->D1:I

    return-void
.end method

.method private synthetic k4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->E1:Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;->setMode(I)Z

    return-void
.end method

.method static bridge synthetic k5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;[B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->V1:[B

    return-void
.end method

.method private synthetic l4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->setFaceColorLevel(I)V

    return-void
.end method

.method static bridge synthetic l5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->W1:I

    return-void
.end method

.method private synthetic m4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->setBokehFaceRetouchLevel(I)V

    return-void
.end method

.method static bridge synthetic m5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;[Landroid/hardware/camera2/params/Face;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->O1:[Landroid/hardware/camera2/params/Face;

    return-void
.end method

.method private synthetic n4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->setSelfieToneMode(I)V

    return-void
.end method

.method static bridge synthetic n5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;[I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Z1:[I

    return-void
.end method

.method static bridge synthetic o5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;[Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->a2:[Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic p5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Ljava/lang/Integer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->r5(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j2:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object v0
.end method

.method private r5(Ljava/lang/Integer;)Z
    .locals 1

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private synthetic s5(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->p:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I2(Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic t5(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->o:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I2(Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic u5(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->p:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->E1:Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;->setMode(I)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I2(Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->v5(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic v5(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->setFaceDetectionEnable(Z)V

    return-void
.end method

.method public static synthetic w4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->w5(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic w5(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->E1:Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;->setInterval(J)V

    return-void
.end method

.method public static synthetic x4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->z5(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic x5(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->setSensorCameraLandscape(Z)V

    return-void
.end method

.method public static synthetic y4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Landroid/util/Size;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->E5(Landroid/util/Size;)Z

    move-result p0

    return p0
.end method

.method private synthetic y5(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->setSpecialEffectInfo(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic z4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->A5(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic z5(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->setRelightLevel(I)V

    return-void
.end method


# virtual methods
.method protected B3(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j2:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "releaseMaker"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->F1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/Node;->release()V

    .line 6
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->F1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->G1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/Node;->release()V

    .line 9
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->G1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->H1:Lcom/samsung/android/camera/core2/node/SefNode;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/Node;->release()V

    .line 12
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->H1:Lcom/samsung/android/camera/core2/node/SefNode;

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/Node;->release()V

    .line 15
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->J1:Lcom/samsung/android/camera/core2/node/NodeChain;

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->u()V

    .line 19
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->J1:Lcom/samsung/android/camera/core2/node/NodeChain;

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->K1:Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->a()V

    .line 22
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->K1:Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;

    .line 23
    :cond_5
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->E1:Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;

    .line 24
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->L1:[Lcom/samsung/android/camera/core2/container/NormalizedRect;

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->D1:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 27
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->B3(Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void

    :catchall_0
    move-exception p1

    .line 28
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 29
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 30
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 31
    throw p1
.end method

.method public C()I
    .locals 0

    const/16 p0, 0x19

    return p0
.end method

.method protected E3(Lcom/samsung/android/camera/core2/CamCapability;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->W:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->s0:I

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->Z()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->H0()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object p1

    .line 7
    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/util/StreamConfigUtils;->d(Ljava/util/List;Landroid/util/Size;)Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;

    .line 11
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/camera/core2/maker/xk;

    invoke-direct {p2, p0}, Lcom/samsung/android/camera/core2/maker/xk;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public declared-synchronized L0(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Ljava/io/File;Lcom/samsung/android/camera/core2/container/WatermarkInfo;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "dynamicShotInfo"

    .line 1
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->D1:I

    iput v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->C1:I

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->O1:[Landroid/hardware/camera2/params/Face;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->N1:[Landroid/hardware/camera2/params/Face;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->R1:[[I

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->P1:[[I

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->S1:[[I

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Q1:[[I

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->V1:[B

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->T1:[B

    .line 7
    iget v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->W1:I

    iput v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->U1:I

    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Z1:[I

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->X1:[I

    .line 9
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->a2:[Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Y1:[Landroid/graphics/Rect;

    .line 10
    sget-object v0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j2:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v1, "takePostProcessingPicture: CaptureBokehState=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->C1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->L0(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Ljava/io/File;Lcom/samsung/android/camera/core2/container/WatermarkInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized N(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Lcom/samsung/android/camera/core2/container/WatermarkInfo;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "dynamicShotInfo"

    .line 1
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->D1:I

    iput v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->C1:I

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->O1:[Landroid/hardware/camera2/params/Face;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->N1:[Landroid/hardware/camera2/params/Face;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->R1:[[I

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->P1:[[I

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->S1:[[I

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Q1:[[I

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->V1:[B

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->T1:[B

    .line 7
    iget v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->W1:I

    iput v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->U1:I

    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Z1:[I

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->X1:[I

    .line 9
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->a2:[Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Y1:[Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 10
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->H0:Lcom/samsung/android/camera/core2/util/BlockingReference;

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/camera/core2/util/BlockingReference;->b(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureResult;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->O1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 13
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    and-int/lit8 v1, v1, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->setSaveAsFlipProperty(Z)V

    .line 14
    sget-object v1, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j2:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "takeProcessingPicture: CaptureBokehState=%d"

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->C1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->M1:Landroid/util/Size;

    iget v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->C1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->prepareTakePicture(Landroid/util/Size;Ljava/lang/Integer;)V

    .line 16
    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->N(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Lcom/samsung/android/camera/core2/container/WatermarkInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 18
    :try_start_3
    sget-object p2, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j2:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "takeProcessingPicture: fail - can\'t get latestCaptureResult, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected N2()Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;

    new-instance v1, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    iget v2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->q0:I

    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    .line 2
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->J:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;-><init>(ILandroid/util/Size;Ljava/lang/Integer;)V

    new-instance v2, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    iget v3, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->r0:I

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    .line 3
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->K:Ljava/lang/Integer;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;-><init>(ILandroid/util/Size;Ljava/lang/Integer;)V

    new-instance v3, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    iget v4, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->s0:I

    .line 4
    iget-object v5, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->W:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->L:Ljava/lang/Integer;

    invoke-direct {v3, v4, v5, p0}, Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;-><init>(ILandroid/util/Size;Ljava/lang/Integer;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;-><init>(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)V

    return-object v0
.end method

.method public declared-synchronized T0(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Lcom/samsung/android/camera/core2/container/WatermarkInfo;)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object p2, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j2:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v0, "takePicture - dynamicShotInfo %s runningPhysicalId %s DFovStreamType %s"

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->e0:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->g0:Ljava/lang/Integer;

    const/4 v6, 0x2

    aput-object v4, v2, v6

    invoke-static {p2, v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "dynamicShotInfo"

    .line 2
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->e0:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->f0:I

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->h1()Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->f:Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v2, v4}, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->a(Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->H0:Lcom/samsung/android/camera/core2/util/BlockingReference;

    const-wide/16 v7, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v7, v8, v4}, Lcom/samsung/android/camera/core2/util/BlockingReference;->b(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->O1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v4}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 9
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v4, v1}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->setSaveAsFlipProperty(Z)V

    .line 10
    invoke-static {}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->i()Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->i0()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->x:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 13
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->w:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->h0()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->v:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->b()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 16
    :cond_1
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->p:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->f0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->d(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->g(Z)V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->g0:Ljava/lang/Integer;

    .line 19
    sget-object v2, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;->b:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;

    invoke-virtual {p0, v2, p1, v0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->s1(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Ljava/lang/Integer;)Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v5}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->f(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Z)V

    .line 20
    iget v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->D1:I

    iput v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->C1:I

    .line 21
    sget-object v2, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->d:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    sget-object v4, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;->a:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;

    invoke-virtual {p0, v4, p1, v0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->s1(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Ljava/lang/Integer;)Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    move-result-object v7

    invoke-static {v2, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->Z:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object p1

    goto :goto_2

    .line 22
    :cond_3
    sget-object v2, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->c:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    invoke-virtual {p0, v4, p1, v0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->s1(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Ljava/lang/Integer;)Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->X:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object p1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    goto :goto_1

    :goto_2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->M1:Landroid/util/Size;

    .line 23
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->O1:[Landroid/hardware/camera2/params/Face;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->N1:[Landroid/hardware/camera2/params/Face;

    .line 24
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->R1:[[I

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->P1:[[I

    .line 25
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->S1:[[I

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Q1:[[I

    .line 26
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->V1:[B

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->T1:[B

    .line 27
    iget p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->W1:I

    iput p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->U1:I

    .line 28
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Z1:[I

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->X1:[I

    .line 29
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->a2:[Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Y1:[Landroid/graphics/Rect;

    const-string/jumbo p1, "takePicture: CaptureBokehState=%d, ResultPictureSize=%s"

    new-array v0, v6, [Ljava/lang/Object;

    .line 30
    iget v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->C1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->M1:Landroid/util/Size;

    aput-object v2, v0, v5

    invoke-static {p2, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->M1:Landroid/util/Size;

    iget v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->C1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->prepareTakePicture(Landroid/util/Size;Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    :try_start_3
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->a()Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/core2/CamDevice;->Y(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;)V
    :try_end_3
    .catch Lcom/samsung/android/camera/core2/exception/CamDeviceException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 34
    :try_start_4
    new-instance p2, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string/jumbo v0, "takePicture fail"

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 35
    sget-object p2, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j2:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "takePicture: fail - can\'t get latestCaptureResult, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p2, p1, v3, v0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected T1(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    if-eqz p0, :cond_6

    .line 2
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x65

    if-eq v0, v2, :cond_0

    const/16 v2, 0x66

    if-eq v0, v2, :cond_0

    const/16 v2, 0x68

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 4
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->setAeFlashMode(Z)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->E0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->f2:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 7
    :cond_2
    invoke-virtual {p2, v0}, Lcom/samsung/android/camera/core2/CamCapability;->c2(Ljava/lang/Integer;)Landroid/graphics/Rect;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->P1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 9
    invoke-static {p1, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 10
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->setAfRegion([Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 12
    :cond_3
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/Face;

    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->setPreviewHwFaceInfo([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 14
    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->z0()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 15
    sget-object p2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->K0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    invoke-static {p2}, Lcom/samsung/android/camera/core2/local/util/MarshalUtils;->c([I)[Lcom/samsung/android/camera/core2/container/PetDetectionInfo;

    move-result-object p2

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->setPreviewPetDetectionInfo([Lcom/samsung/android/camera/core2/container/PetDetectionInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 17
    :cond_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->setPreviewResult(Landroid/hardware/camera2/CaptureResult;)V

    :cond_6
    return-void
.end method

.method protected f1()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/camera/core2/MakerPrivateKey<",
            "*>;",
            "Lcom/samsung/android/camera/core2/maker/MakerBase$ApplyRepeatingKeyExecutor<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->z:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->f1()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->z:Ljava/util/HashMap;

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->K:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/gk;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/gk;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->z:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->P:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/rk;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/rk;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->z:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->k0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/tk;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/tk;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->z:Ljava/util/HashMap;

    return-object p0
.end method

.method protected j1(Landroid/hardware/camera2/CaptureResult;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->j1(Landroid/hardware/camera2/CaptureResult;)I

    move-result p0

    const/high16 p1, 0x20000

    or-int/2addr p0, p1

    return p0
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
    invoke-super {p0}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->o1()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->f:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/kk;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/kk;-><init>(Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->g:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/lk;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/lk;-><init>(Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->h:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/ik;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/ik;-><init>(Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->s:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/ok;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/ok;-><init>(Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->q:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/qk;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/qk;-><init>(Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->w:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/jk;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/jk;-><init>(Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->K:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->E1:Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/f5;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/f5;-><init>(Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->P:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/mk;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/mk;-><init>(Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->j0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->E1:Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/h5;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/h5;-><init>(Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->k0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->E1:Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/g5;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/g5;-><init>(Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->r0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/pk;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/pk;-><init>(Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->s0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/nk;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/nk;-><init>(Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->t0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/sk;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/sk;-><init>(Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
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
    invoke-super {p0}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->p1()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->f:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/xj;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/xj;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->g:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/ak;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/ak;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->h:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/yj;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/yj;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->s:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/ck;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/ck;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->q:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/ek;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/ek;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->w:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/zj;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/zj;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->K:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/fk;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/fk;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->P:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/yk;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/yk;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->j0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/zk;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/zk;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->r0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/bk;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/bk;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->t0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/dk;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/dk;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->s0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/wj;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/wj;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    return-object p0
.end method

.method protected p3(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 4

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/CamCapability;->Q(I)Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->H0()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/camera/core2/maker/hk;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/maker/hk;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V

    .line 5
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->M0:Landroid/util/Size;

    if-eqz p1, :cond_0

    .line 8
    iput v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->P0:I

    goto :goto_0

    .line 9
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j2:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "prepareDepthCbConfig: there is not any size matched with designated condition in the SamsungDepthAvailableDepthSizes list."

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/camera/core2/util/ArrayUtils;->f(Ljava/util/List;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->M0:Landroid/util/Size;

    .line 11
    iput v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->P0:I

    .line 12
    sget-object p1, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j2:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareDepthCbConfig: PictureDepthCbImageSize is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->M0:Landroid/util/Size;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    iput-object v3, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->M0:Landroid/util/Size;

    .line 14
    sget-object p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j2:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "prepareDepthCbConfig: PictureDepthCbImageSize is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j2:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object p0
.end method

.method protected u3(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/container/DeviceConfiguration;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->Z()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->C1()Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-static {p2}, Lcom/samsung/android/camera/core2/util/StreamConfigUtils;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->E3(Lcom/samsung/android/camera/core2/CamCapability;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected u4(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Ljava/io/File;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 1
    sget-object v9, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j2:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v1, "takeProcessingPictureInternal - dynamicShotInfo %s isPostMode %b runningPhysicalId %s DFovStreamType %s"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v3, v10

    const/4 v11, 0x1

    if-eqz p2, :cond_0

    move v4, v11

    goto :goto_0

    :cond_0
    move v4, v10

    .line 2
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v11

    iget-object v4, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->e0:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->g0:Ljava/lang/Integer;

    const/4 v6, 0x3

    aput-object v4, v3, v6

    .line 3
    invoke-static {v9, v1, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->i1:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v3, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->o1:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v2, "previous sequence is not finished"

    invoke-direct {v0, v2}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    iget-object v1, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v12

    .line 9
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a()I

    move-result v14

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c()I

    move-result v15

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->b()J

    move-result-wide v16

    .line 13
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->h(Ljava/lang/Integer;)I

    move-result v7

    .line 14
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->i(Ljava/lang/Integer;)I

    move-result v4

    .line 15
    iget-object v3, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->g0:Ljava/lang/Integer;

    .line 16
    invoke-static {v7}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->w(I)Z

    move-result v18

    .line 17
    invoke-static {v7}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->u(I)Z

    move-result v1

    .line 18
    invoke-static {v15}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->d(I)Z

    move-result v6

    .line 19
    sget-object v5, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->d:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    sget-object v11, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;->a:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;

    invoke-virtual {v0, v11, v8, v3}, Lcom/samsung/android/camera/core2/maker/MakerBase;->s1(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Ljava/lang/Integer;)Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    move-result-object v10

    invoke-static {v5, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->Z:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object v5

    goto :goto_3

    .line 20
    :cond_3
    sget-object v5, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->c:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    invoke-virtual {v0, v11, v8, v3}, Lcom/samsung/android/camera/core2/maker/MakerBase;->s1(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Ljava/lang/Integer;)Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    move-result-object v10

    invoke-static {v5, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->X:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    goto :goto_2

    :cond_4
    iget-object v5, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    :goto_2
    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object v5

    :goto_3
    iput-object v5, v0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->M1:Landroid/util/Size;

    const-string/jumbo v5, "takeProcessingPictureInternal - needRawCapture %b, needSeparatedCompCapture %b, needPreviewTarget %b, ResultPictureSize=%s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/16 v22, 0x0

    aput-object v10, v2, v22

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/16 v21, 0x1

    aput-object v10, v2, v21

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/16 v20, 0x2

    aput-object v10, v2, v20

    iget-object v10, v0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->M1:Landroid/util/Size;

    const/16 v19, 0x3

    aput-object v10, v2, v19

    .line 22
    invoke-static {v9, v5, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-static {v14, v15}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->l(II)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 24
    iget-object v2, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->e0:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    .line 25
    invoke-virtual {v12}, Lcom/samsung/android/camera/core2/CamCapability;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->f0:I

    .line 27
    invoke-virtual {v0, v11, v8, v3}, Lcom/samsung/android/camera/core2/maker/MakerBase;->s1(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Ljava/lang/Integer;)Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    move-result-object v10

    .line 28
    new-instance v5, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;

    iget v2, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->A0:I

    move-object/from16 v19, v3

    iget-object v3, v0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->M1:Landroid/util/Size;

    move/from16 v20, v6

    iget-object v6, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->l1:Ljava/util/concurrent/ConcurrentHashMap;

    move/from16 v23, v1

    iget-object v1, v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->M0:Landroid/util/Size;

    move/from16 v24, v23

    if-eqz v1, :cond_5

    const/16 v23, 0x1

    goto :goto_4

    :cond_5
    const/16 v23, 0x0

    :goto_4
    move-object v1, v5

    move-object/from16 v25, v19

    move v8, v4

    move-object/from16 v4, p2

    move/from16 v19, v8

    move-object v8, v5

    move-object/from16 v5, p1

    move-object/from16 v26, v13

    move/from16 v13, v20

    move/from16 v27, v7

    move/from16 v7, v23

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;-><init>(ILandroid/util/Size;Ljava/io/File;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Ljava/util/Map;Z)V

    .line 29
    invoke-virtual {v0, v8}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->a4(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;)V

    .line 30
    iget-object v1, v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->M0:Landroid/util/Size;

    if-eqz v1, :cond_6

    .line 31
    new-instance v1, Lcom/samsung/android/camera/core2/util/BasketCollector;

    invoke-interface {v8}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->getTotalProcessCount()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/util/BasketCollector;-><init>(I)V

    const/16 v2, 0x20

    .line 32
    iget-object v3, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->U:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/samsung/android/camera/core2/ExtraBundle;->B:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/camera/core2/util/BasketCollector;->i(IILcom/samsung/android/camera/core2/ExtraBundle$Key;I)V

    .line 33
    iget-object v2, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->m1:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v8}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_6
    invoke-interface {v8}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->getProcessType()Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;->POST_PROCESS:Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

    if-ne v1, v2, :cond_7

    if-eqz v18, :cond_7

    add-int/lit8 v14, v14, 0x1

    const-string/jumbo v1, "takeProcessingPictureInternal: add pic count of dsCondition to 0x%X"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 35
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v22, 0x0

    aput-object v3, v4, v22

    invoke-static {v9, v1, v4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    const/16 v22, 0x0

    .line 36
    :goto_5
    invoke-static {}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->i()Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;

    move-result-object v1

    .line 37
    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->x:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 38
    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->w:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v12}, Lcom/samsung/android/camera/core2/CamCapability;->h0()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 40
    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->v:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 41
    :cond_8
    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->p:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v4, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->f0:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 42
    invoke-interface {v8}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->getProcessType()Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

    move-result-object v3

    if-ne v3, v2, :cond_b

    .line 43
    invoke-virtual {v1, v13}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->g(Z)V

    const/4 v2, 0x1

    .line 44
    invoke-virtual {v1, v10, v11, v2}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->f(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Z)V

    .line 45
    iget-object v3, v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->K0:Landroid/util/Size;

    if-eqz v3, :cond_9

    move v3, v2

    goto :goto_6

    :cond_9
    move/from16 v3, v22

    :goto_6
    invoke-virtual {v1, v3}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->h(Z)V

    if-eqz v18, :cond_a

    .line 46
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->a()Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;

    move-result-object v3

    move-object/from16 v4, v26

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->b()V

    goto :goto_7

    :cond_a
    move-object/from16 v4, v26

    goto :goto_7

    :cond_b
    move-object/from16 v4, v26

    const/4 v2, 0x1

    .line 48
    :goto_7
    iget-object v3, v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->M0:Landroid/util/Size;

    if-eqz v3, :cond_c

    move v11, v2

    goto :goto_8

    :cond_c
    move/from16 v11, v22

    :goto_8
    invoke-virtual {v1, v11}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->d(Z)V

    move/from16 v2, v27

    .line 49
    invoke-virtual {v0, v12, v2}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->Y3(Lcom/samsung/android/camera/core2/CamCapability;I)Ljava/util/List;

    move-result-object v2

    move/from16 v5, v19

    move/from16 v3, v22

    :goto_9
    if-ge v3, v5, :cond_f

    .line 50
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    .line 51
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_d

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_a

    :cond_d
    move/from16 v6, v22

    .line 52
    :goto_a
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 53
    :cond_e
    invoke-virtual {v1, v13}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->g(Z)V

    .line 54
    sget-object v6, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;->b:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;

    move v7, v5

    move-object/from16 v9, v25

    move-object/from16 v5, p1

    invoke-virtual {v0, v6, v5, v9}, Lcom/samsung/android/camera/core2/maker/MakerBase;->s1(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Ljava/lang/Integer;)Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    move-result-object v10

    move/from16 v11, v24

    xor-int/lit8 v12, v11, 0x1

    invoke-virtual {v1, v10, v6, v12}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->f(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Z)V

    .line 55
    iget-object v6, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->W:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    new-instance v10, Lcom/samsung/android/camera/core2/maker/wk;

    invoke-direct {v10, v1, v11}, Lcom/samsung/android/camera/core2/maker/wk;-><init>(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;Z)V

    .line 56
    invoke-virtual {v6, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 57
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->a()Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->b()V

    add-int/lit8 v3, v3, 0x1

    move v5, v7

    move-object/from16 v25, v9

    goto :goto_9

    .line 59
    :cond_f
    :try_start_1
    iget-object v1, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->i1:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Lcom/samsung/android/camera/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    :try_start_2
    iget-object v2, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v4}, Lcom/samsung/android/camera/core2/CamDevice;->X(Ljava/util/List;)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->n1:I

    .line 61
    iput-object v8, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->o1:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;

    .line 62
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Lcom/samsung/android/camera/core2/exception/CamDeviceException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 63
    new-instance v1, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string/jumbo v2, "takeProcessingPictureInternal fail"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 64
    :cond_10
    new-instance v0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v1, "dynamicShotConditionForMultiPicture is invalid - wrong shot mode"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 65
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method protected w1(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 9

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    const-class v1, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->w1(Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 2
    sget-object v2, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j2:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v3, "initializeMaker E"

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x2

    :try_start_1
    new-array v4, v3, [Ljava/lang/Object;

    .line 5
    new-instance v5, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehInitParam;

    iget-object v6, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->e:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->B:Landroid/util/Size;

    iget-object v8, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->L0:Landroid/util/Size;

    invoke-direct {v5, v6, p1, v7, v8}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehInitParam;-><init>(Landroid/content/Context;Lcom/samsung/android/camera/core2/CamCapability;Landroid/util/Size;Landroid/util/Size;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->i2:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$NodeCallback;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v1, v4}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    iput-object v4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    new-array v4, v7, [Ljava/lang/Object;

    .line 6
    iget-object v5, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->f2:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    iput-object v4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->F1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    .line 7
    invoke-virtual {v4, v7, v7}, Lcom/samsung/android/camera/core2/node/Node;->initialize(ZZ)V

    new-array v4, v7, [Ljava/lang/Object;

    .line 8
    iget-object v5, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->g2:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->G1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    .line 9
    invoke-virtual {v0, v7, v7}, Lcom/samsung/android/camera/core2/node/Node;->initialize(ZZ)V

    .line 10
    new-instance v0, Lcom/samsung/android/camera/core2/node/SefNode;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->h2:Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;

    invoke-direct {v0, v4}, Lcom/samsung/android/camera/core2/node/SefNode;-><init>(Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->H1:Lcom/samsung/android/camera/core2/node/SefNode;

    .line 11
    invoke-virtual {v0, v7}, Lcom/samsung/android/camera/core2/node/Node;->initialize(Z)V

    .line 12
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->F1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/node/Node;->OUTPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$OutputPort;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    invoke-static {v0, v4}, Lcom/samsung/android/camera/core2/node/Node;->connectPort(Lcom/samsung/android/camera/core2/node/Node$OutputPort;Lcom/samsung/android/camera/core2/node/Node$InputPort;)V

    .line 13
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/node/Node;->OUTPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$OutputPort;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->u1:Lcom/samsung/android/camera/core2/node/WatermarkNode;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    invoke-static {v0, v4}, Lcom/samsung/android/camera/core2/node/Node;->connectPort(Lcom/samsung/android/camera/core2/node/Node$OutputPort;Lcom/samsung/android/camera/core2/node/Node$InputPort;)V

    .line 14
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->u1:Lcom/samsung/android/camera/core2/node/WatermarkNode;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/node/Node;->OUTPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$OutputPort;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->G1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    invoke-static {v0, v4}, Lcom/samsung/android/camera/core2/node/Node;->connectPort(Lcom/samsung/android/camera/core2/node/Node$OutputPort;Lcom/samsung/android/camera/core2/node/Node$InputPort;)V

    .line 15
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->G1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/node/Node;->OUTPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$OutputPort;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->c2:Lcom/samsung/android/camera/core2/node/Node$OutputPort$PortDataCallback;

    invoke-static {v0, v4}, Lcom/samsung/android/camera/core2/node/Node;->setOutputPortDataCallback(Lcom/samsung/android/camera/core2/node/Node$OutputPort;Lcom/samsung/android/camera/core2/node/Node$OutputPort$PortDataCallback;)V

    .line 16
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->H1:Lcom/samsung/android/camera/core2/node/SefNode;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/node/Node;->OUTPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$OutputPort;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->d2:Lcom/samsung/android/camera/core2/node/Node$OutputPort$PortDataCallback;

    invoke-static {v0, v4}, Lcom/samsung/android/camera/core2/node/Node;->setOutputPortDataCallback(Lcom/samsung/android/camera/core2/node/Node$OutputPort;Lcom/samsung/android/camera/core2/node/Node$OutputPort$PortDataCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 18
    invoke-virtual {p0, v7}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->V2(Z)V

    .line 19
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->J0:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager;

    sget-object v4, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->C:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    invoke-virtual {v0, v4, v7}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager;->e(Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)Z

    .line 20
    new-instance v0, Lcom/samsung/android/camera/core2/node/NodeChain;

    new-instance v4, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$8;

    sget-object v5, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PREVIEW:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-direct {v4, p0, v7, v5}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$8;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;ILcom/samsung/android/camera/core2/node/Node$PortType;)V

    invoke-direct {v0, v4}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->J1:Lcom/samsung/android/camera/core2/node/NodeChain;

    .line 21
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I1:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    invoke-virtual {v0, v4, v1, v5}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    .line 22
    new-instance v0, Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->B:Landroid/util/Size;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->e2:Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode$NodeCallback;

    invoke-direct {v0, v1, p1, v4}, Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;-><init>(Landroid/util/Size;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode$NodeCallback;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->E1:Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;

    .line 23
    new-instance p1, Lcom/samsung/android/camera/core2/node/NodeChain;

    new-instance v0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$9;

    sget-object v1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_BACKGROUND_PREVIEW:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-direct {v0, p0, v3, v1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$9;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;ILcom/samsung/android/camera/core2/node/Node$PortType;)V

    invoke-direct {p1, v0}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    .line 24
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->E1:Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;

    const-class v3, Lcom/samsung/android/camera/core2/node/palm/ArcPalmNode;

    invoke-virtual {p1, v0, v3, v1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    .line 25
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->B:Landroid/util/Size;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain;Landroid/util/Size;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->K1:Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string p0, "initializeMaker X"

    .line 27
    invoke-static {v2, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 28
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 29
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 30
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 31
    throw p1
.end method
