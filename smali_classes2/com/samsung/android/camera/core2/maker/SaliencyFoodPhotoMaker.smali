.class Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;
.super Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;
.source "SaliencyFoodPhotoMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector;
    }
.end annotation


# static fields
.field private static final q1:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private final i1:Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector;

.field private j1:Lcom/samsung/android/camera/core2/node/food/saliencyFood/SaliencyFoodNodeBase;

.field private k1:Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;

.field private l1:Z

.field private m1:Lcom/samsung/android/camera/core2/util/Sequencer;

.field private n1:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

.field private final o1:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceCallback;

.field private final p1:Lcom/samsung/android/camera/core2/node/food/FoodNodeBase$NodeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "SaliencyFoodPhotoMaker"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->q1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector;-><init>(Lcom/samsung/android/camera/core2/maker/uj;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->i1:Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector;

    .line 3
    new-instance p1, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$1;-><init>(Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->o1:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceCallback;

    .line 4
    new-instance p1, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$2;-><init>(Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->p1:Lcom/samsung/android/camera/core2/node/food/FoodNodeBase$NodeCallback;

    const/16 p1, 0x23

    .line 5
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->o0:I

    const/16 p2, 0x100

    .line 6
    iput p2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->q0:I

    .line 7
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->N0:I

    .line 8
    new-instance p1, Lcom/samsung/android/camera/core2/maker/kj;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/kj;-><init>(Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->C0:Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;

    return-void
.end method

.method public static synthetic I3(Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->W3(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic J3(Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;Landroid/media/Image;Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector$AfResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->Z3(Landroid/media/Image;Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector$AfResult;)V

    return-void
.end method

.method public static synthetic K3(Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;Landroid/media/Image;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->a4(Landroid/media/Image;Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void
.end method

.method public static synthetic L3(Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/util/Sequencer;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->b4(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/util/Sequencer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic M3(Landroid/media/Image;Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector$AfResult;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->Y3(Landroid/media/Image;Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector$AfResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic N3(Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;)Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->U3()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O3(Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;Lcom/samsung/android/camera/core2/util/Sequencer;)Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector$AfResult;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->c4(Lcom/samsung/android/camera/core2/util/Sequencer;)Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector$AfResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P3(Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;)Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector$AfResult;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->X3(Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;)Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector$AfResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q3(Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;Lcom/samsung/android/camera/core2/util/Sequencer;Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector$AfResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->d4(Lcom/samsung/android/camera/core2/util/Sequencer;Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector$AfResult;)V

    return-void
.end method

.method static bridge synthetic R3(Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;)Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->i1:Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector;

    return-object p0
.end method

.method static bridge synthetic S3()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->q1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object v0
.end method

.method private T3()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    invoke-direct {v1, v0}, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->n1:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    return-object v0
.end method

.method private U3()Landroid/graphics/PointF;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->l1:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/food/saliencyFood/SaliencyFoodNodeBase;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/food/FoodNodeBase;->getSeedPoint()Landroid/graphics/PointF;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->q1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "getSeedPoint - %s"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private V3(Ljava/util/concurrent/ExecutorService;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/Sequencer;

    new-instance v1, Lcom/samsung/android/camera/core2/util/Sequencer$Configuration$Builder;

    const-string v2, "FoodResultRegionSequencer"

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/util/Sequencer$Configuration$Builder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "DETECT_AF"

    .line 2
    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/camera/core2/util/Sequencer$Configuration$Builder;->b(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/camera/core2/util/Sequencer$Configuration$Builder;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "GET_DATA"

    .line 3
    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/camera/core2/util/Sequencer$Configuration$Builder;->b(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/camera/core2/util/Sequencer$Configuration$Builder;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/Sequencer$Configuration$Builder;->c()Lcom/samsung/android/camera/core2/util/Sequencer$Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/Sequencer;-><init>(Lcom/samsung/android/camera/core2/util/Sequencer$Configuration;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->m1:Lcom/samsung/android/camera/core2/util/Sequencer;

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->o1:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceCallback;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/camera/core2/util/Sequencer;->u(Lcom/samsung/android/camera/core2/util/Sequencer$SequenceCallback;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private synthetic W3(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->f4(Landroid/graphics/PointF;)V

    return-void
.end method

.method private static synthetic X3(Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;)Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector$AfResult;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;->a()Lcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;

    move-result-object p0

    const-string v0, "DETECT_AF"

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector$AfResult;

    return-object p0
.end method

.method private static synthetic Y3(Landroid/media/Image;Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector$AfResult;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    iget-wide p0, p1, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector$AfResult;->b:J

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic Z3(Landroid/media/Image;Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector$AfResult;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->k1:Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;

    new-instance p2, Lcom/samsung/android/camera/core2/ExtraBundle;

    invoke-direct {p2}, Lcom/samsung/android/camera/core2/ExtraBundle;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->f(Landroid/media/Image;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Void;

    return-void
.end method

.method private synthetic a4(Landroid/media/Image;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 2

    const-string p2, "GET_DATA"

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/FlagLock;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->l1:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->m1:Lcom/samsung/android/camera/core2/util/Sequencer;

    invoke-virtual {v0, p2}, Lcom/samsung/android/camera/core2/util/Sequencer;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->m1:Lcom/samsung/android/camera/core2/util/Sequencer;

    invoke-virtual {v0, p2}, Lcom/samsung/android/camera/core2/util/Sequencer;->h(Ljava/lang/String;)Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/camera/core2/maker/pj;->a:Lcom/samsung/android/camera/core2/maker/pj;

    .line 5
    invoke-virtual {p2, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/camera/core2/maker/qj;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/maker/qj;-><init>(Landroid/media/Image;)V

    .line 6
    invoke-virtual {p2, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/camera/core2/maker/mj;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/camera/core2/maker/mj;-><init>(Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;Landroid/media/Image;)V

    .line 7
    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 8
    :cond_0
    sget-object p2, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->q1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b0:Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p2, v0, p1, v1}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PreviewCallbackHelper;->a(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;Landroid/media/Image;Lcom/samsung/android/camera/core2/CamDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 10
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic b4(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/util/Sequencer;)Z
    .locals 1

    const-string v0, "DETECT_AF"

    invoke-virtual {p2, v0}, Lcom/samsung/android/camera/core2/util/Sequencer;->l(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->i1:Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector;->a(Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector;Landroid/hardware/camera2/CaptureResult;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic c4(Lcom/samsung/android/camera/core2/util/Sequencer;)Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector$AfResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->i1:Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector;->d()Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector$AfResult;

    move-result-object p0

    return-object p0
.end method

.method private synthetic d4(Lcom/samsung/android/camera/core2/util/Sequencer;Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector$AfResult;)V
    .locals 2

    .line 1
    iget v0, p2, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$AfDetector$AfResult;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 2
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/food/saliencyFood/SaliencyFoodNodeBase;

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getFoodEventCallback()Lcom/samsung/android/camera/core2/callback/FoodEventCallback;

    move-result-object v0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/node/food/FoodNodeBase;->getDefaultFoodResultRegion()[I

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-interface {v0, p2, p0}, Lcom/samsung/android/camera/core2/callback/FoodEventCallback;->onFoodResultRegion([ILcom/samsung/android/camera/core2/CamDevice;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/Sequencer;->d()V

    goto :goto_0

    :cond_1
    const-string p0, "DETECT_AF"

    .line 7
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/camera/core2/util/Sequencer;->i(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;

    :goto_0
    return-void
.end method

.method private e4()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->m1:Lcom/samsung/android/camera/core2/util/Sequencer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/Sequencer;->s()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->m1:Lcom/samsung/android/camera/core2/util/Sequencer;

    :cond_0
    return-void
.end method

.method private f4(Landroid/graphics/PointF;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->l1:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->q1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo v2, "setSeedPoint - %s"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/food/saliencyFood/SaliencyFoodNodeBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/node/food/FoodNodeBase;->setSeedPoint(Landroid/graphics/PointF;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->m1:Lcom/samsung/android/camera/core2/util/Sequencer;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/Sequencer;->t()Z

    return-void
.end method

.method private g4()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->n1:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;->b(Lcom/samsung/android/camera/core2/util/CLog$Tag;J)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->n1:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    :cond_0
    return-void
.end method


# virtual methods
.method protected B3(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->q1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "releaseMaker"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->x0()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->k1:Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->a()V

    .line 6
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->k1:Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;

    .line 7
    :cond_1
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/food/saliencyFood/SaliencyFoodNodeBase;

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->e4()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->g4()V

    .line 11
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->B3(Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 13
    throw p1
.end method

.method public C()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public declared-synchronized T0(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Lcom/samsung/android/camera/core2/container/WatermarkInfo;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object p2, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->q1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v0, "takePicture - dynamicShotInfo %s runningPhysicalId %s DFovStreamType %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->e0:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->g0:Ljava/lang/Integer;

    aput-object v4, v1, v2

    invoke-static {p2, v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->e0:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->f0:I

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->h1()Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->f:Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->a(Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    .line 5
    invoke-static {}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->i()Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->i0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->x:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 8
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->w:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->h0()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 10
    sget-object p2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->v:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 11
    :cond_0
    sget-object p2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->p:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->f0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->d(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->g(Z)V

    .line 13
    :cond_1
    sget-object p1, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->d:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->e(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;->a()Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/core2/CamDevice;->Y(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;)V
    :try_end_1
    .catch Lcom/samsung/android/camera/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 16
    :try_start_2
    new-instance p2, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string/jumbo v0, "takePicture fail"

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected T1(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->l1:Z

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->m1:Lcom/samsung/android/camera/core2/util/Sequencer;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/maker/rj;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/camera/core2/maker/rj;-><init>(Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/camera/core2/maker/oj;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/maker/oj;-><init>(Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;)V

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/camera/core2/maker/nj;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/camera/core2/maker/nj;-><init>(Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;Lcom/samsung/android/camera/core2/util/Sequencer;)V

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public declared-synchronized o(Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/container/DeviceConfiguration;Lcom/samsung/android/camera/core2/callback/MakerStateCallback;Landroid/os/Handler;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->o(Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/container/DeviceConfiguration;Lcom/samsung/android/camera/core2/callback/MakerStateCallback;Landroid/os/Handler;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->x0()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->l1:Z

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->q1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p2, "connectCamDevice - use uniHAL objectDetector"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->q1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p2, "connectCamDevice - use foodNode objectDetector"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->J0:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager;

    sget-object p2, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->s:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager;->e(Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected o1()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/camera/core2/MakerPrivateKey<",
            "*>;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->o1()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->d0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/sj;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/sj;-><init>(Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    return-object p0
.end method

.method protected p1()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/camera/core2/MakerPrivateKey<",
            "*>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->p1()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->d0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/lj;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/lj;-><init>(Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    return-object p0
.end method

.method protected q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->q1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object p0
.end method

.method protected w1(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 6

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/food/saliencyFood/SaliencyFoodNodeBase;

    sget-object v1, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->q1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "initializeMaker E"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->x0()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v2, "initializeMaker X"

    if-eqz p1, :cond_0

    .line 3
    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->T3()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 5
    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->V3(Ljava/util/concurrent/ExecutorService;)V

    const/4 p1, 0x2

    new-array v3, p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 7
    iget-object v5, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->B:Landroid/util/Size;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->p1:Lcom/samsung/android/camera/core2/node/food/FoodNodeBase$NodeCallback;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/camera/core2/node/food/saliencyFood/SaliencyFoodNodeBase;

    iput-object v3, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/food/saliencyFood/SaliencyFoodNodeBase;

    .line 8
    invoke-virtual {v3, v5}, Lcom/samsung/android/camera/core2/node/Node;->initialize(Z)V

    .line 9
    new-instance v3, Lcom/samsung/android/camera/core2/node/NodeChain;

    new-instance v4, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$3;

    sget-object v5, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_BACKGROUND_PREVIEW:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-direct {v4, p0, p1, v5}, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker$3;-><init>(Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;ILcom/samsung/android/camera/core2/node/Node$PortType;)V

    invoke-direct {v3, v4}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/food/saliencyFood/SaliencyFoodNodeBase;

    invoke-virtual {v3, p1, v0, v5}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    .line 11
    new-instance p1, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->B:Landroid/util/Size;

    invoke-direct {p1, v3, v0}, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain;Landroid/util/Size;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SaliencyFoodPhotoMaker;->k1:Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 13
    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 15
    throw p1
.end method
