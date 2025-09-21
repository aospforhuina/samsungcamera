.class public Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;
.super Lcom/samsung/android/camera/core2/node/Node;
.source "SecEffectProcessorNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$NodeCallback;,
        Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;
    }
.end annotation


# static fields
.field private static final COPY_AVAILABLE_EDIT_VALUE:Ljava/lang/String; = "camera"

.field public static final EFFECT_MODE_FACE_SHAPE_CORRECTION:I = 0x1bf

.field private static final ERROR_UNKNOWN:I = 0x0

.field private static final FILTER_INTENSITY_INTERVAL:I = 0xa

.field private static final MY_FILTER_DIR:Ljava/lang/String; = "/data/DownFilters/MyFilter"

.field private static final NON_DESTRUCTIVE_GPU_FILTER_TYPE:I = 0x1

.field private static final NON_DESTRUCTIVE_MY_FILTER_TYPE:I = 0x2

.field private static final SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private static final SEL_EXT:Ljava/lang/String; = ".sel"


# instance fields
.field private mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

.field private final mContext:Landroid/content/Context;

.field private mEffectMode:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

.field private mFilterIntensity:I

.field private mFilterName:Ljava/lang/String;

.field private mIsUserGenerated:Z

.field private final mNodeCallback:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$NodeCallback;

.field private mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

.field private mSemFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

.field private mSemMyFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mSepVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "SecEffectProcessorNode"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$NodeCallback;Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/16 v1, 0x136

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/camera/core2/node/Node;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;->b:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mEffectMode:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mFilterName:Ljava/lang/String;

    .line 4
    iput-boolean v2, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mIsUserGenerated:Z

    .line 5
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 6
    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$NodeCallback;

    .line 7
    iput-object p3, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mContext:Landroid/content/Context;

    const-string p1, "ro.build.version.sep"

    .line 8
    invoke-static {p1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSepVersion:Ljava/lang/String;

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Lcom/samsung/android/camera/filter/SemFilter;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->lambda$setUserGeneratedFilter$3(Ljava/lang/String;Lcom/samsung/android/camera/filter/SemFilter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/samsung/android/camera/filter/SemFilter;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->lambda$setBasicFilter$0(Lcom/samsung/android/camera/filter/SemFilter;)V

    return-void
.end method

.method public static synthetic g(Lcom/samsung/android/camera/filter/SemFilter;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->lambda$setUserGeneratedFilter$2(Lcom/samsung/android/camera/filter/SemFilter;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/camera/filter/SemFilter;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->lambda$setBasicFilter$1(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/camera/filter/SemFilter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Landroid/util/Size;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->lambda$processImage$5(Landroid/util/Size;Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method

.method public static synthetic j(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->lambda$updateSEFInfo$4(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$processImage$5(Landroid/util/Size;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/util/StrideInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->z(Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    return-void
.end method

.method private static synthetic lambda$setBasicFilter$0(Lcom/samsung/android/camera/filter/SemFilter;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilter;->getFilterName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilter;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "FilterList : FilterName %s, FilterPackage %s"

    .line 3
    invoke-static {v0, p0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$setBasicFilter$1(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/camera/filter/SemFilter;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/camera/filter/SemFilter;->getFilterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/samsung/android/camera/filter/SemFilter;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$setUserGeneratedFilter$2(Lcom/samsung/android/camera/filter/SemFilter;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilter;->getFilterName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "SemMyFilterList : FilterName %s"

    .line 3
    invoke-static {v0, p0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$setUserGeneratedFilter$3(Ljava/lang/String;Lcom/samsung/android/camera/filter/SemFilter;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/camera/filter/SemFilter;->getFilterName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateSEFInfo$4(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->H:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private processImage(Lcom/samsung/android/camera/core2/util/ImageBuffer;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/util/Size;

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v3

    new-array v5, v3, [B

    .line 5
    invoke-virtual {p1, v5}, Lcom/samsung/android/camera/core2/util/BufferBase;->get([B)V

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 7
    iget-object v4, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    .line 8
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v7

    .line 9
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getRowStride()I

    move-result v9

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getHeightSlice()I

    move-result v10

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 10
    invoke-virtual/range {v4 .. v11}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->processImage([BIIIIIZ)[B

    move-result-object p0

    .line 11
    new-instance p1, Lcom/samsung/android/camera/core2/node/g0;

    invoke-direct {p1, v1}, Lcom/samsung/android/camera/core2/node/g0;-><init>(Landroid/util/Size;)V

    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->f(Lcom/samsung/android/camera/core2/util/ImageInfo;Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p1

    .line 12
    array-length v0, p0

    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a(ILcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    .line 13
    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/util/BufferBase;->put([B)V

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    return-object p1
.end method

.method private setBasicFilter(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/camera/core2/node/i0;->a:Lcom/samsung/android/camera/core2/node/i0;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/node/l0;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/camera/core2/node/l0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/filter/SemFilter;

    invoke-virtual {v1}, Lcom/samsung/android/camera/filter/SemFilter;->getFilterName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mFilterName:Ljava/lang/String;

    .line 7
    iput-boolean v4, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mIsUserGenerated:Z

    .line 8
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/filter/SemFilter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->setFilter(Lcom/samsung/android/camera/filter/SemFilter;)V

    .line 9
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v2

    const-string p1, "setEffect - FilterName : %s, FilterPackage : %s"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "intensity="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 p3, p3, 0xa

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->setFilterParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p1, p3, v4

    aput-object p2, p3, v2

    const-string p1, "Could not find a matching filterID(%s, %s) in FilterList."

    invoke-static {p0, p1, p3}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setUserGeneratedFilter(Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemMyFilterList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/camera/core2/node/j0;->a:Lcom/samsung/android/camera/core2/node/j0;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemMyFilterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/node/k0;

    invoke-direct {v1, p1}, Lcom/samsung/android/camera/core2/node/k0;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/filter/SemFilter;

    invoke-virtual {v1}, Lcom/samsung/android/camera/filter/SemFilter;->getFilterName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mFilterName:Ljava/lang/String;

    .line 7
    iput-boolean v3, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mIsUserGenerated:Z

    .line 8
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/filter/SemFilter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->setFilter(Lcom/samsung/android/camera/filter/SemFilter;)V

    .line 9
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "setEffect - FilterName %s"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "intensity="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 p2, p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->setFilterParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "Could not find a matching filterID(%s) in MyFilterList."

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private updateSEFInfo(Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/ExtraBundle;->H:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->j(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->M:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v3, "camera"

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "updateSEFInfo - FILTER_COPY_AVAILABLE_EDIT_VALUE"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    sget-object v2, Lcom/samsung/android/camera/core2/ExtraBundle;->a0:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p1, v2}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    const-string/jumbo p0, "updateSEFInfo - NON_DESTRUCTION_DATA fail : originFilePath is null"

    .line 5
    invoke-static {v1, p0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSEFInfo - NON_DESTRUCTION_DATA : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mFilterName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mFilterIntensity:I

    mul-int/lit8 v5, v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mIsUserGenerated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 7
    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->m:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p1, v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    sget-object v2, Lcom/samsung/android/camera/core2/MakerPrivateKey;->Q:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 9
    sget-object v2, Lcom/samsung/android/camera/core2/ExtraBundle;->Y:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p1, v2}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    move v8, v2

    goto :goto_1

    :cond_2
    move v8, v3

    .line 10
    :goto_1
    iget-boolean v5, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mIsUserGenerated:Z

    iget-object v6, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mFilterName:Ljava/lang/String;

    iget p1, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mFilterIntensity:I

    mul-int/lit8 v7, p1, 0xa

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->getSefValue(Ljava/lang/String;ZLjava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/camera/core2/node/h0;

    invoke-direct {p1, v0}, Lcom/samsung/android/camera/core2/node/h0;-><init>(Ljava/util/Map;)V

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getEffectMode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mEffectMode:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;->h()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSefValue(Ljava/lang/String;ZLjava/lang/String;IZ)Ljava/lang/String;
    .locals 8

    const-string v0, ".sel"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/DownFilters/MyFilter/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    new-array v4, v4, [B

    .line 4
    sget-object v5, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processPicture - bitmap.getByteCount() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 6
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 7
    invoke-virtual {v3, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 8
    invoke-static {}, Lcom/google/common/hash/Hashing;->sha256()Lcom/google/common/hash/HashFunction;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/google/common/hash/HashFunction;->hashBytes([B)Lcom/google/common/hash/HashCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/hash/HashCode;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "myFilterLUT"

    .line 9
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPicture - myFilterLUT : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/data/DownFilters/MyFilter"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    const-string v0, "filterIndication"

    .line 11
    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "filterType"

    .line 12
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "alphaValue"

    .line 13
    invoke-virtual {v1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 15
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string p4, "originalPath"

    .line 16
    invoke-virtual {p3, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "effectValue"

    .line 17
    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sepVersion"

    .line 18
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSepVersion:Ljava/lang/String;

    invoke-virtual {p3, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p5, :cond_1

    const-string p0, "isNotReEdit"

    .line 19
    invoke-virtual {p3, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 20
    :cond_1
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 21
    sget-object p1, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getEffectValue is failed : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onDeinitialized()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/samsung/android/camera/core2/node/Node;->onDeinitialized()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeinitialized : mSemFilterBufferedProcessor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->release()V

    .line 6
    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    :cond_0
    return-void
.end method

.method protected onInitialized(Ljava/util/Map;)V
    .locals 2
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
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/node/Node;->onInitialized(Ljava/util/Map;)V

    .line 2
    new-instance p1, Lcom/samsung/android/camera/filter/SemFilterManager;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/camera/filter/SemFilterManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    .line 3
    new-instance p1, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    invoke-direct {p1}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    .line 4
    sget-object p1, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInitialized : mSemFilterBufferedProcessor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->initialize()V

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

.method public declared-synchronized processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "processPictureYuv E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_0

    const-string p1, "processPictureYuv X: failed because pictureSize is null"

    .line 5
    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$NodeCallback;

    invoke-interface {p1, v5}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$NodeCallback;->onError(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-object v4

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    .line 9
    sget-object v6, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$1;->a:[I

    iget-object v7, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mEffectMode:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v1, 0x3

    const/4 v4, 0x2

    if-eq v6, v4, :cond_1

    if-eq v6, v1, :cond_1

    const-string p2, "processPictureYuv fail - invalid effect mode"

    .line 10
    invoke-static {v0, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v6, "processPictureYuv: effect mode=%s, filterName=%s, intensity=%d, picture size=%s, %s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    .line 11
    iget-object v9, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mEffectMode:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    aput-object v9, v8, v5

    iget-object v5, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mFilterName:Ljava/lang/String;

    aput-object v5, v8, v7

    iget v5, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mFilterIntensity:I

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    aput-object v2, v8, v1

    const/4 v1, 0x4

    aput-object v3, v8, v1

    .line 13
    invoke-static {v0, v6, v8}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->processImage(Lcom/samsung/android/camera/core2/util/ImageBuffer;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    .line 15
    invoke-direct {p0, p2}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->updateSEFInfo(Lcom/samsung/android/camera/core2/ExtraBundle;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    if-eqz v2, :cond_6

    .line 17
    sget-object v2, Lcom/samsung/android/camera/core2/ExtraBundle;->b:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p2, v2}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/camera/core2/CamCapability;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p2, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/camera/core2/CamCapability;

    .line 18
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->n()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->E0()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 20
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->f2:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    .line 21
    :cond_4
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/Face;

    .line 22
    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->O1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 23
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 24
    :cond_5
    invoke-virtual {p2, v4}, Lcom/samsung/android/camera/core2/CamCapability;->c2(Ljava/lang/Integer;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p0, v2, p2, v5}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->setFaceInfo([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;Z)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->processImage(Lcom/samsung/android/camera/core2/util/ImageBuffer;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    :cond_6
    :goto_0
    const-string p2, "processPictureYuv X"

    .line 26
    invoke-static {v0, p2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reconfigure(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    return-void
.end method

.method public declared-synchronized setEffectFilter(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    if-eqz v0, :cond_2

    .line 2
    iput p3, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mFilterIntensity:I

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$1;->a:[I

    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mEffectMode:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mFilterName:Ljava/lang/String;

    .line 5
    sget-object p1, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p2, "setEffect fail - invalid effect mode"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->setUserGeneratedFilter(Ljava/lang/String;I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->setBasicFilter(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p2, "setEffect fail : not initialized"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEffectMode(Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    if-eqz v0, :cond_3

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "setEffectMode fail - invalid effect mode"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "setEffectMode - EFFECT_MODE_USER_GENERATED"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager;->getAvailableFilters(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemMyFilterList:Ljava/util/List;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "setEffectMode - EFFECT_MODE_BASIC"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager;->getAvailableFilters(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterList:Ljava/util/List;

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "setEffectMode - EFFECT_MODE_FACE_SHAPE_CORRECTION"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager;->getAvailableFilters(I)Ljava/util/List;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/filter/SemFilter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->setFilter(Lcom/samsung/android/camera/filter/SemFilter;)V

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mEffectMode:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    goto :goto_1

    .line 12
    :cond_3
    sget-object p1, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "setEffectMode fail : not initialized"

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFaceInfo([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->isActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 2
    sget-object p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "faces is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    .line 4
    sget-object p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "faces.length is 0"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    if-eqz p0, :cond_6

    .line 6
    aget-object v0, p1, v1

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7
    array-length v2, p1

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v5, p1, v3

    .line 8
    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    mul-int/2addr v6, v7

    if-le v6, v4, :cond_3

    .line 9
    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    move v4, v6

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    .line 10
    new-instance p3, Landroid/util/Size;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {p3, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0, p3}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->k(Landroid/graphics/Rect;Landroid/util/Size;)Z

    .line 11
    :cond_5
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {v0, p3, p2}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->h(Landroid/graphics/Rect;II)Z

    .line 12
    sget-object p2, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->SEC_EFFECT_PROCESSOR_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "normalize face rect : "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 13
    sget-object p2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 p3, 0x6

    new-array p3, p3, [Ljava/lang/Object;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v1

    iget p1, v0, Landroid/graphics/Rect;->left:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, p3, v1

    const/4 p1, 0x2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, p1

    const/4 p1, 0x3

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, p1

    const/4 p1, 0x4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p1

    const/4 p1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p1

    const-string p1, "FA=%d,LE=%d,TO=%d,RI=%d,BO=%d,PP=%d"

    invoke-static {p2, p1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->setFilterParameter(Ljava/lang/String;)V

    :cond_6
    return v1
.end method
