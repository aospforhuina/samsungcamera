.class public Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;
.super Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/SecAiHighResNodeBase;
.source "SecAiHighResNode.java"


# static fields
.field private static final NATIVE_CALLBACK_OUTPUT_TYPE_INFO:I = 0x2

.field private static final NATIVE_COMMAND_SET_DRAFT_JPEG_DATA_FOR_RECOVERY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_INPUT_DATA_FOR_RECOVERY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_JPEG_METADATA:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_RESULT_IMAGE_FORMAT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEC_AI_HIGH_RES_V2_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "V2/SecAiHighResNode"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;->SEC_AI_HIGH_RES_V2_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode$1;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x6f

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode$1;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;->NATIVE_COMMAND_SET_RESULT_IMAGE_FORMAT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 3
    new-instance v0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode$2;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;

    aput-object v3, v2, v4

    const/16 v3, 0x70

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode$2;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;->NATIVE_COMMAND_SET_JPEG_METADATA:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 4
    new-instance v0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode$3;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    aput-object v3, v2, v4

    const-class v3, Landroid/util/Size;

    aput-object v3, v2, v1

    const/16 v3, 0x71

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode$3;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;->NATIVE_COMMAND_SET_DRAFT_JPEG_DATA_FOR_RECOVERY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 5
    new-instance v0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode$4;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/samsung/android/camera/core2/util/BufferInfo;

    aput-object v2, v1, v4

    const/16 v2, 0x72

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode$4;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;->NATIVE_COMMAND_SET_INPUT_DATA_FOR_RECOVERY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;Lcom/samsung/android/camera/core2/node/aiHighRes/AiHighResNodeBase$NodeCallback;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;->SEC_AI_HIGH_RES_V2_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const v1, 0x419da8

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/SecAiHighResNodeBase;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;Lcom/samsung/android/camera/core2/node/aiHighRes/AiHighResNodeBase$NodeCallback;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/Node;->mNativeCallbacks:Ljava/util/Map;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode$5;-><init>(Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;Lcom/samsung/android/camera/core2/util/ImgFormat;)Lcom/samsung/android/camera/core2/util/ImgFormat;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/SecAiHighResNodeBase;->mOutputImageFormat:Lcom/samsung/android/camera/core2/util/ImgFormat;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;)Lcom/samsung/android/camera/core2/util/ImgFormat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/SecAiHighResNodeBase;->mOutputImageFormat:Lcom/samsung/android/camera/core2/util/ImgFormat;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;Lcom/samsung/android/camera/core2/util/ImgFormat;)Lcom/samsung/android/camera/core2/util/ImgFormat;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/SecAiHighResNodeBase;->mOutputImageFormat:Lcom/samsung/android/camera/core2/util/ImgFormat;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;)Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;)Lcom/samsung/android/camera/core2/util/ImgFormat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/SecAiHighResNodeBase;->mOutputImageFormat:Lcom/samsung/android/camera/core2/util/ImgFormat;

    return-object p0
.end method

.method public static synthetic l(Ljava/lang/String;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;->lambda$setJpegMetadata$0(Ljava/lang/String;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setJpegMetadata$0(Ljava/lang/String;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->g(Ljava/lang/String;)Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->i(Ljava/lang/String;)Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->j()Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->k()Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->e()Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;

    move-result-object p0

    return-object p0
.end method


# virtual methods
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

.method public processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getCurrentCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getMaxInputCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string v5, "processPictureRecovery E: currentCount = %d/%d, picture [%s]"

    .line 3
    invoke-static {v0, v5, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImgFormat;->h()I

    move-result v1

    const/16 v5, 0x20

    const/4 v6, 0x0

    if-eq v1, v5, :cond_3

    const/16 v5, 0x25

    if-eq v1, v5, :cond_3

    const/16 v5, 0x100

    if-eq v1, v5, :cond_0

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/SecAiHighResNodeBase;->mNodeCallback:Lcom/samsung/android/camera/core2/node/aiHighRes/AiHighResNodeBase$NodeCallback;

    invoke-interface {p0, p2}, Lcom/samsung/android/camera/core2/node/aiHighRes/AiHighResNodeBase$NodeCallback;->onError(Lcom/samsung/android/camera/core2/ExtraBundle;)V

    return-object v6

    .line 7
    :cond_0
    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->e:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p2, v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/SecAiHighResNodeBase;->mResultCaptureSize:Landroid/util/Size;

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/SecAiHighResNodeBase;->mResultCaptureSize:Landroid/util/Size;

    aput-object v5, v1, v3

    const-string v5, "processPictureRecovery: resultCaptureSize = %s"

    invoke-static {v0, v5, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p2}, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;->setResultImageFormat(Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 11
    sget-object v0, Lcom/samsung/android/camera/core2/ExtraBundle;->C:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p2, v0}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    if-eqz v0, :cond_2

    .line 12
    array-length v1, v0

    if-gtz v1, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    sget-object p2, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;->NATIVE_COMMAND_SET_DRAFT_JPEG_DATA_FOR_RECOVERY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aget-object p1, v0, v3

    aput-object p1, v1, v4

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/SecAiHighResNodeBase;->mNodeCallback:Lcom/samsung/android/camera/core2/node/aiHighRes/AiHighResNodeBase$NodeCallback;

    invoke-interface {p0, p2}, Lcom/samsung/android/camera/core2/node/aiHighRes/AiHighResNodeBase$NodeCallback;->onError(Lcom/samsung/android/camera/core2/ExtraBundle;)V

    return-object v6

    .line 15
    :cond_3
    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/SecAiHighResNodeBase;->mLastBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 16
    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/SecAiHighResNodeBase;->mLastPictureImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    .line 17
    new-instance p2, Lcom/samsung/android/camera/core2/util/BufferInfo;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v0

    invoke-direct {p2, p1, v1, v0}, Lcom/samsung/android/camera/core2/util/BufferInfo;-><init>(Lcom/samsung/android/camera/core2/util/DirectBuffer;Landroid/util/Size;Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    .line 18
    sget-object p1, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;->NATIVE_COMMAND_SET_INPUT_DATA_FOR_RECOVERY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->isMaxInputCount()Z

    move-result p1

    const-string p2, "processPictureRecovery X"

    if-eqz p1, :cond_4

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/SecAiHighResNodeBase;->makeAiHighResolution()Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p1

    .line 22
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v6
.end method

.method public bridge synthetic processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method protected setJpegMetadata(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->Z0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->g:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p2, v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 3
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/SecAiHighResNodeBase;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 4
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/a;

    invoke-direct {v3, v0}, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v1, :cond_0

    move p2, v3

    goto :goto_0

    :cond_0
    move p2, v4

    .line 6
    :goto_0
    invoke-static {p1, v0, v2, p2}, Lcom/samsung/android/camera/core2/util/JpegUtils;->c0(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;Z)Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;

    move-result-object p1

    .line 7
    sget-object p2, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;->NATIVE_COMMAND_SET_JPEG_METADATA:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v4

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setResultImageFormat(Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/ExtraBundle;->g:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/ImgFormat;->n(I)Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string/jumbo v2, "setResultImageFormat: format = %s(0x%X)"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/node/aiHighRes/samsung/v2/SecAiHighResNode;->NATIVE_COMMAND_SET_RESULT_IMAGE_FORMAT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
