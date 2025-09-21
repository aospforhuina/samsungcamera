.class Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;
.super Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;
.source "ArPhotoMaker.java"


# static fields
.field private static final u1:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private i1:Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;

.field private j1:Lcom/samsung/android/camera/core2/node/fRTracking/FRTrackingNodeBase;

.field private k1:Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase;

.field private l1:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase;

.field private m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

.field private n1:Lcom/samsung/android/camera/core2/node/NodeChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Landroid/media/Image;",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private o1:Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;

.field private final p1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;

.field private final q1:Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase$NodeCallback;

.field private final r1:Lcom/samsung/android/camera/core2/node/fRTracking/FRTrackingNodeBase$NodeCallback;

.field private final s1:Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase$NodeCallback;

.field private final t1:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase$NodeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "ArPhotoMaker"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->u1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker$1;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->p1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;

    .line 3
    new-instance p1, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker$2;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->q1:Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase$NodeCallback;

    .line 4
    new-instance p1, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker$3;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->r1:Lcom/samsung/android/camera/core2/node/fRTracking/FRTrackingNodeBase$NodeCallback;

    .line 5
    new-instance p1, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker$4;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->s1:Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase$NodeCallback;

    .line 6
    new-instance p1, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker$5;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker$5;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->t1:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase$NodeCallback;

    const/16 p1, 0x23

    .line 7
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->o0:I

    .line 8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->A:Ljava/lang/Boolean;

    .line 9
    new-instance p1, Lcom/samsung/android/camera/core2/maker/s;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/maker/s;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->C0:Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;

    return-void
.end method

.method private synthetic A4(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->x:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I2(Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic B4(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->m:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I2(Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic C4(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->o:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I2(Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic D4(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->needPreviewBeauty()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->V2(Z)V

    .line 2
    sget-object p1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->C:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->needPreviewBeauty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I2(Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic E4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->setBeautyBypass(Z)V

    return-void
.end method

.method private synthetic F4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->setBeautyStrEnable(Z)V

    return-void
.end method

.method private synthetic G4(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/camera/core2/node/Node;->initializeNode(ZZ)V

    return-void
.end method

.method private synthetic H4(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/fRTracking/FRTrackingNodeBase;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/node/Node;->initializeNode(ZZ)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase;->setFrTrackingActivated(Z)V

    return-void
.end method

.method public static synthetic I3(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Landroid/media/Image;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->d5(Landroid/media/Image;Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void
.end method

.method private synthetic I4(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/camera/core2/node/Node;->initializeNode(ZZ)V

    return-void
.end method

.method public static synthetic J3(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->y4(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic J4(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/camera/core2/node/Node;->initializeNode(ZZ)V

    return-void
.end method

.method public static synthetic K3(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->e5(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;)V

    return-void
.end method

.method private synthetic K4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->setRelightEnabled(Z)V

    return-void
.end method

.method public static synthetic L3(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->c5(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic L4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->setSmartBeautyEnable(Z)V

    return-void
.end method

.method public static synthetic M3(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->Z4(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic M4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->setFaceDetectionEnable(Z)V

    return-void
.end method

.method public static synthetic N3(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->T4(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic N4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->setSelfieToneMode(I)V

    return-void
.end method

.method public static synthetic O3(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->P4(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic O4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->setBeautyEffectIgnore(Z)V

    return-void
.end method

.method public static synthetic P3(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->N4(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic P4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase;->setFacialExpressionMode(Z)V

    return-void
.end method

.method public static synthetic Q3(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->S4(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic Q4(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/CustomPreviewNodeBase;->setInterval(J)V

    return-void
.end method

.method public static synthetic R3(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->z4(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic R4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;->setFaceLandmarkType(I)V

    return-void
.end method

.method public static synthetic S3(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->C4(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic S4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;->setFaceLandmarkMode(I)V

    return-void
.end method

.method public static synthetic T3(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->u4(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic T4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase;->setModeConfig(I)V

    return-void
.end method

.method public static synthetic U3(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->K4(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic U4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->setSmartBeautyLevel(I)V

    return-void
.end method

.method public static synthetic V3(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->G4(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic V4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/fRTracking/FRTrackingNodeBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/fRTracking/FRTrackingNodeBase;->registerFace(I)V

    return-void
.end method

.method public static synthetic W3(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->D4(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic W4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->setEyeEnlargementLevel(I)V

    return-void
.end method

.method public static synthetic X3(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->L4(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic X4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->setFaceColorLevel(I)V

    return-void
.end method

.method public static synthetic Y3(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->x4(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic Y4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->setBeautyFaceRetouchLevel(I)V

    return-void
.end method

.method public static synthetic Z3(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->F4(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic Z4(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    check-cast p1, Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->setRelightDirection(Landroid/graphics/Point;)V

    return-void
.end method

.method public static synthetic a4(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->I4(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a5(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->setRelightLevel(I)V

    return-void
.end method

.method public static synthetic b4(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->H4(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic b5(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->setSlimFaceLevel(I)V

    return-void
.end method

.method public static synthetic c4(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->O4(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic c5(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->f5(I)V

    return-void
.end method

.method public static synthetic d4(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->A4(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic d5(Landroid/media/Image;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/FlagLock;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->o1:Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;

    new-instance v0, Lcom/samsung/android/camera/core2/ExtraBundle;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/ExtraBundle;-><init>()V

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->f(Landroid/media/Image;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Void;

    .line 3
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->n1:Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-virtual {p2, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/Image;

    invoke-virtual {p0, p2}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->A3(Landroid/media/Image;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->z3(Landroid/media/Image;)V

    .line 5
    sget-object p2, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->u1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b0:Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p2, v0, p1, v1}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PreviewCallbackHelper;->a(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;Landroid/media/Image;Lcom/samsung/android/camera/core2/CamDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 7
    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic e4(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->a5(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic e5(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;->setLatestRepeatingCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public static synthetic f4(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->V4(Ljava/lang/Object;)V

    return-void
.end method

.method private f5(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->setDeviceOrientation(I)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;->setDeviceOrientation(I)V

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase;->setDeviceOrientation(I)V

    return-void
.end method

.method public static synthetic g4(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->U4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic h4(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->w4(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i4(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->Y4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic j4(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->v4(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k4(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->M4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic l4(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->E4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic m4(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->Q4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic n4(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->R4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic o4(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->X4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic p4(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->J4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic q4(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->b5(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic r4(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->W4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic s4(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->B4(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic t4()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->u1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object v0
.end method

.method private synthetic u4(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->needPreviewBeauty()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->V2(Z)V

    .line 2
    sget-object p1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->C:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->needPreviewBeauty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I2(Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic v4(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->needPreviewBeauty()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->V2(Z)V

    .line 2
    sget-object p1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->C:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->needPreviewBeauty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I2(Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic w4(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->needPreviewBeauty()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->V2(Z)V

    .line 2
    sget-object p1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->C:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->needPreviewBeauty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I2(Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic x4(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->A:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I2(Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic y4(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->B:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I2(Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic z4(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->u:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I2(Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected B3(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->u1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "releaseMaker"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/Node;->release()V

    .line 5
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->n1:Lcom/samsung/android/camera/core2/node/NodeChain;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->u()V

    .line 8
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->n1:Lcom/samsung/android/camera/core2/node/NodeChain;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->o1:Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;->a()V

    .line 11
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->o1:Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;

    .line 12
    :cond_2
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;

    .line 13
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/fRTracking/FRTrackingNodeBase;

    .line 14
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase;

    .line 15
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->B3(Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void

    :catchall_0
    move-exception p1

    .line 18
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 19
    throw p1
.end method

.method public C()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method protected L2()Lcom/samsung/android/camera/core2/container/SessionConfig$BuilderConfig;
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/container/SessionConfig$BuilderConfig;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->f:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/samsung/android/camera/core2/container/SessionConfig$BuilderConfig;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method protected M2()Lcom/samsung/android/camera/core2/container/SessionConfig$DepthCbConfigCollector;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected N2()Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected R2()Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected T1(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/node/Node;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->setPreviewProperties(Landroid/hardware/camera2/CaptureResult;)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p2, Lcom/samsung/android/camera/core2/maker/w0;->a:Lcom/samsung/android/camera/core2/maker/w0;

    invoke-virtual {p0, p2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/camera/core2/maker/u;

    invoke-direct {p2, p1}, Lcom/samsung/android/camera/core2/maker/u;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    .line 5
    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected T2()Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected U2()Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected c1(Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/container/DeviceConfiguration;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->s()Landroid/view/Surface;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->t()Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot configure previewCb"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method protected f1()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/camera/core2/MakerPrivateKey<",
            "*>;",
            "Lcom/samsung/android/camera/core2/maker/MakerBase$ApplyRepeatingKeyExecutor<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->z:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->f1()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->z:Ljava/util/HashMap;

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->f:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/k1;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/k1;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->z:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->h:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/z1;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/z1;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->z:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->q:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/y1;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/y1;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->z:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->C:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/w1;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/w1;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->z:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->D:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/d0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/d0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->z:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->G:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/o0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/o0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->z:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->H:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/x1;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/x1;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->z:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->M:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/t;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/t;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->z:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->P:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/z0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/z0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->z:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->v0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/v1;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/v1;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->z:Ljava/util/HashMap;

    return-object p0
.end method

.method protected o1()Ljava/util/HashMap;
    .locals 4
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
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->e:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/y0;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/y0;-><init>(Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->f:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/d1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/d1;-><init>(Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->g:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/e1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/e1;-><init>(Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->h:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/a1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/a1;-><init>(Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->i:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/g1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/g1;-><init>(Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->j:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/i1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/i1;-><init>(Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->q:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/j1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/j1;-><init>(Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->w:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/c1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/c1;-><init>(Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->y:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/x0;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/x0;-><init>(Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->z:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/b1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/b1;-><init>(Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->C:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/n1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/n1;-><init>(Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->D:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/fRTracking/FRTrackingNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/m1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/m1;-><init>(Lcom/samsung/android/camera/core2/node/fRTracking/FRTrackingNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->G:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/q1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/q1;-><init>(Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->H:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/t1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/t1;-><init>(Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->M:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/h1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/h1;-><init>(Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->O:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/l1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/l1;-><init>(Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->P:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/f1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/f1;-><init>(Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->W:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/o1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/o1;-><init>(Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->X:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/p1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/p1;-><init>(Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->Y:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/r1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/r1;-><init>(Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->Z:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/s1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/s1;-><init>(Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->x:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->e0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/camera/core2/maker/u1;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/maker/u1;-><init>(Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
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
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->e:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/i0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/i0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->f:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/v0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/v0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->g:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/s0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/s0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->h:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/m0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/m0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->i:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/w;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/w;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->j:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/j0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/j0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->q:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/u0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/u0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->w:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/v;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/v;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->y:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/p0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/p0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->z:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/f0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/f0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->C:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/c0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/c0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->D:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/h0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/h0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->G:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/g0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/g0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->H:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/t0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/t0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->M:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/b0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/b0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->O:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/e0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/e0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->P:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/n0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/n0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->s:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/z;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/z;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->Y:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/y;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/y;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->Z:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/q0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/q0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->X:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/r0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/r0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->W:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/a0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/a0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->e0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/x;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/x;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->v0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/l0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/l0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->E:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/camera/core2/maker/k0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/k0;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->y:Ljava/util/HashMap;

    return-object p0
.end method

.method protected q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->u1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object p0
.end method

.method protected w1(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 11

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;

    const-class v1, Lcom/samsung/android/camera/core2/node/fRTracking/FRTrackingNodeBase;

    const-class v2, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase;

    const-class v3, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->w1(Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 2
    sget-object v4, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->u1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v5, "initializeMaker E"

    invoke-static {v4, v5}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iget-object v5, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v5, 0x2

    :try_start_0
    new-array v6, v5, [Ljava/lang/Object;

    .line 4
    new-instance v7, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$BeautyInitParam;

    iget-object v8, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->B:Landroid/util/Size;

    invoke-direct {v7, v8, p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$BeautyInitParam;-><init>(Landroid/util/Size;Lcom/samsung/android/camera/core2/CamCapability;)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->p1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-static {v3, v6}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    iput-object v6, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    .line 5
    invoke-virtual {v6, v9}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;->setPreviewBeautyEnable(Z)V

    .line 6
    iget-object v6, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-virtual {v6, v9, v9}, Lcom/samsung/android/camera/core2/node/Node;->initialize(ZZ)V

    new-array v6, v5, [Ljava/lang/Object;

    .line 7
    new-instance v7, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase$HumanTrackingInitParam;

    iget-object v10, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->B:Landroid/util/Size;

    invoke-direct {v7, v10, p1}, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase$HumanTrackingInitParam;-><init>(Landroid/util/Size;Lcom/samsung/android/camera/core2/CamCapability;)V

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->t1:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase$NodeCallback;

    aput-object v7, v6, v9

    invoke-static {v2, v6}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase;

    iput-object v6, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase;

    new-array v6, v5, [Ljava/lang/Object;

    .line 8
    new-instance v7, Lcom/samsung/android/camera/core2/node/fRTracking/FRTrackingNodeBase$FRTrackingInitParam;

    iget-object v10, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->B:Landroid/util/Size;

    invoke-direct {v7, v10, p1}, Lcom/samsung/android/camera/core2/node/fRTracking/FRTrackingNodeBase$FRTrackingInitParam;-><init>(Landroid/util/Size;Lcom/samsung/android/camera/core2/CamCapability;)V

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->r1:Lcom/samsung/android/camera/core2/node/fRTracking/FRTrackingNodeBase$NodeCallback;

    aput-object v7, v6, v9

    invoke-static {v1, v6}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/camera/core2/node/fRTracking/FRTrackingNodeBase;

    iput-object v6, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/fRTracking/FRTrackingNodeBase;

    new-array v6, v5, [Ljava/lang/Object;

    .line 9
    new-instance v7, Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase$FaceLandmarkInitParam;

    iget-object v10, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->B:Landroid/util/Size;

    invoke-direct {v7, v10, p1}, Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase$FaceLandmarkInitParam;-><init>(Landroid/util/Size;Lcom/samsung/android/camera/core2/CamCapability;)V

    aput-object v7, v6, v8

    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->q1:Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase$NodeCallback;

    aput-object p1, v6, v9

    invoke-static {v0, v6}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;

    .line 10
    const-class p1, Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->B:Landroid/util/Size;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->s1:Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase$NodeCallback;

    aput-object v6, v5, v9

    invoke-static {p1, v5}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase;

    .line 11
    new-instance p1, Lcom/samsung/android/camera/core2/node/NodeChain;

    new-instance v5, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker$6;

    sget-object v6, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PREVIEW:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-direct {v5, p0, v9, v6}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker$6;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;ILcom/samsung/android/camera/core2/node/Node$PortType;)V

    invoke-direct {p1, v5}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->n1:Lcom/samsung/android/camera/core2/node/NodeChain;

    .line 12
    iget-object v5, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->l1:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingNodeBase;

    invoke-virtual {p1, v5, v2, v6}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    .line 13
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->n1:Lcom/samsung/android/camera/core2/node/NodeChain;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->j1:Lcom/samsung/android/camera/core2/node/fRTracking/FRTrackingNodeBase;

    invoke-virtual {p1, v2, v1, v6}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    .line 14
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->n1:Lcom/samsung/android/camera/core2/node/NodeChain;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->m1:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    invoke-virtual {p1, v1, v3, v6}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    .line 15
    new-instance p1, Lcom/samsung/android/camera/core2/node/NodeChain;

    new-instance v1, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker$7;

    const/4 v2, 0x4

    sget-object v3, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_BACKGROUND_PREVIEW:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker$7;-><init>(Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;ILcom/samsung/android/camera/core2/node/Node$PortType;)V

    invoke-direct {p1, v1}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    .line 16
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;

    invoke-virtual {p1, v1, v0, v3}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    .line 17
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->B:Landroid/util/Size;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain;Landroid/util/Size;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->o1:Lcom/samsung/android/camera/core2/maker/MakerUtils$BgNodeChainExecutor;

    .line 18
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->i1:Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;

    iget-object p1, p1, Lcom/samsung/android/camera/core2/node/faceLandmark/FaceLandmarkNodeBase;->OUTPUTPORT_CUSTOM_FA:Lcom/samsung/android/camera/core2/node/Node$OutputPort;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;->k1:Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/node/facialAttribute/FacialAttrNodeBase;->INPUT_PORT_CUSTOM_FA:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/node/Node;->connectPort(Lcom/samsung/android/camera/core2/node/Node$OutputPort;Lcom/samsung/android/camera/core2/node/Node$InputPort;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string p0, "initializeMaker X"

    .line 20
    invoke-static {v4, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 21
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->a:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 22
    throw p1
.end method
