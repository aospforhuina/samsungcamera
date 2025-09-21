.class public Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleSefInsert;
.super Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModule;
.source "PostSavingModuleSefInsert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModule;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleSefInsert;->lambda$makeSefParamList$2(Ljava/util/List;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleSefInsert;->lambda$makeSefParamList$0(Ljava/util/List;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/List;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleSefInsert;->lambda$makeSefParamList$1(Ljava/util/List;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;)V

    return-void
.end method

.method private static synthetic lambda$makeSefParamList$0(Ljava/util/List;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;)V
    .locals 0

    .line 1
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p0, 0xcc1

    .line 2
    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->addSefFileType(I)V

    return-void
.end method

.method private static synthetic lambda$makeSefParamList$1(Ljava/util/List;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;)V
    .locals 0

    .line 1
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p0, 0xc71

    .line 2
    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->addSefFileType(I)V

    return-void
.end method

.method private static synthetic lambda$makeSefParamList$2(Ljava/util/List;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;)V
    .locals 0

    .line 1
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p0, 0xc61

    .line 2
    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->addSefFileType(I)V

    return-void
.end method

.method private makeSefParamList(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getImageBuffer()Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/samsung/android/camera/core2/ExtraBundle;->b:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {v0, v2}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/core2/CamCapability;

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->p()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/samsung/android/camera/core2/util/SEFInterface;->y(J)Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/SEFInterface;->w(Landroid/content/Context;)Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    .line 9
    new-instance v1, Lcom/samsung/android/camera/core2/processor/postSaving/module/d;

    invoke-direct {v1, v4}, Lcom/samsung/android/camera/core2/processor/postSaving/module/d;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 10
    invoke-static {v3, v2, v0}, Lcom/samsung/android/camera/core2/util/SEFInterface;->z(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    .line 11
    new-instance v0, Lcom/samsung/android/camera/core2/processor/postSaving/module/d;

    invoke-direct {v0, v4}, Lcom/samsung/android/camera/core2/processor/postSaving/module/d;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 12
    invoke-static {v3}, Lcom/samsung/android/camera/core2/util/SEFInterface;->v(Landroid/hardware/camera2/TotalCaptureResult;)Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    .line 13
    new-instance v0, Lcom/samsung/android/camera/core2/processor/postSaving/module/d;

    invoke-direct {v0, v4}, Lcom/samsung/android/camera/core2/processor/postSaving/module/d;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 14
    invoke-static {v3}, Lcom/samsung/android/camera/core2/util/SEFInterface;->u(Landroid/hardware/camera2/CaptureResult;)Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/camera/core2/processor/postSaving/module/f;

    invoke-direct {v0, v4, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/module/f;-><init>(Ljava/util/List;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V

    .line 15
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 16
    invoke-static {}, Lcom/samsung/android/camera/core2/util/SemWrapper;->f()I

    move-result p0

    const v0, 0xc3b4

    if-lt p0, v0, :cond_0

    .line 17
    invoke-static {v3}, Lcom/samsung/android/camera/core2/util/SEFInterface;->A(Landroid/hardware/camera2/TotalCaptureResult;)Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/camera/core2/processor/postSaving/module/g;

    invoke-direct {v0, v4, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/module/g;-><init>(Ljava/util/List;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V

    .line 18
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 19
    invoke-static {v3}, Lcom/samsung/android/camera/core2/util/SEFInterface;->x(Landroid/hardware/camera2/TotalCaptureResult;)Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/camera/core2/processor/postSaving/module/e;

    invoke-direct {v0, v4, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/module/e;-><init>(Ljava/util/List;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V

    .line 20
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 21
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private writeSefToImageBuffer(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;Lcom/samsung/android/camera/core2/util/ImageBuffer;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleSefInsert;->makeSefParamList(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)Ljava/util/List;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/camera/core2/util/SEFInterface;->j(Lcom/samsung/android/camera/core2/util/ImageBuffer;Ljava/util/List;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    sget-object p1, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModule;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string/jumbo p0, "writeSefToImageBuffer failed(%s), so return copied imageBuffer"

    invoke-static {p1, p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {p2}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->b(Lcom/samsung/android/camera/core2/util/ImageBuffer;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method addSefInImage(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getImageBuffer()Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleSefInsert$1;->$SwitchMap$com$samsung$android$camera$core2$util$ImgFormat:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not supported image format - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 5
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleSefInsert;->writeSefToImageBuffer(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;Lcom/samsung/android/camera/core2/util/ImageBuffer;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "PostSavingModuleSefInsert"

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
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleSefInsert;->addSefInImage(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    .line 3
    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->setImageBuffer(Lcom/samsung/android/camera/core2/util/ImageBuffer;)V

    return-void
.end method
