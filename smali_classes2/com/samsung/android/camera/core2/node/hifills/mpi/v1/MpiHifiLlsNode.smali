.class public Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;
.super Lcom/samsung/android/camera/core2/node/hifills/HifiLlsNodeBase;
.source "MpiHifiLlsNode.java"


# static fields
.field private static final MPI_HIFI_LLS_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private static final NATIVE_CALLBACK_DEBUG_INFO:I = 0x2

.field private static final NATIVE_CALLBACK_PROGRESS:I = 0x1

.field private static final NATIVE_COMMAND_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_MAKE_HIFILLS:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Lcom/samsung/android/camera/core2/util/DirectBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_PREPARE_CAPTURE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_EXTRA_CAPTURE_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_FACE_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_INPUT_DATA:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvailableFlipMode:Z

.field private mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

.field private mCaptureType:I

.field private mDebugInfo:[B

.field private mLastBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

.field private mLensFacing:I

.field private final mNodeCallback:Lcom/samsung/android/camera/core2/node/hifills/HifiLlsNodeBase$NodeCallback;

.field private mResultSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v0, Ljava/lang/Integer;

    new-instance v1, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "V1/MpiHifiLlsNode"

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->MPI_HIFI_LLS_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode$1;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const/16 v6, 0x64

    invoke-direct {v1, v6, v3}, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode$1;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->NATIVE_COMMAND_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 3
    new-instance v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode$2;

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v0, v6, v4

    aput-object v0, v6, v5

    const-class v0, Landroid/util/Size;

    aput-object v0, v6, v2

    const/16 v0, 0x65

    invoke-direct {v1, v0, v6}, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode$2;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->NATIVE_COMMAND_PREPARE_CAPTURE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 4
    new-instance v0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode$3;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v6, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo;

    aput-object v6, v1, v4

    const/16 v6, 0x66

    invoke-direct {v0, v6, v1}, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode$3;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->NATIVE_COMMAND_SET_EXTRA_CAPTURE_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 5
    new-instance v0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode$4;

    new-array v1, v3, [Ljava/lang/Class;

    const-class v3, [Landroid/graphics/Rect;

    aput-object v3, v1, v4

    const-class v3, Landroid/graphics/Rect;

    aput-object v3, v1, v5

    const-class v3, Landroid/graphics/Rect;

    aput-object v3, v1, v2

    const/16 v3, 0x67

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode$4;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->NATIVE_COMMAND_SET_FACE_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 6
    new-instance v0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode$5;

    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    aput-object v2, v1, v4

    const-class v2, Landroid/graphics/Rect;

    aput-object v2, v1, v5

    const/16 v2, 0x68

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode$5;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->NATIVE_COMMAND_SET_INPUT_DATA:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 7
    new-instance v0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode$6;

    new-array v1, v4, [Ljava/lang/Class;

    const/16 v2, 0x69

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode$6;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->NATIVE_COMMAND_MAKE_HIFILLS:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;Lcom/samsung/android/camera/core2/node/hifills/HifiLlsNodeBase$NodeCallback;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->MPI_HIFI_LLS_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const v1, 0x19f104

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/camera/core2/node/hifills/HifiLlsNodeBase;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mDebugInfo:[B

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/Node;->mNativeCallbacks:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode$7;-><init>(Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/Node;->mNativeCallbacks:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode$8;-><init>(Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callback"

    .line 5
    invoke-static {p2, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;->a()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->J1()[I

    move-result-object v0

    array-length v0, v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mAvailableFlipMode:Z

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;->a()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->n()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mLensFacing:I

    .line 9
    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/hifills/HifiLlsNodeBase$NodeCallback;

    return-void
.end method

.method public static synthetic k(Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->lambda$processPictureYuv$0(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method

.method static bridge synthetic l(Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;)[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mDebugInfo:[B

    return-object p0
.end method

.method private synthetic lambda$processPictureYuv$0(Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mResultSize:Landroid/util/Size;

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->x(Landroid/util/Size;)V

    .line 2
    iget v0, p0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mCaptureType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/samsung/android/camera/core2/util/StrideInfo;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mResultSize:Landroid/util/Size;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->z(Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    :cond_0
    return-void
.end method

.method static bridge synthetic m(Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;)Lcom/samsung/android/camera/core2/ExtraBundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mLastBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;)Lcom/samsung/android/camera/core2/node/hifills/HifiLlsNodeBase$NodeCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/hifills/HifiLlsNodeBase$NodeCallback;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;[B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mDebugInfo:[B

    return-void
.end method

.method static bridge synthetic p()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->MPI_HIFI_LLS_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object v0
.end method

.method private prepareCapture(IILandroid/util/Size;)I
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->MPI_HIFI_LLS_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareCapture: maxInputNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dynamicConditionMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WARNING] prepareCapture: dynamicConditionMode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") is not supported."

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const/16 p2, 0xf

    goto :goto_1

    :pswitch_1
    move p2, v1

    goto :goto_1

    :pswitch_2
    const/16 p2, 0xb

    goto :goto_1

    :goto_0
    :pswitch_3
    move p2, v2

    .line 3
    :goto_1
    sget-object v0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->NATIVE_COMMAND_PREPARE_CAPTURE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onInitialized(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "*>;[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->NATIVE_COMMAND_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mLensFacing:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/node/Node;->onInitialized(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->MPI_HIFI_LLS_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v3, "processPictureYuv E"

    invoke-static {v0, v3}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 2
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Landroid/hardware/camera2/TotalCaptureResult;

    .line 4
    iget-object v6, v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/CamCapability;->E0()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5
    sget-object v6, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->f2:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v5, v6}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v6, v3

    .line 6
    :goto_0
    iget-object v7, v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v7, v6}, Lcom/samsung/android/camera/core2/CamCapability;->c2(Ljava/lang/Integer;)Landroid/graphics/Rect;

    move-result-object v6

    .line 7
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v7

    check-cast v8, Landroid/util/Size;

    .line 8
    sget-object v8, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->R1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v5, v8}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 9
    invoke-static {v8}, Lcom/samsung/android/camera/core2/util/ImageUtils;->isInvalidRect(Landroid/graphics/Rect;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    const-string v8, "processPictureYuv: Valid Image Region is null or invalid. so, it made by input picture size."

    .line 10
    invoke-static {v0, v8}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 11
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-direct {v8, v10, v10, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_1
    const-string v9, "processPictureYuv: Current Count=%d/%d, Picture Size=%s, Valid Image Region=%s"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getCurrentCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getMaxInputCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x2

    aput-object v7, v11, v12

    const/4 v14, 0x3

    aput-object v8, v11, v14

    .line 13
    invoke-static {v0, v9, v11}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getCurrentCount()I

    move-result v9

    if-ne v9, v13, :cond_5

    .line 15
    sget-object v9, Lcom/samsung/android/camera/core2/ExtraBundle;->b:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {v2, v9}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/camera/core2/CamCapability;

    iput-object v9, v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 16
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v11

    if-ne v9, v11, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v11

    if-ne v9, v11, :cond_2

    .line 17
    iput v10, v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mCaptureType:I

    goto :goto_1

    .line 18
    :cond_2
    iput v13, v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mCaptureType:I

    .line 19
    :goto_1
    sget-object v9, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->Q:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v5, v9}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v9

    .line 20
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v11, "processPictureYuv: dsExtraInfo=0x%X"

    new-array v15, v13, [Ljava/lang/Object;

    .line 21
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v10

    invoke-static {v0, v11, v15}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-static {v9}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->e(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 23
    new-instance v7, Landroid/util/Size;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-direct {v7, v9, v11}, Landroid/util/Size;-><init>(II)V

    iput-object v7, v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mResultSize:Landroid/util/Size;

    .line 24
    iput v12, v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mCaptureType:I

    goto :goto_2

    .line 25
    :cond_3
    iput-object v7, v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mResultSize:Landroid/util/Size;

    .line 26
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getMaxInputCount()I

    move-result v7

    sget-object v9, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->R:Landroid/hardware/camera2/CaptureResult$Key;

    .line 27
    invoke-static {v5, v9}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-static {v9}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->h(Ljava/lang/Integer;)I

    move-result v9

    iget-object v11, v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mResultSize:Landroid/util/Size;

    .line 28
    invoke-direct {v1, v7, v9, v11}, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->prepareCapture(IILandroid/util/Size;)I

    move-result v7

    if-eqz v7, :cond_4

    const-string v4, "processPictureYuv X: failed to prepare capture"

    .line 29
    invoke-static {v0, v4}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 30
    iget-object v0, v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/hifills/HifiLlsNodeBase$NodeCallback;

    invoke-interface {v0, v2}, Lcom/samsung/android/camera/core2/node/hifills/HifiLlsNodeBase$NodeCallback;->onError(Lcom/samsung/android/camera/core2/ExtraBundle;)V

    return-object v3

    .line 31
    :cond_4
    new-instance v7, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    invoke-direct {v7, v0, v5, v2}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;-><init>(Lcom/samsung/android/camera/core2/util/CLog$Tag;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    iget v9, v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mCaptureType:I

    .line 32
    invoke-virtual {v7, v9}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->v(I)Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v7

    .line 33
    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->K()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v7

    .line 34
    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->W()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v7

    .line 35
    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->q()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v7

    .line 36
    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->D()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v7

    .line 37
    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->V()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v7

    .line 38
    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->X()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v7

    .line 39
    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->F()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v7

    .line 40
    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->M()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v7

    .line 41
    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->Q()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v7

    .line 42
    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->T()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v7

    .line 43
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->U(Lcom/samsung/android/camera/core2/util/StrideInfo;)Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v4

    .line 44
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->h()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo;

    move-result-object v4

    .line 45
    sget-object v7, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->NATIVE_COMMAND_SET_EXTRA_CAPTURE_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v4, v9, v10

    invoke-virtual {v1, v7, v9}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_5
    invoke-virtual {v1, v6, v5}, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->setFaceInfo(Landroid/graphics/Rect;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 47
    iput-object v2, v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mLastBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 48
    sget-object v4, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->NATIVE_COMMAND_SET_INPUT_DATA:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v6, v12, [Ljava/lang/Object;

    aput-object p1, v6, v10

    aput-object v8, v6, v13

    invoke-virtual {v1, v4, v6}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "processPictureYuv X: failed to set input data"

    .line 49
    invoke-static {v0, v4}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 50
    iget-object v0, v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/hifills/HifiLlsNodeBase$NodeCallback;

    invoke-interface {v0, v2}, Lcom/samsung/android/camera/core2/node/hifills/HifiLlsNodeBase$NodeCallback;->onError(Lcom/samsung/android/camera/core2/ExtraBundle;)V
    :try_end_0
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 51
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->isMaxInputCount()Z

    move-result v4

    const-string v6, "processPictureYuv X"

    if-eqz v4, :cond_8

    .line 52
    sget-object v4, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->NATIVE_COMMAND_MAKE_HIFILLS:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v7}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-nez v4, :cond_7

    const-string v4, "processPictureYuv X: failed to make hifi lls"

    .line 53
    invoke-static {v0, v4}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 54
    iget-object v0, v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/hifills/HifiLlsNodeBase$NodeCallback;

    invoke-interface {v0, v2}, Lcom/samsung/android/camera/core2/node/hifills/HifiLlsNodeBase$NodeCallback;->onError(Lcom/samsung/android/camera/core2/ExtraBundle;)V

    return-object v3

    .line 55
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v3

    new-instance v7, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/a;

    invoke-direct {v7, v1}, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/a;-><init>(Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;)V

    invoke-static {v3, v7}, Lcom/samsung/android/camera/core2/util/ImageInfo;->f(Lcom/samsung/android/camera/core2/util/ImageInfo;Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v3

    .line 56
    sget-object v7, Lcom/samsung/android/camera/core2/ExtraBundle;->s:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    iget v8, v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mCaptureType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    new-array v2, v14, [Ljava/lang/Object;

    .line 57
    iget v7, v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mCaptureType:I

    .line 58
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v10

    iget-object v7, v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mResultSize:Landroid/util/Size;

    aput-object v7, v2, v13

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v7

    aput-object v7, v2, v12

    const-string v7, "processPictureYuv: CaptureType %d, ResultSize %s, StrideInfo %s"

    .line 59
    invoke-static {v0, v7, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-static {v4, v3}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->k(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/android/camera/core2/util/ImageInfo;->r(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 62
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v3

    iget-object v1, v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mDebugInfo:[B

    invoke-virtual {v3, v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->s([B)V

    .line 63
    invoke-static {v0, v6}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v2

    .line 64
    :cond_8
    invoke-static {v0, v6}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v3

    :catch_0
    move-exception v0

    .line 65
    sget-object v4, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->MPI_HIFI_LLS_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPictureYuv X: fail - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 66
    iget-object v0, v1, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/hifills/HifiLlsNodeBase$NodeCallback;

    invoke-interface {v0, v2}, Lcom/samsung/android/camera/core2/node/hifills/HifiLlsNodeBase$NodeCallback;->onError(Lcom/samsung/android/camera/core2/ExtraBundle;)V

    return-object v3
.end method

.method public reconfigure(Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->reconfigure(Ljava/lang/Object;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->MPI_HIFI_LLS_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "reconfigure - %s"

    invoke-static {v0, v4, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;->a()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->J1()[I

    move-result-object v0

    array-length v0, v0

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mAvailableFlipMode:Z

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;->a()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->n()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mLensFacing:I

    .line 7
    sget-object v0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->NATIVE_COMMAND_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFaceInfo(Landroid/graphics/Rect;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->MPI_HIFI_LLS_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "setFaceInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p2, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    if-nez v1, :cond_0

    const-string p0, "setFaceInfo: faces is null"

    .line 3
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->mAvailableFlipMode:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 5
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->O1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p2, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 7
    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v4

    .line 8
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFaceInfo:  face num = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 9
    array-length v0, v1

    new-array v5, v0, [Landroid/graphics/Rect;

    move v6, v4

    :goto_1
    if-ge v6, v0, :cond_3

    .line 10
    aget-object v7, v1, v6

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    aput-object v7, v5, v6

    if-eqz v2, :cond_2

    .line 11
    aget-object v7, v5, v6

    new-instance v8, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    invoke-static {v7, v8}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->k(Landroid/graphics/Rect;Landroid/util/Size;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 12
    :cond_3
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->P1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p2, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 13
    invoke-static {p2, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    .line 14
    sget-object v0, Lcom/samsung/android/camera/core2/node/hifills/mpi/v1/MpiHifiLlsNode;->NATIVE_COMMAND_SET_FACE_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v4

    aput-object p2, v1, v3

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
