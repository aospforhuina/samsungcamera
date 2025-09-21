.class public Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;
.super Ljava/lang/Object;
.source "RecoveryProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecoveryProcessSequence"
.end annotation


# instance fields
.field private final mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

.field private mCurrentCount:I

.field private mDraftImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

.field private final mDsMode:I

.field private final mExtraBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

.field private final mPostProcessRecoveryData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

.field private final mProcessRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/camera/core2/util/ImageFile;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRecoveryDataFilePath:Ljava/nio/file/Path;

.field private final mSequenceId:I

.field private final mTempImageDirPath:Ljava/nio/file/Path;

.field private final mTotalCount:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mProcessRequests:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mCurrentCount:I

    .line 4
    iput-object p2, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mPostProcessRecoveryData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

    .line 5
    iput-object p3, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mRecoveryDataFilePath:Ljava/nio/file/Path;

    .line 6
    iput-object p4, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mTempImageDirPath:Ljava/nio/file/Path;

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceManager;->b(Landroid/content/Context;)Lcom/samsung/android/camera/core2/device/CamDeviceManager;

    move-result-object p3

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->getCameraId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/samsung/android/camera/core2/device/CamDeviceManager;->a(Ljava/lang/String;)Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 8
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->getNextSequenceId()I

    move-result p4

    iput p4, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mSequenceId:I

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->getTempImageDirPaths()Ljava/util/List;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mTotalCount:I

    .line 11
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->isRecoveryMergeDsMode()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->getDsMode()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    if-ne v2, v3, :cond_1

    if-eqz v4, :cond_1

    .line 12
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->c()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v5

    const-string v6, "imageDataFilePathList is empty, change dsMode(0x%X) to SINGLE"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v0

    invoke-static {v5, v6, v7}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iput v0, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mDsMode:I

    goto :goto_1

    .line 14
    :cond_1
    iput v4, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mDsMode:I

    :goto_1
    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    .line 15
    sget-object v5, Lcom/samsung/android/camera/core2/ExtraBundle;->m0:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    aput-object v5, v4, v0

    .line 16
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v3

    sget-object v5, Lcom/samsung/android/camera/core2/ExtraBundle;->b:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 p3, 0x4

    sget-object v7, Lcom/samsung/android/camera/core2/ExtraBundle;->e:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    aput-object v7, v4, p3

    const/4 p3, 0x5

    .line 17
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->getResultImageFileData()Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->c()Landroid/util/Size;

    move-result-object v7

    aput-object v7, v4, p3

    const/4 p3, 0x6

    sget-object v7, Lcom/samsung/android/camera/core2/ExtraBundle;->g:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    aput-object v7, v4, p3

    const/4 p3, 0x7

    .line 18
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->getResultImageFileData()Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p3

    const/16 p2, 0x8

    sget-object p3, Lcom/samsung/android/camera/core2/ExtraBundle;->v:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    aput-object p3, v4, p2

    const/16 p2, 0x9

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v4, p2

    .line 20
    invoke-static {v4}, Lcom/samsung/android/camera/core2/ExtraBundle;->h([Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mExtraBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->setDraftImageInfo()V

    .line 22
    invoke-direct {p0, v1}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->addProcessRequests(Ljava/util/List;)V

    .line 23
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->c()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p2

    const-string p3, "RecoveryProcessSequence : sequence id : %d, dsMode(0x%X), Total count(%d)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v1, v0

    iget p4, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mDsMode:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v1, v6

    invoke-static {p2, p3, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 24
    :catch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->recoveryProcessFailed(Landroid/content/Context;)V

    .line 25
    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string p1, "Creating RecoveryProcessSequence is failed"

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(I)[Landroid/util/Size;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->lambda$getImageFileListFromImageDataFiles$3(I)[Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method private addProcessRequests(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->c()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "addProcessRequests E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mProcessRequests:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mPostProcessRecoveryData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

    .line 3
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->getDraftImageFileData()Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->a()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mDraftImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/ImageFile;->h(Ljava/io/File;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageFile;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->DRAFT_RESOURCE_IMAGE:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    .line 4
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->createImageFileProcessRequest(Lcom/samsung/android/camera/core2/util/ImageFile;Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;)Lcom/samsung/android/camera/core2/processor/ProcessRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->getImageFileListFromImageDataFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/util/ImageFile;

    .line 7
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mProcessRequests:Ljava/util/List;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->RESOURCE_IMAGE:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->createImageFileProcessRequest(Lcom/samsung/android/camera/core2/util/ImageFile;Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;)Lcom/samsung/android/camera/core2/processor/ProcessRequest;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->c()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "addProcessRequests X"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->lambda$getImageFileListFromImageDataFiles$2(Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method

.method public static synthetic c(Ljava/nio/file/Path;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->lambda$getTempImageDirPaths$1(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static create(Landroid/content/Context;Ljava/nio/file/Path;)Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/core2/util/FileUtils;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/samsung/android/camera/core2/util/FileUtils;->h:Ljava/nio/file/Path;

    invoke-interface {v2, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 3
    invoke-static {p1}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->createPostProcessRecoveryData(Ljava/nio/file/Path;)Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/nio/file/Path;

    const/4 v2, 0x0

    aput-object p1, p0, v2

    .line 4
    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/FileUtils;->l([Ljava/nio/file/Path;)V

    new-array p0, v2, [Ljava/lang/Boolean;

    .line 5
    invoke-static {v1, p0}, Lcom/samsung/android/camera/core2/util/FileUtils;->k(Ljava/nio/file/Path;[Ljava/lang/Boolean;)V

    .line 6
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->c()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "RecoveryProcessSequence creation failure : PostProcessRecoveryData is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_0
    new-instance v3, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;

    invoke-direct {v3, p0, v2, p1, v1}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;-><init>(Landroid/content/Context;Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    .line 8
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->c()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecoveryProcessSequence create is failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private createImageFileProcessRequest(Lcom/samsung/android/camera/core2/util/ImageFile;Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;)Lcom/samsung/android/camera/core2/processor/ProcessRequest;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/util/ImageFile;",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;",
            ")",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/camera/core2/util/ImageFile;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v15, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;->POST_PROCESS:Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

    iget v3, v0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mDsMode:I

    iget-object v1, v0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mPostProcessRecoveryData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

    .line 2
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->getDsExtraInfo()I

    move-result v4

    iget-object v1, v0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mPostProcessRecoveryData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->getResultImageFileData()Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->b()I

    move-result v5

    iget-object v10, v0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mExtraBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    iget-object v11, v0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    iget v12, v0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mSequenceId:I

    iget v1, v0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mCurrentCount:I

    add-int/lit8 v13, v1, 0x1

    iput v13, v0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mCurrentCount:I

    iget v14, v0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mTotalCount:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v15

    move-object/from16 v6, p2

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v14}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;-><init>(Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;IIILcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamCapability;III)V

    .line 3
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->c()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createImageFileProcessRequest : CurrentCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mCurrentCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", TotalCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mTotalCount:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v15
.end method

.method private static createPostProcessRecoveryData(Ljava/nio/file/Path;)Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

    invoke-static {v1, p0}, Lcom/samsung/android/camera/core2/util/JsonUtils;->b(Ljava/lang/Class;Ljava/nio/file/Path;)Lcom/samsung/android/camera/core2/util/JsonUtils$JsonData;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->c()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string v1, "createPostProcessRecoveryData is failed : RecoveryDataFilePath is null"

    invoke-static {p0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->c()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPostProcessRecoveryData is failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic d(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->lambda$moveDraftImageFileToResultFilePathAndScan$4(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private disableSecMpUsingUpdateDB(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "media_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mPostProcessRecoveryData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->getSecMpUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/camera/core2/processor/PostProcessDBHelper;->updateToDB(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->lambda$setDraftImageInfo$0(Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method

.method private getImageFileListFromImageDataFiles(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/util/ImageFile;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->c()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "getImageFileListFromImageDataFiles E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    const-string v3, ".tmp"

    .line 5
    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/util/FileUtils;->f(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    const-class v4, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;

    invoke-static {v4, v2}, Lcom/samsung/android/camera/core2/util/JsonUtils;->b(Ljava/lang/Class;Ljava/nio/file/Path;)Lcom/samsung/android/camera/core2/util/JsonUtils$JsonData;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;

    if-eqz v2, :cond_0

    .line 8
    new-instance v4, Lcom/samsung/android/camera/core2/processor/m0;

    invoke-direct {v4, v2}, Lcom/samsung/android/camera/core2/processor/m0;-><init>(Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;)V

    invoke-static {v4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->e(Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->c()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getImageFileListFromImageDataFiles - add ImageFile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->B()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {v3, v2}, Lcom/samsung/android/camera/core2/util/ImageFile;->h(Ljava/io/File;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageFile;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mExtraBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    sget-object p1, Lcom/samsung/android/camera/core2/ExtraBundle;->C:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/n0;->a:Lcom/samsung/android/camera/core2/processor/n0;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 13
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->c()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "getImageFileListFromImageDataFiles X"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTempImageDirPaths()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mTempImageDirPath:Ljava/nio/file/Path;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mTempImageDirPath:Ljava/nio/file/Path;

    new-array v1, v2, [Ljava/nio/file/FileVisitOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v1, 0x1

    .line 4
    :try_start_1
    invoke-interface {p0, v1, v2}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->d()Ljava/nio/file/PathMatcher;

    move-result-object v2

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/processor/i0;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/processor/i0;-><init>(Ljava/nio/file/PathMatcher;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/core2/processor/o0;->a:Lcom/samsung/android/camera/core2/processor/o0;

    .line 6
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 7
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 8
    invoke-static {}, Ljava/util/stream/Collectors;->toUnmodifiableList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-interface {p0}, Ljava/util/stream/Stream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_0

    .line 10
    :try_start_3
    invoke-interface {p0}, Ljava/util/stream/Stream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    .line 11
    :goto_1
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->c()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTempImageDirPaths is failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-object v0
.end method

.method private static synthetic lambda$getImageFileListFromImageDataFiles$2(Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->getImageSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->x(Landroid/util/Size;)V

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/util/StrideInfo;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->getImageSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->getRowStride()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->getHeightSlice()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/camera/core2/util/StrideInfo;-><init>(Landroid/util/Size;II)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->z(Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->getImageFormat()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->t(I)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->A(J)V

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;->getPhysicalId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->v(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$getImageFileListFromImageDataFiles$3(I)[Landroid/util/Size;
    .locals 0

    new-array p0, p0, [Landroid/util/Size;

    return-object p0
.end method

.method private static synthetic lambda$getTempImageDirPaths$1(Ljava/nio/file/Path;)Z
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/FileUtils;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tmp"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$moveDraftImageFileToResultFilePathAndScan$4(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->c()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was scanned successfully."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$setDraftImageInfo$0(Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->c()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->x(Landroid/util/Size;)V

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/util/StrideInfo;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->c()Landroid/util/Size;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->z(Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->b()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->t(I)V

    return-void
.end method

.method private static moveDraftImageFileToResultFilePathAndScan(Landroid/content/Context;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/nio/file/CopyOption;

    .line 1
    sget-object v2, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2, v1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    new-array p1, v0, [Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const/4 p2, 0x0

    sget-object v0, Lcom/samsung/android/camera/core2/processor/k0;->a:Lcom/samsung/android/camera/core2/processor/k0;

    invoke-static {p0, p1, p2, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->c()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "moveDraftImageFileToResultFilePathAndScan is failed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private recoveryProcessFailed(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->c()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "recoveryProcessFailed E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/file/Path;

    .line 2
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mRecoveryDataFilePath:Ljava/nio/file/Path;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/camera/core2/util/FileUtils;->l([Ljava/nio/file/Path;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->disableSecMpUsingUpdateDB(Landroid/content/Context;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mPostProcessRecoveryData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->getDraftImageFileData()Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->a()Ljava/nio/file/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mPostProcessRecoveryData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

    .line 6
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->getResultImageFileData()Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->a()Ljava/nio/file/Path;

    move-result-object v2

    .line 7
    invoke-static {p1, v1, v2}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->moveDraftImageFileToResultFilePathAndScan(Landroid/content/Context;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mTempImageDirPath:Ljava/nio/file/Path;

    new-array v1, v3, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->c()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mTempImageDirPath:Ljava/nio/file/Path;

    aput-object v1, v0, v3

    const-string v1, "recoveryProcessFailed - delete tempImageDirPath(%s)"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mTempImageDirPath:Ljava/nio/file/Path;

    new-array p1, v3, [Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/FileUtils;->k(Ljava/nio/file/Path;[Ljava/lang/Boolean;)V

    .line 11
    :cond_0
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->c()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "recoveryProcessFailed X"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private setDraftImageInfo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mPostProcessRecoveryData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->getDraftImageFileData()Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/processor/l0;

    invoke-direct {v1, v0}, Lcom/samsung/android/camera/core2/processor/l0;-><init>(Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;)V

    invoke-static {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->e(Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mDraftImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    return-void
.end method


# virtual methods
.method public createSavingInfoContainerForRecovery(Landroid/content/Context;)Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mPostProcessRecoveryData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->getResultImageFileData()Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->a()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mPostProcessRecoveryData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->getDraftImageFileData()Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;->a()Ljava/nio/file/Path;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;

    iget v3, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mSequenceId:I

    invoke-direct {v2, p1, v3, v0}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;-><init>(Landroid/content/Context;ILjava/io/File;)V

    .line 4
    invoke-virtual {v2, v1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->setRealDraftImageFilePath(Ljava/nio/file/Path;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mDraftImageInfo:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->setDraftImageInfo(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mPostProcessRecoveryData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->getCore2Uri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->setCore2Uri(Landroid/net/Uri;)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mPostProcessRecoveryData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->getSecMpUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->setSecMpUri(Landroid/net/Uri;)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mRecoveryDataFilePath:Ljava/nio/file/Path;

    invoke-virtual {v2, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->setRecoveryDataFilePath(Ljava/nio/file/Path;)V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mPostProcessRecoveryData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->getRecoveryDataId()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->setRecoveryDataId(I)V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mExtraBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    invoke-virtual {v2, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->setExtraBundle(Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 11
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mPostProcessRecoveryData:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;->getWatermarkData()Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, ".bmp"

    .line 12
    invoke-static {v1, p0}, Lcom/samsung/android/camera/core2/util/FileUtils;->f(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->setRecoveryWatermarkBitmapFilePath(Ljava/nio/file/Path;)V

    :cond_0
    return-object v2
.end method

.method public getProcessRequests()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/camera/core2/util/ImageFile;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mProcessRequests:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSequenceId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->mSequenceId:I

    return p0
.end method
