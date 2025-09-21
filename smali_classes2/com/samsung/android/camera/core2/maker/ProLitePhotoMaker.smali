.class Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;
.super Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;
.source "ProLitePhotoMaker.java"


# static fields
.field private static final p1:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private i1:Lcom/samsung/android/camera/core2/node/NodeChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private j1:Lcom/samsung/android/camera/core2/node/NodeChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private k1:Lcom/samsung/android/camera/core2/container/WatermarkInfo;

.field private l1:Z

.field private final m1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

.field private final n1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

.field private final o1:Lcom/samsung/android/camera/core2/node/WatermarkNode$NodeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "ProLitePhotoMaker"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->p1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$1;-><init>(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    .line 3
    new-instance p1, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$2;-><init>(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->n1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    .line 4
    new-instance p1, Lcom/samsung/android/camera/core2/maker/xf;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/xf;-><init>(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->o1:Lcom/samsung/android/camera/core2/node/WatermarkNode$NodeCallback;

    const/16 p1, 0x23

    .line 5
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->o0:I

    const/16 p2, 0x100

    .line 6
    iput p2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->q0:I

    .line 7
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->r0:I

    .line 8
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->N0:I

    .line 9
    new-instance p1, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;-><init>(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->c1:Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;

    return-void
.end method

.method public static synthetic I3(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->b4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic J3(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->c4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic K3()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->Z3()V

    return-void
.end method

.method public static synthetic L3(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->Y3(I)V

    return-void
.end method

.method public static synthetic M3(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->a4(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    return-void
.end method

.method public static synthetic N3(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->d4()V

    return-void
.end method

.method static bridge synthetic O3(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->l1:Z

    return p0
.end method

.method static bridge synthetic P3(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/NodeChain;

    return-object p0
.end method

.method static bridge synthetic Q3(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->l1:Z

    return-void
.end method

.method static bridge synthetic R3(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->U3(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    return-void
.end method

.method static bridge synthetic S3(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->V3(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    return-void
.end method

.method static bridge synthetic T3()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->p1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object v0
.end method

.method private U3(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->k1:Lcom/samsung/android/camera/core2/container/WatermarkInfo;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/ExtraBundle;->W:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0, v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/NodeChain;

    const-class p3, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    invoke-virtual {p0, p3}, Lcom/samsung/android/camera/core2/node/NodeChain;->h(Ljava/lang/Class;)Lcom/samsung/android/camera/core2/node/Node;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    .line 5
    new-instance p3, Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    invoke-direct {p3, p2, p1}, Lcom/samsung/android/camera/core2/container/CompressConfiguration;-><init>(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;->setCompressConfiguration(Lcom/samsung/android/camera/core2/container/CompressConfiguration;)V

    :cond_1
    return-void
.end method

.method private V3(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->k1:Lcom/samsung/android/camera/core2/container/WatermarkInfo;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->Y:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p3, v1, v0}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/NodeChain;

    const-class p3, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    invoke-virtual {p0, p3}, Lcom/samsung/android/camera/core2/node/NodeChain;->h(Ljava/lang/Class;)Lcom/samsung/android/camera/core2/node/Node;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    .line 5
    new-instance p3, Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    invoke-direct {p3, p2, p1}, Lcom/samsung/android/camera/core2/container/CompressConfiguration;-><init>(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;->setCompressConfiguration(Lcom/samsung/android/camera/core2/container/CompressConfiguration;)V

    :cond_1
    return-void
.end method

.method private W3(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 5
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
    const-class p1, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    new-instance v0, Lcom/samsung/android/camera/core2/node/NodeChain;

    new-instance v1, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$4;

    sget-object v2, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$4;-><init>(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;ILcom/samsung/android/camera/core2/node/Node$PortType;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    aput-object v4, v1, v3

    invoke-static {p1, v1}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    .line 3
    new-instance v3, Lcom/samsung/android/camera/core2/node/NonDestructionNode;

    sget-object v4, Lcom/samsung/android/camera/core2/maker/vf;->a:Lcom/samsung/android/camera/core2/maker/vf;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->e:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/samsung/android/camera/core2/node/NonDestructionNode;-><init>(Lcom/samsung/android/camera/core2/node/NonDestructionNode$NodeCallback;Landroid/content/Context;)V

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    .line 5
    const-class p0, Lcom/samsung/android/camera/core2/node/NonDestructionNode;

    invoke-virtual {v0, v3, p0, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v0
.end method

.method private X3(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
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

    new-instance v2, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$5;

    sget-object v3, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v3}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$5;-><init>(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;ILcom/samsung/android/camera/core2/node/Node$PortType;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    .line 2
    new-instance v2, Lcom/samsung/android/camera/core2/node/WatermarkNode;

    new-instance v5, Lcom/samsung/android/camera/core2/node/WatermarkNode$WatermarkInitParam;

    invoke-direct {v5, p1}, Lcom/samsung/android/camera/core2/node/WatermarkNode$WatermarkInitParam;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->o1:Lcom/samsung/android/camera/core2/node/WatermarkNode$NodeCallback;

    invoke-direct {v2, v5, p1}, Lcom/samsung/android/camera/core2/node/WatermarkNode;-><init>(Lcom/samsung/android/camera/core2/node/WatermarkNode$WatermarkInitParam;Lcom/samsung/android/camera/core2/node/WatermarkNode$NodeCallback;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    iget-object v5, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->n1:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    aput-object v5, p1, v4

    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    .line 4
    new-instance v4, Lcom/samsung/android/camera/core2/node/SefNode;

    sget-object v5, Lcom/samsung/android/camera/core2/maker/wf;->a:Lcom/samsung/android/camera/core2/maker/wf;

    invoke-direct {v4, v5}, Lcom/samsung/android/camera/core2/node/SefNode;-><init>(Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;)V

    .line 5
    const-class v5, Lcom/samsung/android/camera/core2/node/WatermarkNode;

    invoke-virtual {v1, v2, v5, v3}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    .line 6
    invoke-virtual {v1, p1, v0, v3}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    .line 7
    const-class p1, Lcom/samsung/android/camera/core2/node/SefNode;

    invoke-virtual {v1, v4, p1, v3}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    .line 8
    iget-object p1, v4, Lcom/samsung/android/camera/core2/node/Node;->OUTPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$OutputPort;

    new-instance v0, Lcom/samsung/android/camera/core2/maker/uf;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/maker/uf;-><init>(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;)V

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/node/Node;->setOutputPortDataCallback(Lcom/samsung/android/camera/core2/node/Node$OutputPort;Lcom/samsung/android/camera/core2/node/Node$OutputPort$PortDataCallback;)V

    return-object v1
.end method

.method private static synthetic Y3(I)V
    .locals 1

    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v0, "NonDestructionNode.NodeCallback throws Error"

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic Z3()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v1, "SefNode.NodeCallback throws Error"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic a4(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->p1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p2, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private synthetic b4(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/NodeChain;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/node/NodeChain;->k(Z)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->k(Z)V

    return-void
.end method

.method private synthetic c4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/NodeChain;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->f(Z)V

    return-void
.end method

.method private synthetic d4()V
    .locals 3

    sget-object v0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->p1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method


# virtual methods
.method protected B3(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->p1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "releaseMaker"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/NodeChain;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->u()V

    .line 5
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/NodeChain;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/NodeChain;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->u()V

    .line 8
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/NodeChain;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 10
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->B3(Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 12
    throw p1
.end method

.method public C()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public declared-synchronized T0(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Lcom/samsung/android/camera/core2/container/WatermarkInfo;)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->p1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v1, "takePicture - dynamicShotInfo %s runningPhysicalId %s DFovStreamType %s, watermarkInfo %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->e0:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v4, 0x2

    iget-object v6, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->g0:Ljava/lang/Integer;

    aput-object v6, v2, v4

    const/4 v4, 0x3

    aput-object p2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->e0:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamCapability;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->f0:I

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->h1()Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->f:Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->a(Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    .line 4
    iput-boolean v3, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->l1:Z

    .line 5
    iput-object p2, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->k1:Lcom/samsung/android/camera/core2/container/WatermarkInfo;

    .line 6
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->f2()Landroid/util/Range;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 8
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->H0:Lcom/samsung/android/camera/core2/util/BlockingReference;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/BlockingReference;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v1, v6

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->G0()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iput-boolean v5, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->l1:Z

    .line 11
    :cond_0
    invoke-static {}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->i()Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->i0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->x:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 14
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->w:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->h0()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 16
    sget-object p2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->v:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 17
    :cond_1
    sget-object p2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->p:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->f0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->d(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->g(Z)V

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->m()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->k1:Lcom/samsung/android/camera/core2/container/WatermarkInfo;

    if-eqz p1, :cond_3

    .line 20
    sget-object p1, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->f:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-virtual {v0, p1, v5}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->e(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Z)V

    goto :goto_0

    .line 21
    :cond_3
    sget-object p1, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->d:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-virtual {v0, p1, v5}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->e(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Z)V

    .line 22
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->K0:Landroid/util/Size;

    if-eqz p1, :cond_4

    move v3, v5

    :cond_4
    invoke-virtual {v0, v3}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->h(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->a()Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/core2/CamDevice;->Y(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;)V
    :try_end_1
    .catch Lcom/samsung/android/camera/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 25
    :try_start_2
    new-instance p2, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string/jumbo v0, "takePicture fail"

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized U()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->p1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "cancelTakePicture"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->h1()Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->f:Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->a(Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->l1:Z

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/CamDevice$CaptureState;->b:Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamDevice;->p()Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamDevice;->A()I
    :try_end_1
    .catch Lcom/samsung/android/camera/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 7
    :try_start_2
    new-instance v1, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v2, "cancelTakePicture fail"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "camDevice is not in CAPTURING state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->Q:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/be;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/be;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->R:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/ce;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/ce;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
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
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->Q:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/yf;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/yf;-><init>(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->R:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/zf;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/zf;-><init>(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    return-object p0
.end method

.method protected q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->p1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object p0
.end method

.method protected w1(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->p1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "initializeMaker E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->W3(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/NodeChain;

    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->X3(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/NodeChain;

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {v1, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->d(Lcom/samsung/android/camera/core2/node/NodeChain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string p0, "initializeMaker X"

    .line 7
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 9
    throw p1
.end method
