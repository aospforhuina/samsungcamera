.class public Lcom/samsung/android/camera/core2/processor/PostProcessRequest;
.super Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;
.source "PostProcessRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl<",
        "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private final mCacheDirPath:Ljava/nio/file/Path;

.field private final mDataSize:I

.field private final mFileBufferPool:Lcom/samsung/android/camera/core2/util/DirectBufferPool;

.field private mFileTempRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

.field private final mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

.field private mIsDataReleased:Z

.field private final mIsRecoveryMergeDsMode:Z

.field private final mMemoryBufferPool:Lcom/samsung/android/camera/core2/util/DirectBufferPool;

.field private final mNodeChainKey:Lcom/samsung/android/camera/core2/node/NodeChain$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemainTempImageFile:Z

.field private final mRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

.field private final mSavingType:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

.field private final mTempImageFilePath:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "PostProcessRequest"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/node/NodeChain$Key;Lcom/samsung/android/camera/core2/util/DirectBufferPool;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/camera/core2/util/ImageFile;",
            ">;",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;",
            "Lcom/samsung/android/camera/core2/util/DirectBufferPool;",
            ")V"
        }
    .end annotation

    move-object v14, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getProcessType()Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

    move-result-object v1

    .line 2
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getMode()I

    move-result v2

    .line 3
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getExtraInfo()I

    move-result v3

    .line 4
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getResultFormat()I

    move-result v4

    .line 5
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getUsage()Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    move-result-object v5

    .line 6
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getError()Ljava/lang/Integer;

    move-result-object v6

    .line 7
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getErrorReason()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v9

    .line 9
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getCamCapability()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v10

    .line 10
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v11

    .line 11
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result v12

    .line 12
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getTotalProcessCount()I

    move-result v13

    const/4 v8, 0x0

    move-object v0, p0

    .line 13
    invoke-direct/range {v0 .. v13}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;-><init>(Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;IIILcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamCapability;III)V

    const/4 v0, 0x0

    .line 14
    iput-object v0, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mMemoryBufferPool:Lcom/samsung/android/camera/core2/util/DirectBufferPool;

    .line 15
    iput-object v0, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mCacheDirPath:Ljava/nio/file/Path;

    .line 16
    iput-object v0, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    move-object/from16 v1, p2

    .line 17
    iput-object v1, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mNodeChainKey:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    move-object/from16 v1, p3

    .line 18
    iput-object v1, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mFileBufferPool:Lcom/samsung/android/camera/core2/util/DirectBufferPool;

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->v(I)Z

    move-result v1

    iput-boolean v1, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mIsRecoveryMergeDsMode:Z

    .line 20
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/util/ImageFile;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/core2/processor/t;->a:Lcom/samsung/android/camera/core2/processor/t;

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 22
    invoke-static {}, Lcom/samsung/android/camera/core2/util/ImageInfo;->d()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/util/ImageInfo;

    iput-object v1, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    .line 23
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getData()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 24
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/camera/core2/util/ImgFormat;->m:Lcom/samsung/android/camera/core2/util/ImgFormat;

    if-eq v0, v2, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/util/ImgFormat;->B:Lcom/samsung/android/camera/core2/util/ImgFormat;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v1

    invoke-direct {p0, v0, v4, v1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getPostProcessBufferSize(IZLcom/samsung/android/camera/core2/ExtraBundle;)I

    move-result v0

    iput v0, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mDataSize:I

    goto :goto_1

    .line 26
    :cond_2
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/util/ImageFile;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mDataSize:I

    .line 27
    :goto_1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;->FILE:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    iput-object v0, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    .line 28
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/util/ImageFile;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mTempImageFilePath:Ljava/nio/file/Path;

    .line 29
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getUsage()Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->DRAFT_RESOURCE_IMAGE:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/FileUtils;->D(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :cond_4
    :goto_2
    iput-boolean v3, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mRemainTempImageFile:Z

    return-void

    .line 30
    :cond_5
    :goto_3
    sget-object v1, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v5, v14, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mSequenceId:I

    .line 31
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    iget v5, v14, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mCurrentProcessCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    iget v5, v14, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mTotalProcessCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "create error request : sequenceId %d, processCount %d/%d"

    .line 32
    invoke-static {v1, v3, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    sget-object v1, Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;->NONE:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    iput-object v1, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    .line 34
    iput-object v0, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mTempImageFilePath:Ljava/nio/file/Path;

    .line 35
    iput v4, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mDataSize:I

    .line 36
    iput-boolean v4, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mRemainTempImageFile:Z

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/node/NodeChain$Key;Lcom/samsung/android/camera/core2/util/DirectBufferPool;Lcom/samsung/android/camera/core2/util/DirectBufferPool;Ljava/io/File;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;",
            "Lcom/samsung/android/camera/core2/util/DirectBufferPool;",
            "Lcom/samsung/android/camera/core2/util/DirectBufferPool;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p3

    .line 37
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getProcessType()Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

    move-result-object v1

    .line 38
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getMode()I

    move-result v2

    .line 39
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getExtraInfo()I

    move-result v3

    .line 40
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getResultFormat()I

    move-result v4

    .line 41
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getUsage()Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    move-result-object v5

    .line 42
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getError()Ljava/lang/Integer;

    move-result-object v6

    .line 43
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getErrorReason()Ljava/lang/String;

    move-result-object v7

    .line 44
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    .line 45
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v9

    .line 46
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getCamCapability()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v10

    .line 47
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v11

    .line 48
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result v12

    .line 49
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getTotalProcessCount()I

    move-result v13

    move-object/from16 v0, p0

    .line 50
    invoke-direct/range {v0 .. v13}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;-><init>(Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;IIILcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamCapability;III)V

    move-object/from16 v0, p2

    .line 51
    iput-object v0, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mNodeChainKey:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    .line 52
    iput-object v15, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mMemoryBufferPool:Lcom/samsung/android/camera/core2/util/DirectBufferPool;

    move-object/from16 v0, p4

    .line 53
    iput-object v0, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mFileBufferPool:Lcom/samsung/android/camera/core2/util/DirectBufferPool;

    .line 54
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mCacheDirPath:Ljava/nio/file/Path;

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->v(I)Z

    move-result v0

    iput-boolean v0, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mIsRecoveryMergeDsMode:Z

    .line 56
    iget-object v1, v14, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/core2/processor/s;->a:Lcom/samsung/android/camera/core2/processor/s;

    .line 57
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 58
    invoke-static {}, Lcom/samsung/android/camera/core2/util/ImageInfo;->d()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/util/ImageInfo;

    iput-object v1, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    .line 59
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v2, :cond_c

    .line 60
    iget-object v7, v14, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mData:Ljava/lang/Object;

    if-eqz v7, :cond_c

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v7

    if-nez v7, :cond_0

    goto/16 :goto_6

    .line 61
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->checkValidImgRegion(Lcom/samsung/android/camera/core2/processor/ProcessRequest;)Z

    move-result v2

    .line 62
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v7

    .line 63
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getMode()I

    move-result v8

    invoke-direct {v14, v8, v2, v7}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getPostProcessBufferSize(IZLcom/samsung/android/camera/core2/ExtraBundle;)I

    move-result v8

    iput v8, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mDataSize:I

    .line 64
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getMode()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->t(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 65
    sget-object v9, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v10, v4, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getMode()I

    move-result v11

    invoke-static {v11}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->E(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    const-string/jumbo v11, "use FILE because dsMode(%s) use file only"

    invoke-static {v9, v11, v10}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iput-object v5, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    goto :goto_0

    .line 67
    :cond_1
    new-instance v9, Lcom/samsung/android/camera/core2/processor/p;

    move-object/from16 v10, p1

    invoke-direct {v9, v10, v7}, Lcom/samsung/android/camera/core2/processor/p;-><init>(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    invoke-virtual {v15, v8, v9}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->b(ILjava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/BufferBase;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    iput-object v9, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    .line 68
    :goto_0
    sget-object v9, Lcom/samsung/android/camera/core2/ExtraBundle;->t:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {v7, v9}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;->SKIP:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    iput-object v0, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    .line 70
    iput-object v5, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mTempImageFilePath:Ljava/nio/file/Path;

    .line 71
    iput-boolean v6, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mRemainTempImageFile:Z

    return-void

    .line 72
    :cond_2
    iget-object v3, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    const-string v7, "padded image format(%s) is not supported in PostProcessRequest"

    if-eqz v3, :cond_6

    .line 73
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;->MEMORY:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    iput-object v0, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    .line 74
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 75
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/StrideInfo;->isPackedFormat()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v2, :cond_3

    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/camera/core2/util/ImgFormat;->w:Lcom/samsung/android/camera/core2/util/ImgFormat;

    if-ne v0, v2, :cond_4

    .line 77
    iget-object v0, v14, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    iget-object v2, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-static {v2, v5}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->k(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/ImageUtils;->convertNV21ToPackedNV21(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/util/ImageBuffer;)Z

    .line 78
    new-instance v0, Lcom/samsung/android/camera/core2/util/StrideInfo;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/camera/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->z(Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    goto :goto_2

    .line 79
    :cond_4
    new-instance v0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v3, v4, [Ljava/lang/Object;

    .line 80
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2, v7, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_5
    :goto_1
    iget-object v0, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    iget-object v1, v14, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/camera/core2/util/BufferBase;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/util/BufferBase;->put(Lcom/samsung/android/camera/core2/util/BufferBase;)V

    .line 82
    :goto_2
    iget-object v0, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 83
    iput-object v5, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mTempImageFilePath:Ljava/nio/file/Path;

    .line 84
    iput-boolean v6, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mRemainTempImageFile:Z

    return-void

    .line 85
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getTempImageFilePath()Ljava/nio/file/Path;

    move-result-object v3

    .line 86
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/camera/core2/util/StrideInfo;->isPackedFormat()Z

    move-result v9

    if-nez v9, :cond_9

    if-eqz v2, :cond_7

    goto :goto_3

    .line 87
    :cond_7
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v2

    sget-object v9, Lcom/samsung/android/camera/core2/util/ImgFormat;->w:Lcom/samsung/android/camera/core2/util/ImgFormat;

    if-ne v2, v9, :cond_8

    .line 88
    invoke-static {v8, v5}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a(ILcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v2

    .line 89
    iget-object v5, v14, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mData:Ljava/lang/Object;

    check-cast v5, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-static {v5, v2}, Lcom/samsung/android/camera/core2/util/ImageUtils;->convertNV21ToPackedNV21(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/util/ImageBuffer;)Z

    .line 90
    invoke-virtual {v14, v3, v2}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->saveTempImageToFile(Ljava/nio/file/Path;Lcom/samsung/android/camera/core2/util/DirectBuffer;)Ljava/nio/file/Path;

    move-result-object v3

    iput-object v3, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mTempImageFilePath:Ljava/nio/file/Path;

    .line 91
    new-instance v3, Lcom/samsung/android/camera/core2/util/StrideInfo;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/samsung/android/camera/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->z(Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    .line 92
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->release()V

    goto :goto_4

    .line 93
    :cond_8
    new-instance v0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v3, v4, [Ljava/lang/Object;

    .line 94
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2, v7, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_9
    :goto_3
    iget-object v1, v14, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-virtual {v14, v3, v1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->saveTempImageToFile(Ljava/nio/file/Path;Lcom/samsung/android/camera/core2/util/DirectBuffer;)Ljava/nio/file/Path;

    move-result-object v1

    iput-object v1, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mTempImageFilePath:Ljava/nio/file/Path;

    .line 96
    :goto_4
    iget-object v1, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mTempImageFilePath:Ljava/nio/file/Path;

    if-eqz v1, :cond_b

    .line 97
    sget-object v2, Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;->FILE:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    iput-object v2, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    if-eqz v0, :cond_a

    .line 98
    invoke-static {v1}, Lcom/samsung/android/camera/core2/util/FileUtils;->D(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 99
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->saveTempImageDataToFile()Ljava/nio/file/Path;

    .line 100
    iput-boolean v4, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mRemainTempImageFile:Z

    goto :goto_5

    .line 101
    :cond_a
    iput-boolean v6, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mRemainTempImageFile:Z

    :goto_5
    return-void

    .line 102
    :cond_b
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "create error request : can\'t create tempFile"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;->NONE:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    iput-object v0, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    .line 104
    iput-boolean v6, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mRemainTempImageFile:Z

    return-void

    .line 105
    :cond_c
    :goto_6
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v6

    iget v2, v14, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mSequenceId:I

    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, v14, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mCurrentProcessCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    iget v3, v14, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mTotalProcessCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "create error request : %s, sequenceId %d, processCount %d/%d"

    .line 107
    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;->NONE:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    iput-object v0, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    .line 109
    iput v6, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mDataSize:I

    .line 110
    iput-object v5, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    .line 111
    iput-object v5, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mTempImageFilePath:Ljava/nio/file/Path;

    .line 112
    iput-boolean v6, v14, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mRemainTempImageFile:Z

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/util/ImageBuffer;)Lcom/samsung/android/camera/core2/util/ImageInfo;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->lambda$new$3(Lcom/samsung/android/camera/core2/util/ImageBuffer;)Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static asPostProcessFileRequest(Lcom/samsung/android/camera/core2/node/NodeChain$Key;Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/util/DirectBufferPool;)Lcom/samsung/android/camera/core2/processor/PostProcessRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/camera/core2/util/ImageFile;",
            ">;",
            "Lcom/samsung/android/camera/core2/util/DirectBufferPool;",
            ")",
            "Lcom/samsung/android/camera/core2/processor/PostProcessRequest;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;

    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;-><init>(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/node/NodeChain$Key;Lcom/samsung/android/camera/core2/util/DirectBufferPool;)V

    return-object v0
.end method

.method public static asPostProcessRequest(Lcom/samsung/android/camera/core2/node/NodeChain$Key;Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/util/DirectBufferPool;Lcom/samsung/android/camera/core2/util/DirectBufferPool;Ljava/io/File;)Lcom/samsung/android/camera/core2/processor/PostProcessRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;",
            "Lcom/samsung/android/camera/core2/util/DirectBufferPool;",
            "Lcom/samsung/android/camera/core2/util/DirectBufferPool;",
            "Ljava/io/File;",
            ")",
            "Lcom/samsung/android/camera/core2/processor/PostProcessRequest;"
        }
    .end annotation

    new-instance v6, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;-><init>(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/node/NodeChain$Key;Lcom/samsung/android/camera/core2/util/DirectBufferPool;Lcom/samsung/android/camera/core2/util/DirectBufferPool;Ljava/io/File;)V

    return-object v6
.end method

.method public static synthetic b(Lcom/samsung/android/camera/core2/util/ImageFile;)Lcom/samsung/android/camera/core2/util/ImageInfo;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->lambda$new$1(Lcom/samsung/android/camera/core2/util/ImageFile;)Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/ExtraBundle;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->lambda$new$4(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/ExtraBundle;Ljava/lang/Integer;)V

    return-void
.end method

.method private checkValidImgRegion(Lcom/samsung/android/camera/core2/processor/ProcessRequest;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getCamCapability()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->X0()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->hasValidImgRegion()Z

    move-result p0

    return p0
.end method

.method private createTempImageData()Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;
    .locals 3

    new-instance v0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;-><init>(D)V

    new-instance v1, Lcom/samsung/android/camera/core2/processor/n;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/processor/n;-><init>(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;->a(Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;Landroid/util/Size;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->lambda$getData$5(Landroid/util/Size;Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->lambda$new$0(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->lambda$createTempImageData$6(Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;)V

    return-void
.end method

.method public static synthetic g(Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->lambda$new$2(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->ERROR:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mUsage:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    if-ne v0, v1, :cond_0

    const-string p0, "error usage"

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mData:Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string p0, "data is null"

    return-object p0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    sget-object v0, Lcom/samsung/android/camera/core2/ExtraBundle;->y:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "result file is null"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getPostProcessBufferSize(IZLcom/samsung/android/camera/core2/ExtraBundle;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest$1;->$SwitchMap$com$samsung$android$camera$core2$util$ImgFormat:[I

    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    const/4 p2, 0x4

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not supported post process buffer format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 p2, 0xb4

    if-ne p1, p2, :cond_2

    .line 3
    sget-object p0, Lcom/samsung/android/camera/core2/ExtraBundle;->e:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p3, p0}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    .line 4
    sget-object p1, Lcom/samsung/android/camera/core2/util/ImgFormat;->t:Lcom/samsung/android/camera/core2/util/ImgFormat;

    invoke-virtual {p1, p0, v2}, Lcom/samsung/android/camera/core2/util/ImgFormat;->b(Landroid/util/Size;Lcom/samsung/android/camera/core2/util/StrideInfo;)I

    move-result p0

    return p0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/camera/core2/util/ImgFormat;->b(Landroid/util/Size;Lcom/samsung/android/camera/core2/util/StrideInfo;)I

    move-result p0

    return p0

    :cond_3
    if-eqz p2, :cond_4

    .line 6
    sget-object p1, Lcom/samsung/android/camera/core2/util/ImgFormat;->w:Lcom/samsung/android/camera/core2/util/ImgFormat;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/camera/core2/util/ImgFormat;->b(Landroid/util/Size;Lcom/samsung/android/camera/core2/util/StrideInfo;)I

    move-result p0

    return p0

    .line 7
    :cond_4
    sget-object p1, Lcom/samsung/android/camera/core2/util/ImgFormat;->w:Lcom/samsung/android/camera/core2/util/ImgFormat;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Lcom/samsung/android/camera/core2/util/ImgFormat;->b(Landroid/util/Size;Lcom/samsung/android/camera/core2/util/StrideInfo;)I

    move-result p0

    return p0
.end method

.method private getTempImageFilePath()Ljava/nio/file/Path;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->D(I)Lcom/samsung/android/camera/core2/container/DynamicShotMode;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getCurrentProcessCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->H()I

    move-result v0

    iget v3, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mTotalProcessCount:I

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    sget-object v3, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTempImageFilePath - referenceIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/camera/core2/ExtraBundle;->y:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {v3, v4}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/camera/core2/util/FileUtils;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    const-string v8, "%s_input_%d.tmp"

    invoke-static {v4, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 8
    iget-boolean v6, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mIsRecoveryMergeDsMode:Z

    if-eqz v6, :cond_0

    if-ne v1, v0, :cond_0

    .line 9
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v3, v1, v7

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%s_%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 10
    sget-object v0, Lcom/samsung/android/camera/core2/util/FileUtils;->h:Ljava/nio/file/Path;

    invoke-interface {v0, p0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mCacheDirPath:Ljava/nio/file/Path;

    const-string v0, "post_process_temp"

    invoke-interface {p0, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method private hasValidImgRegion()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->R1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 3
    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/ImageUtils;->isInvalidRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_2

    return v1

    .line 6
    :cond_2
    sget-object v1, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasValidImgRegion : size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", validImgRegion="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private synthetic lambda$createTempImageData$6(Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getImageInfo()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImgFormat;->h()I

    move-result v1

    iput v1, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;->b:I

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;->c:Landroid/util/Size;

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getRowStride()I

    move-result v1

    iput v1, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;->d:I

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getHeightSlice()I

    move-result v0

    iput v0, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;->e:I

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->p()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;->f:J

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->k()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;->g:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$getData$5(Landroid/util/Size;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->x(Landroid/util/Size;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->u(Lcom/samsung/android/camera/core2/util/ImgFormat;)V

    .line 3
    new-instance p0, Lcom/samsung/android/camera/core2/util/StrideInfo;

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    invoke-virtual {p2, p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->z(Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$new$1(Lcom/samsung/android/camera/core2/util/ImageFile;)Lcom/samsung/android/camera/core2/util/ImageInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageFile;->a()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/processor/q;->a:Lcom/samsung/android/camera/core2/processor/q;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->f(Lcom/samsung/android/camera/core2/util/ImageInfo;Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$2(Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$new$3(Lcom/samsung/android/camera/core2/util/ImageBuffer;)Lcom/samsung/android/camera/core2/util/ImageInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/processor/r;->a:Lcom/samsung/android/camera/core2/processor/r;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->f(Lcom/samsung/android/camera/core2/util/ImageInfo;Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$4(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/ExtraBundle;Ljava/lang/Integer;)V
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getMode()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->x(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getMode()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->isSupportIncompleteMerge(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    sget-object p0, Lcom/samsung/android/camera/core2/ExtraBundle;->t:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    :cond_0
    return-void
.end method

.method private loadTempImageFromFile()Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mFileBufferPool:Lcom/samsung/android/camera/core2/util/DirectBufferPool;

    iget v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mDataSize:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->b(ILjava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/BufferBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mFileTempRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mDataSize:I

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->allocate(I)Lcom/samsung/android/camera/core2/util/DirectBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mFileTempRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mFileTempRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mFileTempRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mTempImageFilePath:Ljava/nio/file/Path;

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/util/BufferBase;->put(Ljava/io/File;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mFileTempRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadTempImageFromFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mTempImageFilePath:Ljava/nio/file/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mFileTempRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->k(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTempImageFromFile is failed : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v2
.end method

.method private saveTempImageDataToFile()Ljava/nio/file/Path;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "saveTempImageDataToFile"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mTempImageFilePath:Ljava/nio/file/Path;

    const-string v1, ".json"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/FileUtils;->f(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->createTempImageData()Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/JsonUtils;->c(Lcom/samsung/android/camera/core2/util/JsonUtils$JsonData;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string v1, "rw-rw----"

    .line 4
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/FileUtils;->j(Ljava/nio/file/Path;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 5
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 6
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveTempImageDataToFile is failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 7
    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v0, "can\'t create file using tempImageDataFilePath"

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->releaseData()V

    return-void
.end method

.method public declared-synchronized getData()Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 5

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mIsDataReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-object v1

    .line 4
    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest$1;->$SwitchMap$com$samsung$android$camera$core2$processor$PostProcessRequest$SavingType:[I

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    .line 5
    monitor-exit p0

    return-object v1

    .line 6
    :cond_1
    :try_start_2
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v2, v2}, Landroid/util/Size;-><init>(II)V

    .line 7
    new-instance v1, Lcom/samsung/android/camera/core2/processor/o;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/camera/core2/processor/o;-><init>(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;Landroid/util/Size;)V

    invoke-static {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->e(Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getData - skip : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/camera/core2/util/ImgFormat;->b(Landroid/util/Size;Lcom/samsung/android/camera/core2/util/StrideInfo;)I

    move-result v0

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a(ILcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 10
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->loadTempImageFromFile()Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 11
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->k(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getData()Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getImageInfo()Lcom/samsung/android/camera/core2/util/ImageInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    return-object p0
.end method

.method public getNodeChainKey()Lcom/samsung/android/camera/core2/node/NodeChain$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mNodeChainKey:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    return-object p0
.end method

.method public getResultFile()Ljava/io/File;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    sget-object v0, Lcom/samsung/android/camera/core2/ExtraBundle;->y:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method

.method public getSavingType()Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    return-object p0
.end method

.method public isErrorRequest()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;->NONE:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized releaseData()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mIsDataReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest$1;->$SwitchMap$com$samsung$android$camera$core2$processor$PostProcessRequest$SavingType:[I

    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mFileTempRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-eqz v0, :cond_2

    .line 5
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mFileBufferPool:Lcom/samsung/android/camera/core2/util/DirectBufferPool;

    invoke-virtual {v2, v0}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->g(Lcom/samsung/android/camera/core2/util/BufferBase;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mFileTempRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mRemainTempImageFile:Z

    if-nez v0, :cond_4

    new-array v0, v1, [Ljava/nio/file/Path;

    const/4 v2, 0x0

    .line 8
    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mTempImageFilePath:Ljava/nio/file/Path;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/FileUtils;->l([Ljava/nio/file/Path;)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mMemoryBufferPool:Lcom/samsung/android/camera/core2/util/DirectBufferPool;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mRentBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-virtual {v0, v2}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->g(Lcom/samsung/android/camera/core2/util/BufferBase;)V

    .line 10
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->mIsDataReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveTempImageToFile(Ljava/nio/file/Path;Lcom/samsung/android/camera/core2/util/DirectBuffer;)Ljava/nio/file/Path;
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    .line 2
    invoke-static {p0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/FileUtils;->g(Ljava/nio/file/Path;[Ljava/lang/String;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveTempImageToFile - createDirectories is failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    :try_start_1
    const-string v0, "rwxrwxrwx"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/FileUtils;->j(Ljava/nio/file/Path;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 6
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveTempImageToFile - createFile is failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    move-object p1, p0

    :goto_1
    if-eqz p1, :cond_1

    .line 7
    :try_start_2
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 8
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/camera/core2/util/BufferBase;->get(Ljava/io/File;)V

    .line 9
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 10
    sget-object p2, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveTempImageToFile finalTempImageFilePath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 11
    sget-object p2, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveTempImageToFile is failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_3

    .line 12
    :cond_1
    sget-object p0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p2, "saveTempImageToFile is failed : can\'t create tempFile"

    invoke-static {p0, p2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_2
    move-object p0, p1

    :goto_3
    return-object p0
.end method
