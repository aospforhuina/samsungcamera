.class public Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;
.super Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase;
.source "SecUdcNode.java"


# static fields
.field private static final NATIVE_CALLBACK_PROGRESS:I = 0x2

.field private static final NATIVE_COMMAND_GET_DEBUG_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_PREPARE_CAPTURE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_PROCESS_MULTI_RAW_UDC:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_PROCESS_SINGLE_YUV_UDC:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_COLOR_FILTER_ARRANGEMENT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_EXTRA_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_FLIP_MODE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_REFERENCE_EV:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEC_UDC_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private mAvailableFlipMode:Z

.field private mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

.field private mLastBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

.field private mLensFacing:I

.field private final mNodeCallback:Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$NodeCallback;

.field private mOutputBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

.field private mOutputBufferSize:Landroid/util/Size;

.field private final mRestorationType:Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$RestorationType;

.field private mResultCaptureSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    const-class v1, Ljava/lang/Integer;

    new-instance v2, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v3, "V1/SecUdcNode"

    invoke-direct {v2, v3}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->SEC_UDC_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    new-instance v2, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$1;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v6, 0x1

    aput-object v1, v4, v6

    const/16 v7, 0x64

    invoke-direct {v2, v7, v4}, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$1;-><init>(I[Ljava/lang/Class;)V

    sput-object v2, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->NATIVE_COMMAND_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 3
    new-instance v2, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$2;

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/Class;

    aput-object v1, v7, v5

    const-class v8, [Landroid/util/Size;

    aput-object v8, v7, v6

    const-class v8, Ljava/lang/Boolean;

    aput-object v8, v7, v3

    const/16 v8, 0x65

    invoke-direct {v2, v8, v7}, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$2;-><init>(I[Ljava/lang/Class;)V

    sput-object v2, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->NATIVE_COMMAND_PREPARE_CAPTURE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 4
    new-instance v2, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$3;

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v1, v7, v5

    const/16 v8, 0x67

    invoke-direct {v2, v8, v7}, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$3;-><init>(I[Ljava/lang/Class;)V

    sput-object v2, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->NATIVE_COMMAND_SET_COLOR_FILTER_ARRANGEMENT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 5
    new-instance v2, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$4;

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, [Landroid/hardware/camera2/params/Face;

    aput-object v8, v7, v5

    aput-object v1, v7, v6

    aput-object v1, v7, v3

    const/16 v8, 0x68

    invoke-direct {v2, v8, v7}, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$4;-><init>(I[Ljava/lang/Class;)V

    sput-object v2, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->NATIVE_COMMAND_SET_EXTRA_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 6
    new-instance v2, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$5;

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v0, v4, v5

    const-class v7, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo;

    aput-object v7, v4, v6

    aput-object v0, v4, v3

    const/16 v7, 0x69

    invoke-direct {v2, v7, v4}, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$5;-><init>(I[Ljava/lang/Class;)V

    sput-object v2, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->NATIVE_COMMAND_PROCESS_MULTI_RAW_UDC:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 7
    new-instance v2, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$6;

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v1, v4, v5

    const/16 v7, 0x6a

    invoke-direct {v2, v7, v4}, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$6;-><init>(I[Ljava/lang/Class;)V

    sput-object v2, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->NATIVE_COMMAND_SET_FLIP_MODE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 8
    new-instance v2, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$7;

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v1, v4, v5

    const/16 v1, 0x6b

    invoke-direct {v2, v1, v4}, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$7;-><init>(I[Ljava/lang/Class;)V

    sput-object v2, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->NATIVE_COMMAND_SET_REFERENCE_EV:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 9
    new-instance v1, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$8;

    new-array v2, v5, [Ljava/lang/Class;

    const/16 v4, 0x6c

    invoke-direct {v1, v4, v2}, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$8;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->NATIVE_COMMAND_GET_DEBUG_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 10
    new-instance v1, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$9;

    new-array v2, v3, [Ljava/lang/Class;

    const-class v3, Lcom/samsung/android/camera/core2/util/BufferInfo;

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    const/16 v0, 0x6d

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$9;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->NATIVE_COMMAND_PROCESS_SINGLE_YUV_UDC:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$SecUdcInitParam;Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$NodeCallback;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->SEC_UDC_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const v1, 0x3e9004

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/Node;->mNativeCallbacks:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$10;

    invoke-direct {v4, p0}, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode$10;-><init>(Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "callback"

    .line 3
    invoke-static {p2, v1}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$SecUdcInitParam;->a()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$SecUdcInitParam;->b()Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$RestorationType;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mRestorationType:Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$RestorationType;

    .line 6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamCapability;->n()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mLensFacing:I

    .line 7
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamCapability;->J1()[I

    move-result-object v1

    array-length v1, v1

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mAvailableFlipMode:Z

    .line 8
    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$NodeCallback;

    new-array p0, v2, [Ljava/lang/Object;

    aput-object p1, p0, v3

    const-string p1, "SecUdcNode - RestorationType = %s"

    .line 9
    invoke-static {v0, p1, p0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic k(Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->lambda$processPictureMultiRaw$2(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method

.method public static synthetic l(Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->lambda$processPictureMultiRaw$1(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$processPictureMultiRaw$0(Ljava/lang/Integer;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->NATIVE_COMMAND_SET_FLIP_MODE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$processPictureMultiRaw$1(Ljava/lang/Integer;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->NATIVE_COMMAND_SET_REFERENCE_EV:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$processPictureMultiRaw$2(Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/StrideInfo;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mResultCaptureSize:Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->z(Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mResultCaptureSize:Landroid/util/Size;

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->x(Landroid/util/Size;)V

    const/16 v0, 0x23

    .line 3
    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->t(I)V

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->NATIVE_COMMAND_GET_DEBUG_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->s([B)V

    return-void
.end method

.method public static synthetic m(Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->lambda$processPictureMultiRaw$0(Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic n(Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;)Lcom/samsung/android/camera/core2/ExtraBundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mLastBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;)Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$NodeCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$NodeCallback;

    return-object p0
.end method

.method private processPictureMultiRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Landroid/hardware/camera2/TotalCaptureResult;

    .line 3
    iput-object v1, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mLastBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    const/4 v4, 0x0

    .line 4
    :try_start_0
    sget-object v5, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->SEC_UDC_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v6, "processPictureMultiRaw E : Current Count = %d/%d, Picture Size = %s"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getCurrentCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getMaxInputCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v8, v12

    .line 6
    invoke-static {v5, v6, v8}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getCurrentCount()I

    move-result v6

    if-ne v6, v11, :cond_5

    .line 8
    sget-object v6, Lcom/samsung/android/camera/core2/ExtraBundle;->e:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {v1, v6}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    .line 9
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    iput-object v6, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mResultCaptureSize:Landroid/util/Size;

    const-string v6, "processPictureMultiRaw : 1st capture"

    .line 10
    invoke-static {v5, v6}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 11
    iget-object v6, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mOutputBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-eqz v6, :cond_0

    iget-object v8, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mOutputBufferSize:Landroid/util/Size;

    iget-object v9, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mResultCaptureSize:Landroid/util/Size;

    if-eq v8, v9, :cond_2

    :cond_0
    if-eqz v6, :cond_1

    .line 12
    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->release()V

    .line 13
    :cond_1
    iget-object v6, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mResultCaptureSize:Landroid/util/Size;

    invoke-static {v6}, Lcom/samsung/android/camera/core2/util/ImageUtils;->getNV21BufferSize(Landroid/util/Size;)I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->allocate(I)Lcom/samsung/android/camera/core2/util/DirectBuffer;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mOutputBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processPictureMultiRaw: allocated("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mResultCaptureSize:Landroid/util/Size;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mOutputBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-virtual {v8}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 15
    iget-object v6, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mResultCaptureSize:Landroid/util/Size;

    iput-object v6, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mOutputBufferSize:Landroid/util/Size;

    .line 16
    :cond_2
    iget-object v6, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mOutputBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/util/BufferBase;->clear()V

    .line 17
    iget-boolean v6, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mAvailableFlipMode:Z

    if-eqz v6, :cond_3

    .line 18
    sget-object v6, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->O1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v6}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    new-instance v8, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/c;

    invoke-direct {v8, v0}, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/c;-><init>(Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;)V

    .line 19
    invoke-virtual {v6, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 20
    :cond_3
    sget-object v6, Lcom/samsung/android/camera/core2/ExtraBundle;->n:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {v1, v6}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    new-instance v8, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/b;

    invoke-direct {v8, v0}, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/b;-><init>(Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;)V

    .line 21
    invoke-virtual {v6, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 22
    sget-object v6, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->R:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v6}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->h(Ljava/lang/Integer;)I

    move-result v6

    const-string v8, "processPictureMultiRaw:dsMode = 0x%X "

    new-array v9, v11, [Ljava/lang/Object;

    .line 23
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v10

    invoke-static {v5, v8, v9}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    sget-object v8, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->NATIVE_COMMAND_PREPARE_CAPTURE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getMaxInputCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v10

    new-array v13, v12, [Landroid/util/Size;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v14

    aput-object v14, v13, v10

    iget-object v14, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mResultCaptureSize:Landroid/util/Size;

    aput-object v14, v13, v11

    aput-object v13, v9, v11

    const/16 v13, 0x8d

    if-ne v6, v13, :cond_4

    move v6, v11

    goto :goto_0

    :cond_4
    move v6, v10

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v9, v12

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_5
    sget-object v6, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->Z0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v6}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 26
    iget-object v8, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v8, v6}, Lcom/samsung/android/camera/core2/CamCapability;->e2(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processPictureMultiRaw: colorFilterArrangement = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    if-eqz v6, :cond_6

    .line 28
    sget-object v8, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->NATIVE_COMMAND_SET_COLOR_FILTER_ARRANGEMENT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v6, v9, v10

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_6
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v6}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 30
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v8}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/hardware/camera2/params/Face;

    .line 31
    sget-object v9, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->E:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v9}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v9

    const/4 v13, -0x1

    .line 32
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v13, "processPictureMultiRaw: flashState = %d, colorTemperature = %d"

    new-array v14, v12, [Ljava/lang/Object;

    .line 33
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v11

    invoke-static {v5, v13, v14}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    sget-object v13, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->NATIVE_COMMAND_SET_EXTRA_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v8, v14, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v14, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v14, v12

    invoke-virtual {v0, v13, v14}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v6, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    invoke-direct {v6, v5, v3, v1}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;-><init>(Lcom/samsung/android/camera/core2/util/CLog$Tag;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 36
    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->Q()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->T()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->X()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->P()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v3

    .line 40
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->U(Lcom/samsung/android/camera/core2/util/StrideInfo;)Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v3

    .line 41
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->w()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->x()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v3

    .line 43
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->W()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->q()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->D()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->V()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v3

    .line 47
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->t()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v3

    .line 48
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->z()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->G()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v3

    .line 50
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->F()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->M()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->u()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->p()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->h()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo;

    move-result-object v3

    .line 55
    sget-object v6, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->NATIVE_COMMAND_PROCESS_MULTI_RAW_UDC:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v8, v7, [Ljava/lang/Object;

    aput-object p1, v8, v10

    aput-object v3, v8, v11

    iget-object v3, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mOutputBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    aput-object v3, v8, v12

    invoke-virtual {v0, v6, v8}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v2, "processPictureMultiRaw: NATIVE_COMMAND_PROCESS_MULTI_RAW_UDC is failed"

    .line 56
    invoke-static {v5, v2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 57
    iget-object v2, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$NodeCallback;

    invoke-interface {v2, v1}, Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$NodeCallback;->onError(Lcom/samsung/android/camera/core2/ExtraBundle;)V
    :try_end_0
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 58
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->isMaxInputCount()Z

    move-result v3

    const-string v6, "processPictureMultiRaw X"

    if-eqz v3, :cond_9

    const-string v3, "processPictureMultiRaw: make UDC outBuffer"

    .line 59
    invoke-static {v5, v3}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 60
    iget-object v3, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mOutputBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-nez v3, :cond_8

    const-string v2, "processPictureMultiRaw: fail - process udc fail"

    .line 61
    invoke-static {v5, v2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 62
    iget-object v0, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$NodeCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$NodeCallback;->onError(Lcom/samsung/android/camera/core2/ExtraBundle;)V

    return-object v4

    .line 63
    :cond_8
    new-instance v3, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/a;

    invoke-direct {v3, v0}, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/a;-><init>(Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;)V

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->f(Lcom/samsung/android/camera/core2/util/ImageInfo;Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v2

    .line 64
    iget-object v0, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mOutputBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->k(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 66
    sget-object v2, Lcom/samsung/android/camera/core2/ExtraBundle;->s:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 67
    invoke-static {v5, v6}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v0

    .line 68
    :cond_9
    invoke-static {v5, v6}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v4

    .line 69
    :catch_0
    iget-object v0, v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$NodeCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$NodeCallback;->onError(Lcom/samsung/android/camera/core2/ExtraBundle;)V

    return-object v4
.end method

.method private processPictureSingleYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->SEC_UDC_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "processPictureSingleYuv E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mOutputBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mOutputBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->release()V

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->allocate(I)Lcom/samsung/android/camera/core2/util/DirectBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mOutputBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processPictureSingleYuv: allocated("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mOutputBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mOutputBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/BufferBase;->clear()V

    .line 9
    sget-object v2, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->NATIVE_COMMAND_PROCESS_SINGLE_YUV_UDC:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Lcom/samsung/android/camera/core2/util/BufferInfo;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v7

    invoke-direct {v5, p1, v6, v7}, Lcom/samsung/android/camera/core2/util/BufferInfo;-><init>(Lcom/samsung/android/camera/core2/util/DirectBuffer;Landroid/util/Size;Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    aput-object v5, v3, v4

    const/4 p1, 0x1

    iget-object v4, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mOutputBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    aput-object v4, v3, p1

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "processPictureSingleYuv: NATIVE_COMMAND_PROCESS_SINGLE_YUV_UDC is failed"

    .line 10
    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 11
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$NodeCallback;

    invoke-interface {p0, p2}, Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$NodeCallback;->onError(Lcom/samsung/android/camera/core2/ExtraBundle;)V

    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mOutputBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-static {p0, v1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->k(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    const-string p1, "processPictureSingleYuv X"

    .line 14
    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method protected onDeinitialized()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/camera/core2/node/Node;->onDeinitialized()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mOutputBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mOutputBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    :cond_0
    return-void
.end method

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
    sget-object v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->SEC_UDC_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "initialized"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->NATIVE_COMMAND_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mLensFacing:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mRestorationType:Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$RestorationType;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$RestorationType;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
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

.method public processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->SEC_UDC_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "processPictureRaw E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mRestorationType:Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$RestorationType;

    sget-object v2, Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$RestorationType;->b:Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$RestorationType;

    if-ne v1, v2, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->processPictureMultiRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processPictureRaw - unsupported restorationType : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mRestorationType:Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$RestorationType;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    const-string p0, "processPictureRaw X"

    .line 5
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p1
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
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->SEC_UDC_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "processPictureYuv E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mRestorationType:Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$RestorationType;

    sget-object v2, Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$RestorationType;->f:Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$RestorationType;

    if-ne v1, v2, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->processPictureSingleYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processPictureYuv - unsupported restorationType : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mRestorationType:Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$RestorationType;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    const-string p0, "processPictureYuv X"

    .line 5
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public reconfigure(Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$SecUdcInitParam;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->SEC_UDC_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "reconfigure - %s"

    invoke-static {v0, v4, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$SecUdcInitParam;->a()Lcom/samsung/android/camera/core2/CamCapability;

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
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mAvailableFlipMode:Z

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$SecUdcInitParam;->a()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 4
    iget v0, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mLensFacing:I

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$SecUdcInitParam;->a()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/CamCapability;->n()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$SecUdcInitParam;->a()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->n()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mLensFacing:I

    .line 6
    sget-object v0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->NATIVE_COMMAND_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->mRestorationType:Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$RestorationType;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/udc/samsung/SecUdcNodeBase$RestorationType;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
