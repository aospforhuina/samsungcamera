.class public Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;
.super Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase;
.source "SribSceneDetectionNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;
    }
.end annotation


# static fields
.field private static final SRIB_SCENEDETECTION_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private mActiveArraySize:Landroid/graphics/Rect;

.field private final mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

.field private final mContext:Landroid/content/Context;

.field private mDeviceOrientation:I

.field private mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private final mLensFacing:Ljava/lang/Integer;

.field private mMode:I

.field private mNeedProcessing:Z

.field private mNeedWaitSceneDetectorInit:Z

.field private mNeedWaitSceneDetectorLiteInit:Z

.field private final mNodeCallback:Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$NodeCallback;

.field private mPreviewBuffer:Ljava/nio/ByteBuffer;

.field private final mPreviewSize:Landroid/util/Size;

.field private mSceneCategory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvizinsight/atl/vzimageclassifier/SceneDetector$SceneCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneDetector:Lvizinsight/atl/vzimageclassifier/SceneDetector;

.field private final mSceneDetectorInitLock:Ljava/lang/Object;

.field private final mSceneDetectorListener:Lvizinsight/atl/vzimageclassifier/SceneDetector$StatusChangeListener;

.field private mSceneDetectorLite:Lvizinsight/atl/vzimageclassifier/SceneDetector;

.field private final mSceneDetectorLiteListener:Lvizinsight/atl/vzimageclassifier/SceneDetector$StatusChangeListener;

.field private final mSceneDetectorLock:Ljava/lang/Object;

.field private final mSceneManager:Lcom/samsung/android/camera/core2/util/SceneStateManager;

.field private final mSensorOrientation:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "SribSceneDetectionNode"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->SRIB_SCENEDETECTION_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionInitParam;Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$NodeCallback;)V
    .locals 12

    .line 1
    sget-object v8, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->SRIB_SCENEDETECTION_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/16 v0, 0x122

    const/4 v9, 0x0

    invoke-direct {p0, v0, v8, v9}, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetectorLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetectorInitLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetector:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetectorLite:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    const/4 v10, 0x1

    .line 6
    iput-boolean v10, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mNeedWaitSceneDetectorInit:Z

    .line 7
    iput-boolean v10, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mNeedWaitSceneDetectorLiteInit:Z

    const/high16 v0, -0x80000000

    .line 8
    iput v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mDeviceOrientation:I

    .line 9
    iput v9, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mMode:I

    .line 10
    new-instance v0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$1;-><init>(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetectorListener:Lvizinsight/atl/vzimageclassifier/SceneDetector$StatusChangeListener;

    .line 11
    new-instance v0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$2;-><init>(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetectorLiteListener:Lvizinsight/atl/vzimageclassifier/SceneDetector$StatusChangeListener;

    .line 12
    new-instance v11, Lcom/samsung/android/camera/core2/util/SceneStateManager;

    new-instance v6, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$3;-><init>(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;)V

    sget v7, Lcom/samsung/android/camera/core2/util/SceneStateManager;->n:I

    const-wide/16 v2, 0x5dc

    const-wide/16 v4, 0x0

    move-object v0, v11

    move-object v1, v8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/camera/core2/util/SceneStateManager;-><init>(Lcom/samsung/android/camera/core2/util/CLog$Tag;JJLcom/samsung/android/camera/core2/util/SceneStateManager$StateChangedCallback;I)V

    iput-object v11, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneManager:Lcom/samsung/android/camera/core2/util/SceneStateManager;

    const-string v0, "param"

    .line 13
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback"

    .line 14
    invoke-static {p2, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    iget-object v1, p1, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionInitParam;->a:Landroid/util/Size;

    aput-object v1, v0, v9

    aput-object p2, v0, v10

    const-string v1, "SribSceneDetectionNode - previewSize: %s, callback: %s"

    invoke-static {v8, v1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v0, p1, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionInitParam;->a:Landroid/util/Size;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mPreviewSize:Landroid/util/Size;

    .line 17
    iget-object v0, p1, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionInitParam;->b:Lcom/samsung/android/camera/core2/CamCapability;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 18
    iget-object p1, p1, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionInitParam;->c:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$NodeCallback;

    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->n()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mLensFacing:Ljava/lang/Integer;

    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->i2()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSensorOrientation:Ljava/lang/Integer;

    return-void
.end method

.method static bridge synthetic e(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mNeedWaitSceneDetectorInit:Z

    return p0
.end method

.method static bridge synthetic f(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mNeedWaitSceneDetectorLiteInit:Z

    return p0
.end method

.method static bridge synthetic g(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;)Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$NodeCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$NodeCallback;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;)Lvizinsight/atl/vzimageclassifier/SceneDetector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetector:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetectorInitLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;)Lvizinsight/atl/vzimageclassifier/SceneDetector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetectorLite:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetectorLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic m(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;)Lcom/samsung/android/camera/core2/util/SceneStateManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneManager:Lcom/samsung/android/camera/core2/util/SceneStateManager;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mNeedProcessing:Z

    return-void
.end method

.method static bridge synthetic o(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mNeedWaitSceneDetectorInit:Z

    return-void
.end method

.method static bridge synthetic p(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mNeedWaitSceneDetectorLiteInit:Z

    return-void
.end method

.method static bridge synthetic q()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->SRIB_SCENEDETECTION_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object v0
.end method

.method private setSceneDetector()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mNeedWaitSceneDetectorInit:Z

    .line 2
    new-instance v0, Lvizinsight/atl/vzimageclassifier/SceneDetector;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lvizinsight/atl/vzimageclassifier/SceneDetector;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetector:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetectorListener:Lvizinsight/atl/vzimageclassifier/SceneDetector$StatusChangeListener;

    invoke-virtual {v0, v1}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->setStatusChangeListener(Lvizinsight/atl/vzimageclassifier/SceneDetector$StatusChangeListener;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetector:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    invoke-virtual {v0}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->getSupportedSceneCategory()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneCategory:Ljava/util/List;

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetector:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    invoke-virtual {v0}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->getIdleTime()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneManager:Lcom/samsung/android/camera/core2/util/SceneStateManager;

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/util/SceneStateManager;->k(J)V

    :cond_0
    return-void
.end method

.method private setSceneDetectorLite()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mNeedWaitSceneDetectorLiteInit:Z

    .line 2
    new-instance v1, Lvizinsight/atl/vzimageclassifier/SceneDetector;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lvizinsight/atl/vzimageclassifier/SceneDetector;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetectorLite:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetectorLiteListener:Lvizinsight/atl/vzimageclassifier/SceneDetector$StatusChangeListener;

    invoke-virtual {v1, v0}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->setStatusChangeListener(Lvizinsight/atl/vzimageclassifier/SceneDetector$StatusChangeListener;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetectorLite:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    invoke-virtual {v0}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->getSupportedSceneCategory()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneCategory:Ljava/util/List;

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetectorLite:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    invoke-virtual {v0}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->getIdleTime()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneManager:Lcom/samsung/android/camera/core2/util/SceneStateManager;

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/util/SceneStateManager;->k(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDeviceOrientation()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mDeviceOrientation:I

    return p0
.end method

.method public getSceneDetectMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mMode:I

    return p0
.end method

.method public getSupportedSceneMode()[I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneCategory:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->SRIB_SCENEDETECTION_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "getSupportedSceneMode SceneCategory is null"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneCategory:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvizinsight/atl/vzimageclassifier/SceneDetector$SceneCategory;

    add-int/lit8 v3, v1, 0x1

    .line 5
    invoke-virtual {v2}, Lvizinsight/atl/vzimageclassifier/SceneDetector$SceneCategory;->getValue()I

    move-result v2

    aput v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public needProcessBackgroundPreview()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/camera/core2/node/Node;->needProcessBackgroundPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mNeedProcessing:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected declared-synchronized onDeinitialized()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->SRIB_SCENEDETECTION_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "onDeinitialized E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetectorLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 3
    :try_start_1
    iput-object v2, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mPreviewBuffer:Ljava/nio/ByteBuffer;

    .line 4
    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneCategory:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 6
    iput-object v2, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneCategory:Ljava/util/List;

    .line 7
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetector:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetectorLite:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    if-eqz v3, :cond_2

    .line 8
    :cond_1
    invoke-static {}, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->instance()Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetector:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    iget-object v5, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetectorLite:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    invoke-virtual {v3, v4, v5}, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->destroy(Lvizinsight/atl/vzimageclassifier/SceneDetector;Lvizinsight/atl/vzimageclassifier/SceneDetector;)V

    .line 9
    iput-object v2, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetector:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    .line 10
    iput-object v2, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetectorLite:Lvizinsight/atl/vzimageclassifier/SceneDetector;

    :cond_2
    const/4 v2, 0x0

    .line 11
    iput v2, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mMode:I

    .line 12
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "onDeinitialized X"

    .line 13
    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onInitialized(Ljava/util/Map;)V
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

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->SRIB_SCENEDETECTION_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "onInitialized E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneDetectorLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    .line 3
    :try_start_2
    iput-boolean v2, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mNeedWaitSceneDetectorInit:Z

    .line 4
    iput-boolean v2, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mNeedWaitSceneDetectorLiteInit:Z

    .line 5
    iget v2, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong SceneDetection Mode value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->setSceneDetectorLite()V

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->setSceneDetector()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->setSceneDetectorLite()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->setSceneDetector()V

    .line 11
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    :catch_0
    :try_start_4
    sget-object v0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->SRIB_SCENEDETECTION_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "SceneDetector creation failed!"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 13
    :goto_1
    sget-object v0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->SRIB_SCENEDETECTION_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "onInitialized X"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 14
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/node/Node;->onInitialized(Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 15
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onRepeatingCaptureResult(Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneManager:Lcom/samsung/android/camera/core2/util/SceneStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/camera/core2/util/SceneStateManager;->e(Landroid/hardware/camera2/CaptureResult;Z)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method

.method public declared-synchronized processBackgroundPreview(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    monitor-enter p0

    const/4 v8, 0x0

    .line 1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v1

    .line 2
    iget-object v2, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mPreviewBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mPreviewSize:Landroid/util/Size;

    invoke-static {v2, v1, v3}, Lcom/samsung/android/camera/core2/util/ImageUtils;->allocateDirectByteBuffer(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;Landroid/util/Size;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mPreviewBuffer:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0, v2}, Lcom/samsung/android/camera/core2/util/BufferBase;->get(Ljava/nio/ByteBuffer;)V

    .line 4
    iget-object v2, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mActiveArraySize:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    .line 5
    iget-object v2, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/CamCapability;->E0()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->f2:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v2, v8

    .line 7
    :goto_0
    iget-object v3, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v3, v2}, Lcom/samsung/android/camera/core2/CamCapability;->c2(Ljava/lang/Integer;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mActiveArraySize:Landroid/graphics/Rect;

    .line 8
    :cond_1
    iget-object v2, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 9
    iget-object v3, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/16 v4, 0x65

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v9, 0x0

    if-eqz v3, :cond_2

    .line 11
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    move-object/from16 v17, v2

    .line 12
    iget-object v2, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->P1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iget-object v3, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 13
    invoke-static {v3, v4}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/graphics/Rect;

    .line 14
    iget-object v6, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneManager:Lcom/samsung/android/camera/core2/util/SceneStateManager;

    new-instance v4, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;

    iget-object v3, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mPreviewBuffer:Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->p()J

    move-result-wide v21

    new-instance v23, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionParam;

    iget-object v11, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mPreviewSize:Landroid/util/Size;

    .line 16
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v12

    iget v1, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mDeviceOrientation:I

    iget-object v2, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mLensFacing:Ljava/lang/Integer;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSensorOrientation:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v1, v2, v5}, Lcom/samsung/android/camera/core2/util/ImageUtils;->getImageOrientation(III)I

    move-result v13

    iget-object v1, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 18
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [Landroid/hardware/camera2/params/Face;

    iget-object v15, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mActiveArraySize:Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 19
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Ljava/lang/Float;

    iget-object v1, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->v:Landroid/hardware/camera2/CaptureResult$Key;

    .line 20
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Ljava/lang/Integer;

    .line 21
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v10, v23

    invoke-direct/range {v10 .. v20}, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionParam;-><init>(Landroid/util/Size;Lcom/samsung/android/camera/core2/util/StrideInfo;I[Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v10, v4

    move-wide/from16 v4, v21

    move-object v11, v6

    move-object/from16 v6, v23

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;-><init>(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;Ljava/nio/ByteBuffer;JLcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionParam;)V

    .line 22
    invoke-virtual {v11, v10}, Lcom/samsung/android/camera/core2/util/SceneStateManager;->m(Lcom/samsung/android/camera/core2/util/SceneStateManager$Task;)V

    .line 23
    iput-boolean v9, v7, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mNeedProcessing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 25
    :try_start_1
    sget-object v1, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->SRIB_SCENEDETECTION_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processBackgroundPreview fail - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit p0

    return-object v8

    :goto_1
    monitor-exit p0

    throw v0
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

.method public bridge synthetic processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mSceneManager:Lcom/samsung/android/camera/core2/util/SceneStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/SceneStateManager;->i()V

    .line 2
    invoke-super {p0}, Lcom/samsung/android/camera/core2/node/Node;->release()V

    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->SRIB_SCENEDETECTION_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceOrientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mDeviceOrientation:I

    return-void
.end method

.method public setSceneDetectMode(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1
    :goto_0
    sget-object v3, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->SRIB_SCENEDETECTION_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "SCENE_DETECTION_MODE : mode = %d, enable = %b"

    invoke-static {v3, v0, v4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->getSceneDetectMode()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->deinitialize()V

    .line 4
    :cond_1
    iput p1, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->mMode:I

    .line 5
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/camera/core2/node/Node;->initialize(ZZ)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->deinitialize()V

    :goto_1
    return-void
.end method
