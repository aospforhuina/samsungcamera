.class public Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;
.super Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/AllInFocusNodeBase;
.source "ArcAllInFocusNode.java"


# static fields
.field private static final ARC_AIF_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private static final NATIVE_CALLBACK_DEBUG_INFO:I = 0x2

.field private static final NATIVE_COMMAND_GET_RESULT_BUFFER:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Lcom/samsung/android/camera/core2/util/DirectBuffer;",
            ">;"
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

.field private static final NATIVE_COMMAND_PROCESS_AIF:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_IMAGE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

.field private mDebugInfo:[B

.field private mFirstImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

.field private mIsSuccessAifProcess:Ljava/lang/Boolean;

.field private mLensFacing:I

.field private mNeedDump:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v0, Ljava/lang/Integer;

    new-instance v1, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "V1/ArcAllInFocusNode"

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->ARC_AIF_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode$1;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const/16 v6, 0x64

    invoke-direct {v1, v6, v3}, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode$1;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->NATIVE_COMMAND_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 3
    new-instance v1, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode$2;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v6, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    aput-object v6, v3, v4

    const-class v6, Lcom/samsung/android/camera/core2/util/BufferInfo;

    aput-object v6, v3, v5

    aput-object v0, v3, v2

    const/16 v0, 0x65

    invoke-direct {v1, v0, v3}, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode$2;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->NATIVE_COMMAND_SET_IMAGE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 4
    new-instance v0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode$3;

    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, [Landroid/graphics/Rect;

    aput-object v2, v1, v4

    const-class v2, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/AllInFocusNodeBase$AllInFocusCaptureParam;

    aput-object v2, v1, v5

    const/16 v2, 0x66

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode$3;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->NATIVE_COMMAND_SET_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 5
    new-instance v0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode$4;

    new-array v1, v4, [Ljava/lang/Class;

    const/16 v2, 0x67

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode$4;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->NATIVE_COMMAND_PROCESS_AIF:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 6
    new-instance v0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode$5;

    new-array v1, v4, [Ljava/lang/Class;

    const/16 v2, 0x68

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode$5;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->NATIVE_COMMAND_GET_RESULT_BUFFER:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->ARC_AIF_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const v1, 0x33e1a4

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/AllInFocusNodeBase;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mDebugInfo:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mNeedDump:I

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/Node;->mNativeCallbacks:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode$6;-><init>(Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;->a()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->n()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mLensFacing:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;)Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;)Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    return-object p0
.end method

.method private dumpAifInputImage(Lcom/samsung/android/camera/core2/util/ImageBuffer;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->n:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->a()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mNeedDump:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    iget v0, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mNeedDump:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mFirstImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->p()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_dump_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getCurrentCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->p()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".nv21"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/FileUtils;->s(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    :cond_0
    return-void
.end method

.method private getFaceInfo(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;)[Landroid/graphics/Rect;
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->ARC_AIF_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "getFaceInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "getFaceInfo - faces is null"

    .line 3
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v2

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/CamCapability;->J1()[I

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v3, v5, :cond_1

    .line 5
    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->O1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 7
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v4

    .line 8
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/CamCapability;->E0()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->f2:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 10
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0, v2}, Lcom/samsung/android/camera/core2/CamCapability;->c2(Ljava/lang/Integer;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Landroid/graphics/Rect;

    .line 11
    array-length v2, v1

    new-array v5, v2, [Landroid/graphics/Rect;

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
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFaceInfo:  face num = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_1
    if-ge v4, v2, :cond_4

    .line 15
    aget-object v0, v1, v4

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    aput-object v0, v5, v4

    if-eqz v3, :cond_3

    .line 16
    aget-object v0, v5, v4

    new-instance v6, Landroid/util/Size;

    .line 17
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/util/Size;-><init>(II)V

    .line 18
    invoke-static {v0, v6}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->k(Landroid/graphics/Rect;Landroid/util/Size;)Z

    .line 19
    :cond_3
    aget-object v0, v5, v4

    invoke-static {v0, p2, p0, p1}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->f(Landroid/graphics/Rect;Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-object v5
.end method

.method public static synthetic k([I)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->lambda$setAllInFocusCaptureInfo$0([I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic l(Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;)[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mDebugInfo:[B

    return-object p0
.end method

.method private static synthetic lambda$setAllInFocusCaptureInfo$0([I)Z
    .locals 1

    array-length p0, p0

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static bridge synthetic m(Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;[B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mDebugInfo:[B

    return-void
.end method

.method private setAllInFocusCaptureInfo(Lcom/samsung/android/camera/core2/util/ImageInfo;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->ARC_AIF_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "setAllInFocusCaptureInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/AllInFocusNodeBase$AllInFocusCaptureParam;

    invoke-direct {v1}, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/AllInFocusNodeBase$AllInFocusCaptureParam;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mFirstImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->p()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/AllInFocusNodeBase$AllInFocusCaptureParam;->firstTimeStamp:J

    .line 4
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p2, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/AllInFocusNodeBase$AllInFocusCaptureParam;->jpegOrientation:I

    .line 6
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->D1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p2, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/a;->a:Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/a;

    .line 7
    invoke-virtual {v2, v4}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    .line 8
    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 9
    aget v4, v2, v3

    iput v4, v1, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/AllInFocusNodeBase$AllInFocusCaptureParam;->centerDepth:I

    const/4 v4, 0x2

    .line 10
    aget v2, v2, v4

    iput v2, v1, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/AllInFocusNodeBase$AllInFocusCaptureParam;->planeAngle:I

    .line 11
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/AllInFocusNodeBase$AllInFocusCaptureParam;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->NATIVE_COMMAND_SET_INFO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v2, v4, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroid/util/Size;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->getFaceInfo(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;)[Landroid/graphics/Rect;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    .line 14
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public deinitialize()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/camera/core2/node/Node2;->deinitialize()V

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
    .locals 10

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->ARC_AIF_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getCurrentCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getMaxInputCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "processPictureYuv E: cur = %d, total = %d"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getCurrentCount()I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 5
    iput-object v2, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mFirstImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    .line 6
    sget-object v6, Lcom/samsung/android/camera/core2/ExtraBundle;->F:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p2, v6}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    sget v7, Lcom/samsung/android/camera/core2/ExtraBundle;->D:I

    .line 7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 8
    sget-object v7, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->NATIVE_COMMAND_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v8, v1, [Ljava/lang/Object;

    iget v9, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mLensFacing:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/AllInFocusNodeBase;->getRuntimeType(I)Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/AllInFocusNodeBase$RuntimeType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/AllInFocusNodeBase$RuntimeType;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->dumpAifInputImage(Lcom/samsung/android/camera/core2/util/ImageBuffer;)V

    .line 10
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v6}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 11
    sget-object v7, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->I1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v7}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processPictureYuv: LENS_STATE = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", LENS_POS_STALL = "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getCurrentCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getMaxInputCount()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 14
    new-instance v6, Lcom/samsung/android/camera/core2/util/BufferInfo;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v8

    invoke-direct {v6, p1, v7, v8}, Lcom/samsung/android/camera/core2/util/BufferInfo;-><init>(Lcom/samsung/android/camera/core2/util/DirectBuffer;Landroid/util/Size;Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    .line 15
    sget-object v7, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->NATIVE_COMMAND_SET_IMAGE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v4

    aput-object v6, v8, v5

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getCurrentCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v1

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getCurrentCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getMaxInputCount()I

    move-result v1

    sub-int/2addr v1, v5

    const/4 v6, 0x0

    if-ne p1, v1, :cond_2

    .line 17
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->setAllInFocusCaptureInfo(Lcom/samsung/android/camera/core2/util/ImageInfo;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 18
    sget-object p1, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->NATIVE_COMMAND_PROCESS_AIF:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mIsSuccessAifProcess:Ljava/lang/Boolean;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p0, "processPictureYuv X: processAif failed."

    .line 20
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v6

    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getCurrentCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getMaxInputCount()I

    move-result v1

    const-string v3, "processPictureYuv X"

    if-ne p1, v1, :cond_5

    .line 22
    sget-object p1, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->NATIVE_COMMAND_GET_RESULT_BUFFER:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    .line 23
    iget v1, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mNeedDump:I

    if-ne v1, v5, :cond_3

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mFirstImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->p()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_output_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".nv21"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/camera/core2/util/FileUtils;->r(Lcom/samsung/android/camera/core2/util/DirectBuffer;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 26
    :cond_3
    invoke-static {}, Lcom/samsung/android/camera/core2/util/ImageInfo;->d()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v1

    .line 27
    iget-object v4, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mIsSuccessAifProcess:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 28
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->c(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    goto :goto_0

    .line 29
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mFirstImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->c(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    const-string v2, "processPictureYuv: put PROCESS_FAIL_AIF info into extraBundle"

    .line 30
    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 31
    sget-object v2, Lcom/samsung/android/camera/core2/ExtraBundle;->t:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 32
    :goto_0
    invoke-static {p1, v1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->k(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mDebugInfo:[B

    invoke-virtual {p2, p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->s([B)V

    .line 34
    invoke-static {v0, v3}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p1

    .line 35
    :cond_5
    invoke-static {v0, v3}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v6
.end method

.method public reconfigure(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->reconfigure(Ljava/lang/Object;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->ARC_AIF_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "reconfigure - %s"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;->a()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->n()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/v1/ArcAllInFocusNode;->mLensFacing:I

    return-void
.end method
