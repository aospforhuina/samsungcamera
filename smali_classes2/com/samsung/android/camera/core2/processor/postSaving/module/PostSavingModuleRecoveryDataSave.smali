.class public Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;
.super Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModule;
.source "PostSavingModuleRecoveryDataSave.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BITMAP_COMPRESS_QUALITY:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModule;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;Ljava/lang/String;IILcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;->lambda$createRecoveryData$0(Ljava/lang/String;IILcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;)V

    return-void
.end method

.method private createDraftImageFileData(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getImageBuffer()Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImgFormat;->h()I

    move-result p0

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getRealDraftImageFilePath()Ljava/nio/file/Path;

    move-result-object p1

    .line 6
    new-instance v1, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;-><init>(ILandroid/util/Size;Ljava/lang/String;)V

    return-object v1
.end method

.method private createRecoveryData(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModule;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "createRecoveryData"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getImageBuffer()Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->g()Ljava/lang/String;

    move-result-object v4

    .line 6
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->R:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->h(Ljava/lang/Integer;)I

    move-result v5

    .line 7
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->Q:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 8
    new-instance v0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;-><init>(D)V

    new-instance v1, Lcom/samsung/android/camera/core2/processor/postSaving/module/c;

    move-object v2, v1

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/camera/core2/processor/postSaving/module/c;-><init>(Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;Ljava/lang/String;IILcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->a(Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

    move-result-object p0

    return-object p0
.end method

.method private createResultImageFileData(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/ExtraBundle;->e:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->g:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getResultFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    .line 5
    new-instance v1, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;-><init>(ILandroid/util/Size;Ljava/lang/String;)V

    return-object v1
.end method

.method private createWatermarkData(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;->isWatermarkEnabled(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModule;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "createWatermarkData"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object p0

    .line 4
    sget-object p1, Lcom/samsung/android/camera/core2/ExtraBundle;->Y:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/container/WatermarkInfo;

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/container/WatermarkInfo;->a()Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/container/WatermarkInfo;->c()Lcom/samsung/android/camera/core2/container/WatermarkInfo$Margin;

    move-result-object p0

    .line 7
    new-instance v0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;->a()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Margin;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Margin;->a()I

    move-result p0

    invoke-direct {v0, p1, v1, p0}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;-><init>(III)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private generateRecoveryData(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;->createRecoveryData(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;->saveRecoveryDataToFile(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;->saveWatermarkBitmapToFile(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V

    return-void
.end method

.method private isRecoveryMergeDsMode(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getImageBuffer()Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p0

    .line 4
    sget-object p1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->R:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->h(Ljava/lang/Integer;)I

    move-result p0

    .line 5
    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->v(I)Z

    move-result p0

    return p0
.end method

.method private isWatermarkEnabled(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object p0

    .line 2
    sget-object p1, Lcom/samsung/android/camera/core2/ExtraBundle;->m:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    sget-object p1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->Q:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$createRecoveryData$0(Ljava/lang/String;IILcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p5, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->b:Ljava/lang/String;

    .line 2
    iput p2, p5, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->c:I

    .line 3
    iput p3, p5, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->e:I

    .line 4
    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getSequenceId()I

    move-result p1

    iput p1, p5, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->f:I

    .line 5
    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getCore2Uri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p5, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->h:Ljava/lang/String;

    .line 6
    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getSecMpUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p5, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->i:Ljava/lang/String;

    .line 7
    invoke-direct {p0, p4}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;->createDraftImageFileData(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    move-result-object p1

    iput-object p1, p5, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->j:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    .line 8
    invoke-direct {p0, p4}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;->createResultImageFileData(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    move-result-object p1

    iput-object p1, p5, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->k:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    .line 9
    invoke-static {p2}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->v(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p5, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->d:Z

    .line 11
    invoke-direct {p0, p4}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;->createWatermarkData(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;

    move-result-object p0

    iput-object p0, p5, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->g:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;

    :cond_0
    return-void
.end method

.method private saveRecoveryDataToFile(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getResultFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/FileUtils;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getSequenceId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v1, v3

    const-string p0, "%s_%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/util/FileUtils;->h:Ljava/nio/file/Path;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".json"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    .line 4
    invoke-static {p2}, Lcom/samsung/android/camera/core2/util/JsonUtils;->c(Lcom/samsung/android/camera/core2/util/JsonUtils$JsonData;)Ljava/lang/String;

    move-result-object p2

    .line 5
    sget-object v0, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModule;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "saveRecoveryDataToFile E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "rw-rw----"

    .line 6
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/camera/core2/util/FileUtils;->j(Ljava/nio/file/Path;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 7
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    new-array v1, v3, [Ljava/nio/file/OpenOption;

    sget-object v3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v1, v2

    invoke-static {p0, p2, v1}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "saveRecoveryDataToFile X"

    .line 8
    invoke-static {v0, p2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->setRecoveryDataFilePath(Ljava/nio/file/Path;)V

    return-void

    :catch_0
    move-exception p0

    .line 10
    sget-object p1, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModule;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveRecoveryDataToFile is failed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 11
    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string p1, "can\'t create or write using recoveryDataFilePath"

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private saveWatermarkBitmapToFile(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;->isRecoveryMergeDsMode(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;->isWatermarkEnabled(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/camera/core2/ExtraBundle;->Y:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {v0, p0}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/container/WatermarkInfo;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getRealDraftImageFilePath()Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, ".bmp"

    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/FileUtils;->f(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModule;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "saveWatermarkBitmapToFile E"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "rw-rw----"

    .line 7
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/FileUtils;->j(Ljava/nio/file/Path;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/container/WatermarkInfo;->b()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 9
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 12
    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->setRecoveryWatermarkBitmapFilePath(Ljava/nio/file/Path;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p0, "saveWatermarkBitmapToFile X"

    .line 13
    invoke-static {v1, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 14
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 15
    sget-object p1, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModule;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveWatermarkBitmapToFile is failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 16
    new-instance p1, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "PostSavingModuleRecoveryDataSave"

    return-object p0
.end method

.method public runModule(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModule;->mExtraSavingInfoContainer:Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;->generateRecoveryData(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V

    return-void
.end method
