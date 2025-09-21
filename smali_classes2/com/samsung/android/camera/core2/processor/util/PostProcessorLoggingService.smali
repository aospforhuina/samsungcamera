.class public Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;
.super Landroid/app/Service;
.source "PostProcessorLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService$LoggingHandler;
    }
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "CameraLogViewer_Service_Channel"

.field private static final MEGA_BYTES:J = 0x100000L

.field public static final MSG_DYNAMIC_FOV_STREAM_TYPE_CHANGED:I = 0x3

.field public static final MSG_DYNAMIC_SHOT_INFO_CHANGED:I = 0x1

.field public static final MSG_PPP_NEW_PROCESS_REQUEST_STARTED:I = 0xc

.field public static final MSG_PPP_SEQUENCE_STATE_CHANGED:I = 0xd

.field public static final MSG_PPP_STACK_STATUS_CHANGED:I = 0xb

.field public static final MSG_REALTIME_OVER_HEAT_HINT_CHANGED:I = 0x4

.field public static final MSG_RESET_DATA:I = 0x0

.field public static final MSG_RUNNING_PHYSICAL_ID_CHANGED:I = 0x2

.field public static final MSG_SUN_DETECTION_INFO_CHANGED:I = 0x5

.field private static final NOTIFICATION_ID:I = 0x65

.field private static final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private static final VALID_MOVE_MOTION_THRESHOLD:I = 0x5


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAvailableMem:Landroid/widget/TextView;

.field private mDFovSteamType:Landroid/widget/TextView;

.field private mDeviceInfo:Landroid/widget/TextView;

.field private mDsExtraInfo:Landroid/widget/TextView;

.field private mDsMode:Landroid/widget/TextView;

.field private volatile mIsServiceForeground:Z

.field private mLoggingHandlerThread:Landroid/os/HandlerThread;

.field private mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

.field private mOverHeatLevel:Landroid/widget/TextView;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mPppDsExtraInfo:Landroid/widget/TextView;

.field private mPppDsMode:Landroid/widget/TextView;

.field private mProcessCount:Landroid/widget/TextView;

.field private mProcessRequestInfo:Landroid/widget/LinearLayout;

.field private mRealtimeOverHeatLevel:Landroid/widget/TextView;

.field private mRunningPhysicalId:Landroid/widget/TextView;

.field private mSavingType:Landroid/widget/TextView;

.field private mSequenceId:Landroid/widget/TextView;

.field private mSequenceState:Landroid/widget/TextView;

.field private mShootingMode:Landroid/widget/TextView;

.field private mStackedNum:Landroid/widget/TextView;

.field private mSunDetectionInfo:Landroid/widget/TextView;

.field private mThresholdMem:Landroid/widget/TextView;

.field private mTotalMem:Landroid/widget/TextView;

.field private mTouchX:F

.field private mTouchY:F

.field private mUiHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field private final mViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mViewX:I

.field private mViewY:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "PostProcessorLoggingService"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService$1;-><init>(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static bridge synthetic A(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateSequenceState(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic B(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateStackedNum(I)V

    return-void
.end method

.method static bridge synthetic C(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateSunDetectionInfo(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic D(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateView()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->lambda$updateSequenceState$8(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->lambda$updateDynamicFovStreamType$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->lambda$updateStackedNum$7(I)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->lambda$updateSunDetectionInfo$5(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->lambda$updateRealtimeOverHeatHint$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Lcom/samsung/android/camera/core2/util/ShootingMode;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/camera/core2/container/LowPowerMode;Ljava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->lambda$updateProcessRequestInfo$6(Lcom/samsung/android/camera/core2/util/ShootingMode;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/camera/core2/container/LowPowerMode;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic g(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->lambda$updateMemoryStatus$0()V

    return-void
.end method

.method public static synthetic h(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;ILjava/lang/String;ILjava/util/List;J)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->lambda$updateDynamicShotInfo$1(ILjava/lang/String;ILjava/util/List;J)V

    return-void
.end method

.method public static synthetic i(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->lambda$updateRunningPhysicalId$2(Ljava/lang/String;)V

    return-void
.end method

.method private initView()V
    .locals 7

    const-string v0, "layout_inflater"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2
    sget v1, Lcom/samsung/android/camera/core2/R$layout;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->f:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mAvailableMem:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mThresholdMem:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mTotalMem:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->e:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mDsMode:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mDsExtraInfo:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mDeviceInfo:Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->s:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mRunningPhysicalId:Landroid/widget/TextView;

    .line 11
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mDFovSteamType:Landroid/widget/TextView;

    .line 12
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->r:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mRealtimeOverHeatLevel:Landroid/widget/TextView;

    .line 13
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->t:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mSunDetectionInfo:Landroid/widget/TextView;

    .line 14
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->q:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mStackedNum:Landroid/widget/TextView;

    .line 15
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->o:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mSequenceState:Landroid/widget/TextView;

    .line 16
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mProcessRequestInfo:Landroid/widget/LinearLayout;

    .line 17
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->p:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mShootingMode:Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->n:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mSequenceId:Landroid/widget/TextView;

    .line 19
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->j:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mPppDsMode:Landroid/widget/TextView;

    .line 20
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->i:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mPppDsExtraInfo:Landroid/widget/TextView;

    .line 21
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->k:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mOverHeatLevel:Landroid/widget/TextView;

    .line 22
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->m:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mSavingType:Landroid/widget/TextView;

    .line 23
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/camera/core2/R$id;->l:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mProcessCount:Landroid/widget/TextView;

    .line 24
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x7f6

    const/16 v5, 0x8

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    .line 25
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string/jumbo v0, "window"

    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mWindowManager:Landroid/view/WindowManager;

    .line 27
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "activity"

    .line 28
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mActivityManager:Landroid/app/ActivityManager;

    .line 29
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    return-void
.end method

.method static bridge synthetic j(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mTouchX:F

    return p0
.end method

.method static bridge synthetic l(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mTouchY:F

    return p0
.end method

.method private synthetic lambda$updateDynamicFovStreamType$3(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mDFovSteamType:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/camera/core2/R$string;->b:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateView()V

    return-void
.end method

.method private synthetic lambda$updateDynamicShotInfo$1(ILjava/lang/String;ILjava/util/List;J)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_0

    .line 1
    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mDsMode:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/samsung/android/camera/core2/R$string;->f:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mDsMode:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/samsung/android/camera/core2/R$string;->e:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mDsExtraInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/samsung/android/camera/core2/R$string;->d:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v0, v2

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mDeviceInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/samsung/android/camera/core2/R$string;->c:I

    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    aput-object p5, p4, v2

    invoke-virtual {p2, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateView()V

    return-void
.end method

.method private synthetic lambda$updateMemoryStatus$0()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mAvailableMem:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/camera/core2/R$string;->a:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v5, v5, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v7, 0x100000

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mThresholdMem:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/camera/core2/R$string;->u:I

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v9, v5, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    div-long/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mTotalMem:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/camera/core2/R$string;->v:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v4, v4, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    div-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateView()V

    return-void
.end method

.method private synthetic lambda$updateProcessRequestInfo$6(Lcom/samsung/android/camera/core2/util/ShootingMode;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/camera/core2/container/LowPowerMode;Ljava/lang/String;II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mShootingMode:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/camera/core2/R$string;->r:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mSequenceId:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/camera/core2/R$string;->p:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mPppDsMode:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/samsung/android/camera/core2/R$string;->k:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p3, v1, v5

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mPppDsExtraInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/samsung/android/camera/core2/R$string;->d:I

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p4, v0, v5

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mOverHeatLevel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/samsung/android/camera/core2/R$string;->i:I

    new-array p4, v3, [Ljava/lang/Object;

    aput-object p5, p4, v5

    invoke-virtual {p2, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mSavingType:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/samsung/android/camera/core2/R$string;->o:I

    new-array p4, v3, [Ljava/lang/Object;

    aput-object p6, p4, v5

    invoke-virtual {p2, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mProcessCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/samsung/android/camera/core2/R$string;->l:I

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p4, v5

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p4, v3

    invoke-virtual {p2, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateView()V

    return-void
.end method

.method private synthetic lambda$updateRealtimeOverHeatHint$4(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mRealtimeOverHeatLevel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/camera/core2/R$string;->m:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateView()V

    return-void
.end method

.method private synthetic lambda$updateRunningPhysicalId$2(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mRunningPhysicalId:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/camera/core2/R$string;->n:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateView()V

    return-void
.end method

.method private synthetic lambda$updateSequenceState$8(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mSequenceState:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/camera/core2/R$string;->q:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateView()V

    return-void
.end method

.method private synthetic lambda$updateStackedNum$7(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mStackedNum:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/camera/core2/R$string;->s:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mProcessRequestInfo:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mProcessRequestInfo:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateView()V

    return-void
.end method

.method private synthetic lambda$updateSunDetectionInfo$5(Ljava/lang/String;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mSunDetectionInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/camera/core2/R$string;->t:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateView()V

    return-void
.end method

.method static bridge synthetic m(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mViewX:I

    return p0
.end method

.method static bridge synthetic o(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mViewY:I

    return p0
.end method

.method static bridge synthetic p(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mTouchX:F

    return-void
.end method

.method static bridge synthetic q(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mTouchY:F

    return-void
.end method

.method static bridge synthetic r(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mViewX:I

    return-void
.end method

.method private resetData()V
    .locals 1

    const-string v0, "null"

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateRunningPhysicalId(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateDynamicFovStreamType(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic s(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mViewY:I

    return-void
.end method

.method private declared-synchronized startForegroundService()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mIsServiceForeground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mIsServiceForeground:Z

    .line 4
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "CameraLogViewer_Service_Channel"

    const-string v2, "CameraLogViewer Service Channel"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 5
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 6
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 7
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "CameraLogViewer_Service_Channel"

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/camera/core2/R$string;->h:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/samsung/android/camera/core2/R$drawable;->a:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x65

    .line 11
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static bridge synthetic t(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->resetData()V

    return-void
.end method

.method static bridge synthetic u(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateDynamicFovStreamType(Ljava/lang/String;)V

    return-void
.end method

.method private updateDynamicFovStreamType(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/processor/util/f;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/camera/core2/processor/util/f;-><init>(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateDynamicShotInfo(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->b()J

    move-result-wide v8

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->i(Ljava/lang/Integer;)I

    move-result v6

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->j(Ljava/lang/Integer;)I

    move-result v4

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->h(Ljava/lang/Integer;)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->E(I)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {v1}, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->b(I)Ljava/util/List;

    move-result-object v7

    .line 8
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mUiHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 9
    new-instance v0, Lcom/samsung/android/camera/core2/processor/util/c;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/camera/core2/processor/util/c;-><init>(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;ILjava/lang/String;ILjava/util/List;J)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateMemoryStatus()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 3
    new-instance v1, Lcom/samsung/android/camera/core2/processor/util/a;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/processor/util/a;-><init>(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateProcessRequestInfo(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V
    .locals 11

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result v3

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getImageInfo()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->b1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/ShootingMode;->k(I)Lcom/samsung/android/camera/core2/util/ShootingMode;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getImageInfo()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->H0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v4}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7
    invoke-static {v0}, Lcom/samsung/android/camera/core2/container/LowPowerMode;->k(I)Lcom/samsung/android/camera/core2/container/LowPowerMode;

    move-result-object v6

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->E(I)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getExtraInfo()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->b(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v7, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getSavingType()Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v0, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getCurrentProcessCount()I

    move-result v8

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getTotalProcessCount()I

    move-result v9

    .line 13
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mUiHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 14
    new-instance v10, Lcom/samsung/android/camera/core2/processor/util/d;

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/camera/core2/processor/util/d;-><init>(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Lcom/samsung/android/camera/core2/util/ShootingMode;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/camera/core2/container/LowPowerMode;Ljava/lang/String;II)V

    invoke-virtual {p1, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private updateRealtimeOverHeatHint(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/processor/util/g;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/camera/core2/processor/util/g;-><init>(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateRunningPhysicalId(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/processor/util/h;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/camera/core2/processor/util/h;-><init>(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateSequenceState(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/processor/util/e;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/camera/core2/processor/util/e;-><init>(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateStackedNum(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/processor/util/b;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/camera/core2/processor/util/b;-><init>(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateSunDetectionInfo(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/processor/util/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/camera/core2/processor/util/i;-><init>(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method static bridge synthetic v(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateDynamicShotInfo(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V

    return-void
.end method

.method static bridge synthetic w(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateMemoryStatus()V

    return-void
.end method

.method static bridge synthetic x(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateProcessRequestInfo(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V

    return-void
.end method

.method static bridge synthetic y(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateRealtimeOverHeatHint(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic z(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateRunningPhysicalId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 1
    sget-object p1, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "onBind E"

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->startForegroundService()V

    const-string v0, "null"

    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateRunningPhysicalId(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateDynamicFovStreamType(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateMemoryStatus()V

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateStackedNum(I)V

    const-string v0, "IDLE"

    .line 7
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->updateSequenceState(Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService$LoggingHandler;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mLoggingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService$LoggingHandler;-><init>(Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;Landroid/os/Looper;)V

    .line 9
    new-instance p0, Landroid/os/Messenger;

    invoke-direct {p0, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v0, "onBind X"

    .line 10
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "onCreate E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->initView()V

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mUiHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "LoggingHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mLoggingHandlerThread:Landroid/os/HandlerThread;

    .line 6
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    const-string p0, "onCreate X"

    .line 7
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "onDestroy E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 5
    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mView:Landroid/view/View;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mLoggingHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mLoggingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    sget-object v2, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterruptedException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 10
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mLoggingHandlerThread:Landroid/os/HandlerThread;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->mUiHandler:Landroid/os/Handler;

    .line 14
    :cond_2
    sget-object p0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "onDestroy X"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
