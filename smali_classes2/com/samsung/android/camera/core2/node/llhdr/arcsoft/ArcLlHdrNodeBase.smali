.class public abstract Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;
.super Lcom/samsung/android/camera/core2/node/llhdr/LlHdrNodeBase;
.source "ArcLlHdrNodeBase.java"


# static fields
.field protected static final DEFAULT_SENSOR_WDR_SENSITIVITY:I = 0xde

.field protected static final NATIVE_CALLBACK_DEBUG_INFO:I = 0x2

.field protected static final NATIVE_CALLBACK_PROGRESS:I = 0x1

.field protected static final NATIVE_COMMAND_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected static final NATIVE_COMMAND_MAKE_LL_HDR:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Lcom/samsung/android/camera/core2/util/DirectBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final NATIVE_COMMAND_PREPARE_CAPTURE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final NATIVE_COMMAND_SET_EXTRA_CAPTURE_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected static final NATIVE_COMMAND_SET_FACE_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected static final NATIVE_COMMAND_SET_INPUT_DATA:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
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

.field protected mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

.field protected mCaptureType:I

.field protected mDebugInfo:[B

.field private mInputStrideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;

.field protected mLastBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

.field protected mLensFacing:I

.field protected final mNodeCallback:Lcom/samsung/android/camera/core2/node/llhdr/LlHdrNodeBase$NodeCallback;

.field private mOutputStrideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;

.field protected mRefFrameIndex:I

.field protected mRepresentingCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

.field protected mResultSize:Landroid/util/Size;

.field private mValidImgRegion:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, Ljava/lang/Integer;

    new-instance v1, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase$1;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/16 v5, 0x64

    invoke-direct {v1, v5, v3}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase$1;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->NATIVE_COMMAND_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase$2;

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v0, v5, v4

    const-class v6, Landroid/util/Size;

    aput-object v6, v5, v2

    const-class v6, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/16 v6, 0x65

    invoke-direct {v1, v6, v5}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase$2;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->NATIVE_COMMAND_PREPARE_CAPTURE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 3
    new-instance v1, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase$3;

    new-array v5, v7, [Ljava/lang/Class;

    const-class v6, Lcom/samsung/android/camera/core2/util/BufferInfo;

    aput-object v6, v5, v4

    const-class v6, Landroid/graphics/Rect;

    aput-object v6, v5, v2

    const/16 v6, 0x66

    invoke-direct {v1, v6, v5}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase$3;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->NATIVE_COMMAND_SET_INPUT_DATA:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 4
    new-instance v1, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase$4;

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, [Landroid/graphics/Rect;

    aput-object v6, v5, v4

    const/16 v6, 0x67

    invoke-direct {v1, v6, v5}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase$4;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->NATIVE_COMMAND_SET_FACE_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 5
    new-instance v1, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase$5;

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, [I

    aput-object v5, v3, v4

    aput-object v0, v3, v2

    aput-object v0, v3, v7

    const/16 v0, 0x68

    invoke-direct {v1, v0, v3}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase$5;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->NATIVE_COMMAND_SET_EXTRA_CAPTURE_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 6
    new-instance v0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase$6;

    new-array v1, v4, [Ljava/lang/Class;

    const/16 v2, 0x69

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase$6;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->NATIVE_COMMAND_MAKE_LL_HDR:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;Lcom/samsung/android/camera/core2/node/llhdr/LlHdrNodeBase$NodeCallback;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/camera/core2/node/llhdr/LlHdrNodeBase;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mDebugInfo:[B

    .line 3
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/Node;->mNativeCallbacks:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase$7;-><init>(Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/Node;->mNativeCallbacks:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase$8;-><init>(Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "nodeTag"

    .line 5
    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "callback"

    .line 6
    invoke-static {p4, p1}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;->a()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->J1()[I

    move-result-object p1

    array-length p1, p1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mAvailableFlipMode:Z

    .line 8
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;->a()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->n()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mLensFacing:I

    .line 10
    iput-object p4, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mNodeCallback:Lcom/samsung/android/camera/core2/node/llhdr/LlHdrNodeBase$NodeCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->lambda$makeLlHdr$0(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method

.method private synthetic lambda$makeLlHdr$0(Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mResultSize:Landroid/util/Size;

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->x(Landroid/util/Size;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mOutputStrideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;

    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->z(Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    return-void
.end method

.method private makeLlHdr(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mRepresentingCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mRepresentingCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 3
    sget-object v2, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->NATIVE_COMMAND_MAKE_LL_HDR:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string v0, "makeLlHdr: failed to make hdr"

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mNodeCallback:Lcom/samsung/android/camera/core2/node/llhdr/LlHdrNodeBase$NodeCallback;

    invoke-interface {p0, p2}, Lcom/samsung/android/camera/core2/node/llhdr/LlHdrNodeBase$NodeCallback;->onError(Lcom/samsung/android/camera/core2/ExtraBundle;)V

    return-object v1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/a;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/a;-><init>(Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;)V

    invoke-static {p1, v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->f(Lcom/samsung/android/camera/core2/util/ImageInfo;Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p1

    .line 7
    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->s:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    iget v3, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mCaptureType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 8
    invoke-static {v2, p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->k(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->r(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mDebugInfo:[B

    invoke-virtual {p2, p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->s([B)V

    return-object p1
.end method

.method private processFirstPicture(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "processFirstPicture"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/TotalCaptureResult;

    .line 4
    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->b:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p2, v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/CamCapability;

    iput-object v1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 5
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->Q:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 8
    invoke-static {v1}, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->b(I)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "processFirstPicture: dsExtraInfo=%s"

    .line 9
    invoke-static {v3, v2, v4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->setOutputValue(Lcom/samsung/android/camera/core2/util/ImageInfo;I)V

    .line 11
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->prepareCapture(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 12
    new-instance p1, Landroid/util/Size;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mValidImgRegion:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mValidImgRegion:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p1, p2, v1}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->setFaceInfo(Landroid/hardware/camera2/TotalCaptureResult;Landroid/util/Size;)V

    return-void
.end method

.method private setExtraCaptureInfo(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->i2:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 2
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 3
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4
    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->T1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 5
    sget-object v4, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->NATIVE_COMMAND_SET_EXTRA_CAPTURE_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    const/4 v0, 0x1

    aput-object v2, v5, v0

    aput-object p1, v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0xde
        0xde
    .end array-data
.end method

.method private setFaceInfo(Landroid/hardware/camera2/TotalCaptureResult;Landroid/util/Size;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "setFaceInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->E0()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->f2:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v1, v0}, Lcom/samsung/android/camera/core2/CamCapability;->c2(Ljava/lang/Integer;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/graphics/Rect;

    .line 5
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "setFaceInfo: faces is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mAvailableFlipMode:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 8
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->O1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 10
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 11
    :goto_1
    array-length v4, v1

    new-array v5, v4, [Landroid/graphics/Rect;

    .line 12
    sget-object v6, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->P1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v6}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 13
    invoke-static {p1, v7}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setFaceInfo:  face num = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_2
    if-ge v3, v4, :cond_4

    .line 15
    aget-object v6, v1, v3

    invoke-virtual {v6}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    aput-object v6, v5, v3

    if-eqz v2, :cond_3

    .line 16
    aget-object v6, v5, v3

    new-instance v7, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    invoke-static {v6, v7}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->k(Landroid/graphics/Rect;Landroid/util/Size;)Z

    .line 17
    :cond_3
    aget-object v6, v5, v3

    invoke-static {v6, p2, v0, p1}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->f(Landroid/graphics/Rect;Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 18
    :cond_4
    sget-object p1, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->NATIVE_COMMAND_SET_FACE_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setInputValue(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 3

    .line 1
    iput-object p3, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mLastBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 2
    sget-object p3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->R1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, p3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mValidImgRegion:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mInputStrideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;

    .line 4
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Landroid/util/Size;

    .line 5
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mValidImgRegion:Landroid/graphics/Rect;

    invoke-static {p2}, Lcom/samsung/android/camera/core2/util/ImageUtils;->isInvalidRect(Landroid/graphics/Rect;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p2

    const-string v0, "setInputValue: Valid Image Region is null or invalid. so, it made by input picture size."

    invoke-static {p2, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 7
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {p2, p3, p3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mValidImgRegion:Landroid/graphics/Rect;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mValidImgRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mValidImgRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 10
    :cond_1
    new-instance p2, Lcom/samsung/android/camera/core2/util/StrideInfo;

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mValidImgRegion:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mValidImgRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p2, v0}, Lcom/samsung/android/camera/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mInputStrideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p2

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getCurrentCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p3

    const/4 p3, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getMaxInputCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p3

    const/4 p3, 0x2

    aput-object p1, v0, p3

    const/4 p1, 0x3

    iget-object p3, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mValidImgRegion:Landroid/graphics/Rect;

    aput-object p3, v0, p1

    const/4 p1, 0x4

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mInputStrideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;

    aput-object p0, v0, p1

    const-string p0, "setInputValue: Current Count=%d/%d, Picture Size=%s, Valid Image Region=%s, inputStrideInfo=%s"

    .line 13
    invoke-static {p2, p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private setOutputValue(Lcom/samsung/android/camera/core2/util/ImageInfo;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/util/Size;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mResultSize:Landroid/util/Size;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mOutputStrideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mCaptureType:I

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mValidImgRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mResultSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mValidImgRegion:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mResultSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 6
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->e(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    new-instance p2, Landroid/util/Size;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mValidImgRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mValidImgRegion:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroid/util/Size;-><init>(II)V

    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mResultSize:Landroid/util/Size;

    .line 8
    new-instance p2, Lcom/samsung/android/camera/core2/util/StrideInfo;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mResultSize:Landroid/util/Size;

    invoke-direct {p2, v0}, Lcom/samsung/android/camera/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mOutputStrideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;

    .line 9
    iput v2, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mCaptureType:I

    goto :goto_0

    .line 10
    :cond_1
    iput v3, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mCaptureType:I

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mResultSize:Landroid/util/Size;

    aput-object v1, v0, p1

    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mOutputStrideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;

    aput-object p1, v0, v3

    iget p0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mCaptureType:I

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string/jumbo p0, "setOutputValue: ResultSize %s, StrideInfo %s, CaptureType %d"

    .line 13
    invoke-static {p2, p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected abstract nativeCallCommandInit()V
.end method

.method protected nativeCallSpecificCommand(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    return-void
.end method

.method protected needPictureDump()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onInitialized(Ljava/util/Map;)V
    .locals 0
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
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->nativeCallCommandInit()V

    .line 2
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/node/Node;->onInitialized(Ljava/util/Map;)V

    return-void
.end method

.method protected prepareCapture(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "prepareCapture"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;-><init>(Lcom/samsung/android/camera/core2/util/CLog$Tag;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->Q()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->T()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->s()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->O()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->R()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mCaptureType:I

    .line 9
    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->v(I)Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->J()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mOutputStrideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;

    .line 11
    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->U(Lcom/samsung/android/camera/core2/util/StrideInfo;)Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo$Builder;->h()Lcom/samsung/android/camera/core2/container/ExtraCaptureInfo;

    move-result-object p1

    .line 13
    sget-object v0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->NATIVE_COMMAND_PREPARE_CAPTURE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getMaxInputCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mResultSize:Landroid/util/Size;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "prepareCapture: failed(%d)"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mNodeCallback:Lcom/samsung/android/camera/core2/node/llhdr/LlHdrNodeBase$NodeCallback;

    invoke-interface {p0, p2}, Lcom/samsung/android/camera/core2/node/llhdr/LlHdrNodeBase$NodeCallback;->onError(Lcom/samsung/android/camera/core2/ExtraBundle;)V

    :cond_0
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
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "processPictureYuv E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroid/hardware/camera2/TotalCaptureResult;

    .line 4
    invoke-direct {p0, v2, v1, p2}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->setInputValue(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getCurrentCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 6
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->processFirstPicture(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 7
    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->setExtraCaptureInfo(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 8
    invoke-virtual {p0, v2}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->nativeCallSpecificCommand(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getCurrentCount()I

    move-result v3

    iget v5, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mRefFrameIndex:I

    add-int/2addr v5, v4

    const/4 v6, 0x0

    if-ne v3, v5, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v3

    const-string v5, "processPictureYuv: RefFrameIndex is %d and CaptureResult is backed up."

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mRefFrameIndex:I

    .line 11
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    .line 12
    invoke-static {v3, v5, v7}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iput-object v2, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mRepresentingCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 14
    :cond_1
    new-instance v2, Lcom/samsung/android/camera/core2/util/BufferInfo;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mInputStrideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;

    invoke-direct {v2, p1, v1, v3}, Lcom/samsung/android/camera/core2/util/BufferInfo;-><init>(Lcom/samsung/android/camera/core2/util/DirectBuffer;Landroid/util/Size;Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    .line 15
    sget-object v1, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->NATIVE_COMMAND_SET_INPUT_DATA:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mValidImgRegion:Landroid/graphics/Rect;

    aput-object v2, v3, v4

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string v1, "processPictureYuv X: failed to set input data"

    invoke-static {p1, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mNodeCallback:Lcom/samsung/android/camera/core2/node/llhdr/LlHdrNodeBase$NodeCallback;

    invoke-interface {p1, p2}, Lcom/samsung/android/camera/core2/node/llhdr/LlHdrNodeBase$NodeCallback;->onError(Lcom/samsung/android/camera/core2/ExtraBundle;)V
    :try_end_0
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->isMaxInputCount()Z

    move-result v1

    const-string v2, "processPictureYuv X"

    if-eqz v1, :cond_3

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->makeLlHdr(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p1

    .line 21
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processPictureYuv X: fail - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 23
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mNodeCallback:Lcom/samsung/android/camera/core2/node/llhdr/LlHdrNodeBase$NodeCallback;

    invoke-interface {p0, p2}, Lcom/samsung/android/camera/core2/node/llhdr/LlHdrNodeBase$NodeCallback;->onError(Lcom/samsung/android/camera/core2/ExtraBundle;)V

    return-object v0
.end method

.method public reconfigure(Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->reconfigure(Ljava/lang/Object;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

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

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mAvailableFlipMode:Z

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;->a()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->n()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->mLensFacing:I

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/llhdr/arcsoft/ArcLlHdrNodeBase;->nativeCallCommandInit()V

    return-void
.end method
