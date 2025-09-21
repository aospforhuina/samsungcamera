.class public Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;
.super Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;
.source "SuperSlowMotionPresenter.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$Presenter;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$SuperSlowMotionInfoListener;
.implements Lcom/sec/android/app/camera/interfaces/AeAfManager$ContinuousAfListener;
.implements Lcom/sec/android/app/camera/interfaces/AeAfManager$TouchAeAfEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$BrightnessValueListener;
.implements Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter<",
        "Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;",
        ">;",
        "Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$Presenter;",
        "Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;",
        "Lcom/sec/android/app/camera/interfaces/CallbackManager$SuperSlowMotionInfoListener;",
        "Lcom/sec/android/app/camera/interfaces/AeAfManager$ContinuousAfListener;",
        "Lcom/sec/android/app/camera/interfaces/AeAfManager$TouchAeAfEventListener;",
        "Lcom/sec/android/app/camera/interfaces/CallbackManager$BrightnessValueListener;",
        "Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;"
    }
.end annotation


# static fields
.field private static final ENABLE_LOW_LIGHT_FRC_MSG:I = 0xc

.field private static final ENABLE_LOW_LIGHT_FRC_MSG_DELAY:I = 0xbb8

.field private static final ENABLE_MOTION_DETECTION:I = 0x7

.field private static final HELP_GUIDE_SINGLE_AUTO:I = 0x1

.field private static final HELP_GUIDE_SINGLE_MANUAL:I = 0x2

.field private static final HIDE_HELP_GUIDE_TIMER_DELAY:I = 0x1770

.field private static final HIDE_HELP_GUIDE_TIME_OUT_MSG:I = 0xb

.field private static final HIDE_LOW_LIGHT_WARNING_TOAST_TIME_OUT_MSG:I = 0xa

.field private static final HIDE_LOW_LIGHT_WARNING_TOAST_TIME_OUT_MSG_DELAY:I = 0xbb8

.field private static final HIDE_RECORDING_GUIDE_TOAST_MSG:I = 0x9

.field private static final HIDE_RECORDING_GUIDE_TOAST_MSG_DELAY:I = 0x5dc

.field private static final LOW_LIGHT_FRC_THRESHOLD:I = 0x14d

.field private static final NORMAL_FRC_THRESHOLD:I = 0x197

.field private static final RECORDED_SUPER_SLOW_MSG:I = 0x1

.field private static final RECORDED_SUPER_SLOW_MSG_DELAY:I = 0x3e8

.field private static final RELEASE_TOUCH_PREVENT:I = 0x2

.field private static final RELEASE_TOUCH_PREVENT_DURATION:I = 0x3e8

.field private static final SHAKE_INTENSE_UNSTABLE_MSG:I = 0x6

.field private static final SHAKE_STABLE_MSG:I = 0x4

.field private static final SHAKE_UNSTABLE_MSG:I = 0x5

.field private static final STABLE_CHECK_DURATION:I = 0x258

.field private static final STABLE_CHECK_INIT_DURATION:I = 0x4b0

.field private static final STEADY_CONDITION_CHECK_MSG_DELAY:I = 0x4b0

.field private static final SUPER_SLOW_ENABLED:I = 0x8

.field private static final SUPER_SLOW_ENABLED_MSG_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "SuperSlowMotionPresenter"

.field private static final TERMINATED_RECORDING_MSG:I = 0x3

.field private static final TERMINATED_RECORDING_MSG_DELAY:I = 0x12c

.field private static final UNSTABLE_CHECK_DURATION:I = 0x64

.field private static final VIDEO_SAVE_AVAILABLE_TIME:I = 0x9c4


# instance fields
.field private final PROGRESS_CIRCLE_STEP:I

.field private final PROGRESS_CIRCLE_STEP_OFFSET:I

.field private mCurrentRecordingTime:J

.field private mCurrentSuperSlowMotionState:I

.field private mFrcTimeResult:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

.field private mIsBackgroundRecording:Z

.field private mIsHelpGuideAvailable:Z

.field private mIsLowLightWarningToastDisplayed:Z

.field private mIsMotionDetectionAvailable:Z

.field private mIsMotionDetectionNotAvailable:Z

.field private mIsNeedToShowGuide:Z

.field private mIsNeedToShowToastPopup:Z

.field private mIsSteadyGuideHighlighted:Z

.field private mIsSuperSlowDisabled:Z

.field private mIsSuperSlowMotionRecording:Z

.field private mIsTouchDisabled:Z

.field private mLastBrightnessValue:I

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMotionDetectEnabled:Z

.field private mNeedStopBackgroundRecording:Z

.field private mStableCheckTime:I

.field private mSuperSlowMotionStabilityChecker:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionStabilityChecker;

.field private mSuperSlowRectCoordinates:Landroid/graphics/Rect;

.field private mVideoSavingTime:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeContract$View;I)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0182

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->PROGRESS_CIRCLE_STEP:I

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0181

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->PROGRESS_CIRCLE_STEP_OFFSET:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsBackgroundRecording:Z

    .line 5
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowMotionRecording:Z

    .line 6
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsTouchDisabled:Z

    .line 7
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowDisabled:Z

    .line 8
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsMotionDetectionAvailable:Z

    .line 9
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsMotionDetectionNotAvailable:Z

    .line 10
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mMotionDetectEnabled:Z

    .line 11
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mNeedStopBackgroundRecording:Z

    .line 12
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsLowLightWarningToastDisplayed:Z

    .line 13
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsHelpGuideAvailable:Z

    .line 14
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSteadyGuideHighlighted:Z

    .line 15
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsNeedToShowGuide:Z

    .line 16
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsNeedToShowToastPopup:Z

    const/16 p2, 0x4b0

    .line 17
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mStableCheckTime:I

    .line 18
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mLastBrightnessValue:I

    .line 19
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const-wide/16 p1, 0x0

    .line 20
    iput-wide p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mCurrentRecordingTime:J

    .line 21
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$1;-><init>(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;-><init>(Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeContract$View;I)V

    .line 23
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0182

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->PROGRESS_CIRCLE_STEP:I

    .line 24
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0181

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->PROGRESS_CIRCLE_STEP_OFFSET:I

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsBackgroundRecording:Z

    .line 26
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowMotionRecording:Z

    .line 27
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsTouchDisabled:Z

    .line 28
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowDisabled:Z

    .line 29
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsMotionDetectionAvailable:Z

    .line 30
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsMotionDetectionNotAvailable:Z

    .line 31
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mMotionDetectEnabled:Z

    .line 32
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mNeedStopBackgroundRecording:Z

    .line 33
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsLowLightWarningToastDisplayed:Z

    .line 34
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsHelpGuideAvailable:Z

    .line 35
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSteadyGuideHighlighted:Z

    .line 36
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsNeedToShowGuide:Z

    .line 37
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsNeedToShowToastPopup:Z

    const/16 p2, 0x4b0

    .line 38
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mStableCheckTime:I

    .line 39
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mLastBrightnessValue:I

    .line 40
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const-wide/16 p1, 0x0

    .line 41
    iput-wide p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mCurrentRecordingTime:J

    .line 42
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$1;-><init>(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)Lcom/sec/android/app/camera/interfaces/RecordingManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method private addFrcResultToSef(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mFrcTimeResult:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mFrcTimeResult:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mFrcTimeResult:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mFrcTimeResult:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":1!1"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFrcResultToSef : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SuperSlowMotionPresenter"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/16 v0, 0xb00

    const-string v2, "Super_SlowMotion_Data"

    .line 12
    invoke-static {v1, v2, p1, v0}, Lcom/sec/android/app/camera/util/SemExtendedFormatUtils;->addData(Ljava/io/File;Ljava/lang/String;[BI)I

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mFrcTimeResult:Landroid/util/Pair;

    :cond_0
    return-void
.end method

.method private cancelAutoDetection()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isSyncCancelSuperSlowMotionAutoDetectSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mMotionDetectEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mNeedStopBackgroundRecording:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mNeedStopBackgroundRecording:Z

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->cancelSuperSlowMotionRecording(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->enableSuperSlowMotionAutoDetect(Z)V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->stopBackgroundRecording()V

    :cond_1
    :goto_0
    return-void
.end method

.method private clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsTouchDisabled:Z

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowDisabled:Z

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mNeedStopBackgroundRecording:Z

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mCurrentSuperSlowMotionState:I

    .line 5
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowMotionRecording:Z

    .line 6
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsLowLightWarningToastDisplayed:Z

    .line 7
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsBackgroundRecording:Z

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsHelpGuideAvailable:Z

    .line 9
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsNeedToShowGuide:Z

    .line 10
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsNeedToShowToastPopup:Z

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->hideMovableSuperSlowMotionRect()V

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->hideFixedSuperSlowMotionRect()V

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->hideProgressCircle()V

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->hideSuperSlowMotionGuide()V

    .line 15
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->hideLowLightWarningToast()V

    .line 16
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->hideHelpGuideToast()V

    .line 17
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->hideRecordingToast()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->lambda$onStateOperating$1()V

    return-void
.end method

.method private enableEngineCallbacksForRecording(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableSuperSlowMotionInfoCallback(Z)V

    return-void
.end method

.method private enableEngineEventListener(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusEventListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$TouchAeAfEventListener;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    if-eqz p1, :cond_2

    move-object v2, p0

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setContinuousAfEventListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$ContinuousAfListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_3

    move-object v2, p0

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setBrightnessValueListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$BrightnessValueListener;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    if-eqz p1, :cond_4

    move-object v2, p0

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setShutterTimerCaptureTriggerListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move-object p0, v1

    :goto_5
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSuperSlowMotionInfoListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SuperSlowMotionInfoListener;)V

    return-void
.end method

.method private enableSuperSlowMotionAutoDetect(Z)V
    .locals 4

    const-string v0, "SuperSlowMotionPresenter"

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSuperSlowMotionAutoDetect : roi = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mSuperSlowRectCoordinates:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mSuperSlowRectCoordinates:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mSuperSlowRectCoordinates:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mSuperSlowRectCoordinates:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mSuperSlowRectCoordinates:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->enableSuperSlowMotionAutoDetect(ZILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mMotionDetectEnabled:Z

    goto :goto_0

    :cond_0
    const-string p1, "enableSuperSlowMotionAutoDetect : roi null"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2, v2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->enableSuperSlowMotionAutoDetect(ZILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 6
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mMotionDetectEnabled:Z

    :goto_0
    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->lambda$onStateOperating$0()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->onStabilityChanged(II)V

    return-void
.end method

.method private getVideoSavingProgressedStep(J)F
    .locals 0

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    .line 1
    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->PROGRESS_CIRCLE_STEP:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    .line 2
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->PROGRESS_CIRCLE_STEP_OFFSET:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p2

    return p0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->onAutoDetectCanceled()V

    return-void
.end method

.method private handleAccelerometerSensorEvent(I)V
    .locals 3

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 2
    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsMotionDetectionAvailable:Z

    if-nez p1, :cond_2

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const-wide/16 v1, 0x4b0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private handleEnableMotionDetection()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->enableSuperSlowMotionAutoDetect(Z)V

    .line 3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSteadyGuideHighlighted:Z

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->showWaitingForMotionGuide()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->animateSlowMotionGuide()V

    :cond_1
    const/16 v0, 0x4b0

    .line 6
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mStableCheckTime:I

    return-void
.end method

.method private handleGyroscopeSensorEvent(I)V
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/4 v2, 0x6

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    const-wide/16 v4, 0x64

    if-eq p1, v3, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsMotionDetectionNotAvailable:Z

    if-nez p1, :cond_3

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsMotionDetectionNotAvailable:Z

    if-nez p1, :cond_3

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsMotionDetectionAvailable:Z

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mStableCheckTime:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private handleLowLightFrcMessage(I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->isLowLightFrcEnable(I)Z

    move-result p1

    const/16 v0, 0xc

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleLowLightWarningToast(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsLowLightWarningToastDisplayed:Z

    if-nez v0, :cond_2

    const/16 v0, 0x17c

    if-gt p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowMotionRecording:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PREPARED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-nez p1, :cond_2

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->showLowLightWarningToast()V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleShakeStabilityState(I)V
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mCurrentSuperSlowMotionState:I

    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsMotionDetectionNotAvailable:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->cancelSuperSlowMotionRecording(Z)V

    .line 3
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsMotionDetectionNotAvailable:Z

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 4
    :cond_3
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mCurrentSuperSlowMotionState:I

    if-eq p1, v1, :cond_4

    return-void

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mNeedStopBackgroundRecording:Z

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->cancelSuperSlowMotionRecording(Z)V

    goto :goto_1

    .line 6
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->onDeviceStable()V

    :goto_1
    return-void
.end method

.method private handleTerminatedRecording()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mIsMediaUnmountedWhileRecording:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mIsMediaUnmountedWhileRecording:Z

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->reconnectMaker()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->prepareVideoRecording()V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resetAfTrigger()V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->startBackgroundRecording()V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->showMovableSuperSlowMotionRect(Z)V

    .line 10
    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowMotionRecording:Z

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->showView(I)V

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->hideFixedSuperSlowMotionRect()V

    .line 13
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->showHelpGuideToast()V

    .line 14
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    const v0, 0x7f080461

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->updateFixedSuperSlowMotionRectImage(I)V

    return-void
.end method

.method private hideHelpGuideToast()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SUPER_SLOW_MOTION_HELP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private hideLowLightWarningToast()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SUPER_SLOW_MOTION_HELP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private hideMotionGuideRect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->hideMovableSuperSlowMotionRect()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    const v1, 0x7f080461

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->updateFixedSuperSlowMotionRectImage(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->hideFixedSuperSlowMotionRect()V

    return-void
.end method

.method private hideRecordingToast()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->hideRecordingToast()V

    return-void
.end method

.method static bridge synthetic i(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsHelpGuideAvailable:Z

    return p0
.end method

.method private isAutoDetectionStarted()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsBackgroundRecording:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isFrcSupported()Z
    .locals 2

    sget-object v0, Lu3/b;->s4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isLowLightFrcEnable(I)Z
    .locals 4

    .line 1
    sget-object v0, Lu3/b;->s4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsBackgroundRecording:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowMotionRecording:Z

    if-eqz v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    const/16 v0, 0x197

    if-ge p1, v0, :cond_5

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 4
    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    if-nez p0, :cond_3

    move p0, v3

    goto :goto_0

    :cond_3
    move p0, v1

    :goto_0
    const/16 v0, 0x14d

    if-gt p1, v0, :cond_4

    move p1, v3

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_1
    and-int/2addr p0, p1

    if-eqz p0, :cond_6

    :cond_5
    move v1, v3

    :cond_6
    :goto_2
    return v1
.end method

.method private isStabilityCheckRequired()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsBackgroundRecording:Z

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowMotionRecording:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mCurrentSuperSlowMotionState:I

    if-ne p0, v2, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method static bridge synthetic j(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mLastBrightnessValue:I

    return p0
.end method

.method static bridge synthetic k(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowDisabled:Z

    return-void
.end method

.method static bridge synthetic l(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsTouchDisabled:Z

    return-void
.end method

.method private synthetic lambda$onStateOperating$0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->onMotionDetected()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->startSuperSlowMotionRecording()V

    return-void
.end method

.method private synthetic lambda$onStateOperating$1()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->hideView(I)V

    return-void
.end method

.method static bridge synthetic m(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->handleEnableMotionDetection()V

    return-void
.end method

.method static bridge synthetic n(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->handleShakeStabilityState(I)V

    return-void
.end method

.method static bridge synthetic o(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->handleTerminatedRecording()V

    return-void
.end method

.method private onAutoDetectCanceled()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->hideSuperSlowMotionGuide()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->startShowUnSteadyState()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    const v0, 0x7f080461

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->updateFixedSuperSlowMotionRectImage(I)V

    return-void
.end method

.method private onDeviceStable()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mCurrentSuperSlowMotionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsTouchDisabled:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->isRecordingInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 4
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 5
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCK_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 6
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 7
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isAfSupported()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->startAfTrigger()V

    goto :goto_1

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 10
    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsMotionDetectionAvailable:Z

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsMotionDetectionNotAvailable:Z

    :cond_4
    :goto_2
    return-void
.end method

.method private onMotionDetected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    const v1, 0x7f080460

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->updateFixedSuperSlowMotionRectImage(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->startMotionDetectBlinkAnimation()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->hideSuperSlowMotionGuide()V

    return-void
.end method

.method private onStabilityChanged(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStabilityChanged Sensor Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stability "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperSlowMotionPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->isStabilityCheckRequired()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->handleGyroscopeSensorEvent(I)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->handleAccelerometerSensorEvent(I)V

    :goto_0
    return-void
.end method

.method private onStateAutoDetectCancelled()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->enableSuperSlowMotionAutoDetect(Z)V

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resetAfTrigger()V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/superslowmotion/d;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/d;-><init>(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->restartMotionDetection()V

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsMotionDetectionNotAvailable:Z

    const/16 v1, 0x258

    .line 7
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mStableCheckTime:I

    const/4 v1, 0x3

    .line 8
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mCurrentSuperSlowMotionState:I

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->notifyCancelSuperSlowMotionCompleted()V

    .line 10
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mNeedStopBackgroundRecording:Z

    if-eqz v1, :cond_1

    .line 11
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mNeedStopBackgroundRecording:Z

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->stopBackgroundRecording()V

    :cond_1
    return-void
.end method

.method private onStateOperating()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mCurrentSuperSlowMotionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mCurrentSuperSlowMotionState:I

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->notifyCancelSuperSlowMotionCompleted()V

    .line 4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mNeedStopBackgroundRecording:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mNeedStopBackgroundRecording:Z

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/superslowmotion/c;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/c;-><init>(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->enableSuperSlowMotionAutoDetect(Z)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/superslowmotion/b;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/b;-><init>(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    :cond_3
    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsTouchDisabled:Z

    return-void

    :cond_4
    :goto_1
    const-string p0, "SuperSlowMotionPresenter"

    const-string v0, "onSuperSlowMotionStateChanged : operating returned by recording stopping or current is operating"

    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onStateReady()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mCurrentSuperSlowMotionState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4
    :cond_1
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mCurrentSuperSlowMotionState:I

    return-void
.end method

.method static bridge synthetic p(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->hideHelpGuideToast()V

    return-void
.end method

.method private prepareMotionDetection()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->enableSuperSlowMotionAutoDetect(Z)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->restartMotionDetection()V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->startShowUnSteadyState()V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;->setBottomBackgroundPosition(II)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->hideMovableSuperSlowMotionRect()V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->showFixedSuperSlowMotionRect(Z)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->hideView(I)V

    return-void
.end method

.method private prepareRecording()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsBackgroundRecording:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lu3/b;->r4:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->stopBackgroundRecording()V

    goto :goto_1

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->prepareVideoRecording()V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->stopBackgroundRecording()V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->reconnectMaker()V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resetAfTrigger()V

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    :goto_1
    return-void
.end method

.method static bridge synthetic q(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->hideLowLightWarningToast()V

    return-void
.end method

.method static bridge synthetic r(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->isLowLightFrcEnable(I)Z

    move-result p0

    return p0
.end method

.method private restartHelpGuideTimer()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private restartMotionDetection()V
    .locals 4

    const-string v0, "SuperSlowMotionPresenter"

    const-string v1, "restartMotionDetection"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mStableCheckTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsMotionDetectionAvailable:Z

    return-void
.end method

.method private restartRecordingGuideToastTimer()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static bridge synthetic s(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->setLowLightFrc()V

    return-void
.end method

.method private sendSALogRecordingStopped(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->updateSALogFlashCustomDimen(Ljava/util/HashMap;)V

    .line 3
    sget-object v1, Lcom/sec/android/app/camera/logging/SaLogEventKey;->SUPER_SLOW_MOTION_RECORD_DETECTION:Lcom/sec/android/app/camera/logging/SaLogEventKey;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/sec/android/app/camera/logging/SaLogEventKey;->SUPER_SLOW_MOTION_RECORD_SINGLE_TAKE_FRC:Lcom/sec/android/app/camera/logging/SaLogEventKey;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogDetail;->getDetailByFrcMode(I)Lcom/sec/android/app/camera/logging/SaLogDetail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/logging/SaLogDetail;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventKey;->SUPER_SLOW_MOTION_RECORD_FINISH_FRC:Lcom/sec/android/app/camera/logging/SaLogEventKey;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sec/android/app/camera/logging/SaLogDetail;->SUPER_SLOW_MOTION_FINISH_NORMAL:Lcom/sec/android/app/camera/logging/SaLogDetail;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/logging/SaLogDetail;->SUPER_SLOW_MOTION_FINISH_ABNORMAL:Lcom/sec/android/app/camera/logging/SaLogDetail;

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/logging/SaLogDetail;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->SUPER_SLOW_MOTION_RECORD:Lcom/sec/android/app/camera/logging/SaLogEventId;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;Ljava/util/Map;)V

    return-void
.end method

.method private setLowLightFrc()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v3, Lu3/b;->r4:Lu3/b;

    invoke-static {v3}, Lu3/d;->e(Lu3/b;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    xor-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->changeSuperSlowMotionRecordingFPS(Z)V

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    xor-int/2addr v0, v2

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method private showHelpGuideToast()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsHelpGuideAvailable:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SUPER_SLOW_MOTION_HELP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->isPopupVisible([Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->isSuperSlowMotionGuideVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->showHelpGuideToast(I)V

    .line 6
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsHelpGuideAvailable:Z

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->restartHelpGuideTimer()V

    return-void
.end method

.method private showHelpGuideToast(I)V
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const p1, 0x7f12059d

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lu3/b;->y:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f12059b

    goto :goto_0

    :cond_1
    const p1, 0x7f12059e

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->QUICK_SETTING:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->isPopupVisible([Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsNeedToShowToastPopup:Z

    if-nez v0, :cond_2

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SUPER_SLOW_MOTION_HELP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;I)Z

    :cond_2
    return-void
.end method

.method private showLowLightWarningToast()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->isSuperSlowMotionGuideVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsNeedToShowToastPopup:Z

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->hideHelpGuideToast()V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->hideRecordingToast()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SUPER_SLOW_MOTION_HELP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    const v2, 0x7f12059a

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;I)Z

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const/16 v1, 0xa

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsLowLightWarningToastDisplayed:Z

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->speakTtsAllAtOnce(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private showRecordingCompletedToast()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSteadyGuideHighlighted:Z

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SUPER_SLOW_MOTION_HELP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    const v2, 0x7f1204d8

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;I)Z

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->restartRecordingGuideToastTimer()V

    return-void
.end method

.method private showWaitSavingVideoToast()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    const v0, 0x7f1205a1

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->showRecordingToast(I)V

    :cond_0
    return-void
.end method

.method private showWaitingForMotionGuide()V
    .locals 3

    const-string v0, "SuperSlowMotionPresenter"

    const-string/jumbo v1, "showWaitingForMotionGuide"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSteadyGuideHighlighted:Z

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->ZOOM_RESTRICTION:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    const v1, 0x7f1201c6

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->showSuperSlowMotionGuide(IZ)V

    return-void
.end method

.method private startBackgroundRecording()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsBackgroundRecording:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->startBackgroundRecording()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsBackgroundRecording:Z

    const/16 v0, 0x4b0

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mStableCheckTime:I

    :cond_0
    return-void
.end method

.method private startShowUnSteadyState()V
    .locals 3

    const-string v0, "SuperSlowMotionPresenter"

    const-string/jumbo v1, "startShowUnSteadyState"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSteadyGuideHighlighted:Z

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->ZOOM_RESTRICTION:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    const v1, 0x7f12059c

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->showSuperSlowMotionGuide(IZ)V

    return-void
.end method

.method private startSuperSlowMotionRecording()V
    .locals 3

    const-string v0, "SuperSlowMotionPresenter"

    const-string/jumbo v1, "startSuperSlowMotionRecording"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopInactivityTimer()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsNeedToShowGuide:Z

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->ZOOM_RESTRICTION:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)V

    .line 5
    sget-object v0, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->STARTING:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->setCenterButtonStateForRecording(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeContract$View;->updateStartRecordingLayout()V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isSuperSlowMotionQFrcSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    const v1, 0x7f120428

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->showRecordingToast(I)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->startAfTrigger()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowMotionRecording:Z

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->startSuperSlowMotionRecording(I)V

    .line 12
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->stopTouchAeAfResetTimer()V

    return-void
.end method

.method private stopBackgroundRecording()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsBackgroundRecording:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->stopBackgroundRecording()V

    :cond_0
    return-void
.end method

.method private stopVideoStream()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->isRecordingInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->stopVideoStream()V

    :cond_0
    return-void
.end method

.method static bridge synthetic t(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->showHelpGuideToast()V

    return-void
.end method

.method private terminateBackgroundRecording()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowMotionRecording:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->terminateSuperSlowMotionRecording()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->stopBackgroundRecording()V

    const/4 p0, 0x1

    return p0
.end method

.method private terminateSuperSlowMotionRecording()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mCurrentRecordingTime:J

    const-wide/16 v2, 0x9c4

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1205a0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->cancelRecording()Z

    move-result p0

    return p0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f12059f

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->stopRecording()Z

    move-result p0

    return p0
.end method

.method private updateSuperSlowMotionLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->showMovableSuperSlowMotionRect(Z)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->showHelpGuideToast()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->hideMotionGuideRect()V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->hideHelpGuideToast()V

    :goto_0
    return-void
.end method

.method private updateVideoSavingTime()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/factory/SizeFactory;->create(II)Landroid/util/Size;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Capability;->getSuperSlowMotionImageCount(Landroid/util/Size;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    sget-object v1, Lu3/b;->r4:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :cond_1
    :goto_0
    mul-int/2addr v0, v2

    .line 4
    sget-object v1, Lu3/h;->Y:Lu3/h;

    invoke-static {v1}, Lu3/d;->b(Lu3/h;)I

    move-result v1

    div-int/lit8 v1, v1, 0x1e

    mul-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x7d0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mVideoSavingTime:I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVideoSavingTime : mVideoSavingTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mVideoSavingTime:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SuperSlowMotionPresenter"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCenterButtonProperty()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/util/Pair;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->CUSTOM:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    const v1, 0x7f0804fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method protected getQuickSettingItemList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lu3/b;->v0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lu3/b;->s1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->EMPTY:Lcom/sec/android/app/camera/interfaces/CommandId;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MANUAL_TORCH_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    .line 2
    :goto_0
    sget-object v1, Lu3/b;->o4:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_3

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_2

    .line 4
    sget-object p0, Lu3/h;->X:Lu3/h;

    invoke-static {p0}, Lu3/d;->b(Lu3/h;)I

    move-result p0

    const/16 v0, 0x320

    if-ne p0, v0, :cond_1

    new-array p0, v2, [Lcom/sec/android/app/camera/interfaces/CommandId;

    .line 5
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->LAUNCH_SETTING_ACTIVITY:Lcom/sec/android/app/camera/interfaces/CommandId;

    aput-object v0, p0, v5

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MANUAL_TORCH_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    aput-object v0, p0, v4

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE:Lcom/sec/android/app/camera/interfaces/CommandId;

    aput-object v0, p0, v3

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-array p0, v3, [Lcom/sec/android/app/camera/interfaces/CommandId;

    .line 6
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->LAUNCH_SETTING_ACTIVITY:Lcom/sec/android/app/camera/interfaces/CommandId;

    aput-object v0, p0, v5

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MANUAL_TORCH_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    aput-object v0, p0, v4

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    new-array p0, v4, [Lcom/sec/android/app/camera/interfaces/CommandId;

    .line 7
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->LAUNCH_SETTING_ACTIVITY:Lcom/sec/android/app/camera/interfaces/CommandId;

    aput-object v0, p0, v5

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 8
    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->isSuperSlowMotionSupported()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 9
    sget-object p0, Lu3/b;->r4:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lu3/h;->X:Lu3/h;

    invoke-static {p0}, Lu3/d;->b(Lu3/h;)I

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lu3/b;->s4:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x4

    new-array p0, p0, [Lcom/sec/android/app/camera/interfaces/CommandId;

    .line 10
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->LAUNCH_SETTING_ACTIVITY:Lcom/sec/android/app/camera/interfaces/CommandId;

    aput-object v1, p0, v5

    aput-object v0, p0, v4

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SUPER_SLOW_MOTION_DETECTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    aput-object v0, p0, v3

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE:Lcom/sec/android/app/camera/interfaces/CommandId;

    aput-object v0, p0, v2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    new-array p0, v2, [Lcom/sec/android/app/camera/interfaces/CommandId;

    .line 11
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->LAUNCH_SETTING_ACTIVITY:Lcom/sec/android/app/camera/interfaces/CommandId;

    aput-object v1, p0, v5

    aput-object v0, p0, v4

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SUPER_SLOW_MOTION_DETECTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    aput-object v0, p0, v3

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_6
    new-array p0, v2, [Lcom/sec/android/app/camera/interfaces/CommandId;

    .line 12
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->LAUNCH_SETTING_ACTIVITY:Lcom/sec/android/app/camera/interfaces/CommandId;

    aput-object v1, p0, v5

    aput-object v0, p0, v4

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SUPER_SLOW_MOTION_DETECTION_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    aput-object v0, p0, v3

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected handleBackKey()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p0, "SuperSlowMotionPresenter"

    const-string v0, "handleBackKey return : Recording control is not available at this moment, ignore key up event"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowMotionRecording:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->showWaitSavingVideoToast()V

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->isRecordingInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->isAutoDetectionStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->cancelAutoDetection()V

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return v1

    .line 9
    :cond_2
    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsBackgroundRecording:Z

    xor-int/2addr p0, v1

    return p0

    .line 10
    :cond_3
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->handleBackKey()Z

    move-result p0

    return p0
.end method

.method protected handleShutterButtonClick(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initializeSettingChangedListenerKey()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method injectMock(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionStabilityChecker;Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mSuperSlowMotionStabilityChecker:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionStabilityChecker;

    .line 2
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    return-void
.end method

.method protected onActivate()V
    .locals 5

    .line 1
    sget-object v0, Lu3/b;->y:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.WIFI_DISPLAY_SOURCE_STATE_DISCONNECTED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->hideFixedSuperSlowMotionRect()V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->showMovableSuperSlowMotionRect(Z)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->startBackgroundRecording()V

    .line 9
    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsHelpGuideAvailable:Z

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->updateSuperSlowMotionLayout()V

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->enableSuperSlowMotionAutoDetect(Z)V

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->updateVideoSavingTime()V

    .line 13
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mSuperSlowMotionStabilityChecker:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionStabilityChecker;

    if-nez v2, :cond_2

    .line 14
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionStabilityChecker;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionStabilityChecker;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mSuperSlowMotionStabilityChecker:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionStabilityChecker;

    .line 15
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mSuperSlowMotionStabilityChecker:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionStabilityChecker;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionStabilityChecker;->start()V

    .line 16
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mSuperSlowMotionStabilityChecker:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionStabilityChecker;

    new-instance v3, Lcom/sec/android/app/camera/shootingmode/superslowmotion/a;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/a;-><init>(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionStabilityChecker;->setStabilityChangeListener(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionStabilityChecker$StabilityChangeListener;)V

    .line 17
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->enableEngineEventListener(Z)V

    .line 18
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->enableEngineCallbacksForRecording(Z)V

    .line 19
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_ZOOM_RESTRICTION:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_QUICK_SETTING:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-static {v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;->registerListener(Ljava/util/Set;Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V

    .line 20
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 21
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setRestoreTorchFlashMode(Z)V

    .line 22
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v3, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    :cond_3
    return-void
.end method

.method public onBluetoothMicClosed()V
    .locals 0

    return-void
.end method

.method public onBluetoothMicOpened()V
    .locals 0

    return-void
.end method

.method public onBrightnessValueChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mLastBrightnessValue:I

    .line 2
    sget-object v0, Lu3/b;->r4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->handleLowLightFrcMessage(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->handleLowLightWarningToast(I)V

    :goto_0
    return-void
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;II)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCameraSettingChanged : key="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SuperSlowMotionPresenter"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p0, "onCameraSettingChanged : Returned because shooting mode is not activated"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    sget-object p2, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->enableSuperSlowMotionAutoDetect(Z)V

    if-ne p3, p2, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->stopBackgroundRecording()V

    goto :goto_1

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->startBackgroundRecording()V

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->hideMotionGuideRect()V

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->hideHelpGuideToast()V

    goto :goto_1

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, p3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, p2, :cond_4

    .line 11
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->prepareRecording()V

    goto :goto_1

    .line 12
    :cond_4
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsBackgroundRecording:Z

    if-eqz p1, :cond_5

    .line 13
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->prepareRecording()V

    goto :goto_0

    .line 14
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->startBackgroundRecording()V

    .line 15
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->updateVideoSavingTime()V

    :goto_1
    return-void
.end method

.method public onConnectMakerPrepared(ILcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 2

    const-string p1, "SuperSlowMotionPresenter"

    const-string v0, "onConnectMakerPrepared"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    invoke-interface {p3, v0}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setPictureSize(Landroid/util/Size;)V

    .line 3
    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->getSuperSlowMotionQFrcFps()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    invoke-interface {p3, v0, v0}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setVideoFpsRange(II)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lu3/h;->Y:Lu3/h;

    invoke-static {v0}, Lu3/d;->b(Lu3/h;)I

    move-result v1

    invoke-static {v0}, Lu3/d;->b(Lu3/h;)I

    move-result v0

    invoke-interface {p3, v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setVideoFpsRange(II)V

    .line 6
    :goto_0
    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isSuperSlowMotionSupported()Z

    move-result p2

    const-string v0, ")"

    const-string v1, "onConnectMakerPrepared - setSuperSlowMotionMode ("

    if-eqz p2, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->isFrcSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->SINGLE_FRC:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->SINGLE:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    .line 8
    :goto_1
    invoke-interface {p3, p0}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setSuperSlowMotionMode(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;)V

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 10
    :cond_2
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->SINGLE_FRC:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    invoke-interface {p3, p0}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setSuperSlowMotionMode(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;)V

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public onContinuousAfFocused()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowMotionRecording:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsMotionDetectionAvailable:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "SuperSlowMotionPresenter"

    const-string v0, "onContinuousAfFocused : ignored as its either not recording or recording is not of type super slow motion."

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInactivate()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->onInactivate()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STARTING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PREPARED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->stopBackgroundRecording()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->hideMovableSuperSlowMotionRect()V

    .line 5
    sget-object v0, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->IDLE:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->setCenterButtonStateForRecording(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mSuperSlowMotionStabilityChecker:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionStabilityChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionStabilityChecker;->setStabilityChangeListener(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionStabilityChecker$StabilityChangeListener;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mSuperSlowMotionStabilityChecker:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionStabilityChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionStabilityChecker;->stop()V

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->enableEngineEventListener(Z)V

    .line 9
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->enableEngineCallbacksForRecording(Z)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_ZOOM_RESTRICTION:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_QUICK_SETTING:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-static {v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;->unregisterListener(Ljava/util/Set;Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V

    .line 11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->unregisterCameraSettingChangedListeners()V

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    sget-object v0, Lu3/b;->y:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 15
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->clear()V

    return-void
.end method

.method public onRecordButtonClick(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 4

    const-string p1, "SuperSlowMotionPresenter"

    const-string v0, "onRecordButtonClick"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecordingAvailable(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "onRecordButtonClick : Returned because pause recording not available"

    .line 3
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->getCenterButtonState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->IDLE:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-eq v0, v3, :cond_1

    const-string p0, "onRecordButtonClick : Returned because center button state is not IDLE"

    .line 5
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowMotionRecording:Z

    if-eqz v0, :cond_2

    const-string p0, "onRecordButtonClick : Returned because it\'s on super slow recording."

    .line 7
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PREPARED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v3, :cond_3

    const-string p0, "onRecordButtonClick : Returned because recording state is not PREPARED"

    .line 10
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->startBackgroundRecording()V

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mSuperSlowRectCoordinates:Landroid/graphics/Rect;

    if-eqz p1, :cond_7

    .line 13
    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventId;->SUPER_SLOW_MOTION_ROI_WIDTH:Lcom/sec/android/app/camera/logging/SaLogEventId;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v3, :cond_5

    const-string p0, "onRecordButtonClick : Returned because recording state is not ready, wait background recording."

    .line 15
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 16
    :cond_5
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowDisabled:Z

    if-eqz p1, :cond_6

    return v2

    .line 17
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->startSuperSlowMotionRecording()V

    .line 18
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v0, v2}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;->setBottomBackgroundPosition(II)V

    .line 19
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->NONE:Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;->refreshAeAfProperty(Ljava/util/EnumSet;)V

    .line 20
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p1

    const/16 v0, 0x36

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->hideView(I)V

    .line 21
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->refreshQuickSetting(Ljava/util/List;)V

    .line 22
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->hideHelpGuideToast()V

    .line 23
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->hideLowLightWarningToast()V

    .line 24
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object p0

    new-array p1, v1, [Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->QUICK_SETTING:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    aput-object v0, p1, v2

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->hideVisiblePopup([Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)V

    return v1
.end method

.method public onRecordPauseButtonClick(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onRecordStopButtonClick(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 2

    const-string p1, "SuperSlowMotionPresenter"

    const-string v0, "onRecordStopButtonClick"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mCurrentSuperSlowMotionState:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsTouchDisabled:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->stopRecording()Z

    :cond_2
    :goto_0
    return v0
.end method

.method public onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordingEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperSlowMotionPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$2;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v0, v3, :cond_0

    if-eq v0, v4, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->refreshAeAfProperty()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;->resetBottomBackground(Z)V

    .line 5
    sget-object v0, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->IDLE:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->setCenterButtonStateForRecording(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v3

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeContract$View;->updateStopRecordingLayout(Z)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->setCenterButtonEnabled(Z)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->getQuickSettingItemList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->refreshQuickSetting(Ljava/util/List;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v0

    const/4 v3, -0x3

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->showView(I)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->hideSuperSlowMotionGuide()V

    .line 11
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->hideHelpGuideToast()V

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->hideRecordingToast()V

    .line 13
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowMotionRecording:Z

    if-eqz v0, :cond_3

    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->isFrcSupported()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lu3/b;->B3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->hideProgressCircle()V

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SUPER_SLOW_MOTION_HELP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)V

    .line 17
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->showRecordingCompletedToast()V

    .line 18
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsBackgroundRecording:Z

    if-eqz v0, :cond_4

    .line 19
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsBackgroundRecording:Z

    .line 20
    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->enableEngineCallbacksForRecording(Z)V

    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowMotionRecording:Z

    if-eqz v0, :cond_5

    .line 23
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const-wide/16 v5, 0x12c

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 24
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 25
    :cond_6
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowMotionRecording:Z

    .line 26
    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsNeedToShowGuide:Z

    const-wide/16 v3, 0x0

    .line 27
    iput-wide v3, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mCurrentRecordingTime:J

    .line 28
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;->resetBottomBackground(Z)V

    .line 29
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->STOPPED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    if-ne p1, v0, :cond_7

    goto :goto_1

    :cond_7
    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->sendSALogRecordingStopped(Z)V

    const-string p0, "121"

    .line 30
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_3

    .line 31
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->showMicToast()V

    .line 32
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->enableEngineCallbacksForRecording(Z)V

    .line 33
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, v1, :cond_9

    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->prepareMotionDetection()V

    goto :goto_2

    .line 35
    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartInactivityTimer()V

    .line 36
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->enableSuperSlowMotionAutoDetect(Z)V

    .line 37
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowDisabled:Z

    .line 38
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mHandler:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$MainHandler;

    const/16 p1, 0x8

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 39
    sget-object p0, Ls5/d;->c:Ls5/d;

    invoke-static {p0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object p0

    invoke-virtual {p0}, Ls5/c;->c()V

    :goto_2
    const-string p0, "122"

    .line 40
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->setSAScreenId(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public onRecordingMaxDurationReached()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->terminateRecording()Z

    return-void
.end method

.method public onRecordingTick(JJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordingTick : elapsedTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "SuperSlowMotionPresenter"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-wide p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mCurrentRecordingTime:J

    .line 3
    iget-boolean p3, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsBackgroundRecording:Z

    if-eqz p3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->isFrcSupported()Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p3, Lu3/b;->B3:Lu3/b;

    invoke-static {p3}, Lu3/d;->e(Lu3/b;)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_0
    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-nez p3, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->hideHelpGuideToast()V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->hideRecordingToast()V

    .line 6
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p3, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p4}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result p4

    invoke-interface {p3, p4}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeContract$View;->updateStopRecordingLayout(Z)V

    .line 7
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p3, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    const p4, 0x7f1204d4

    invoke-interface {p3, p4}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->showRecordingToast(I)V

    .line 8
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p3, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {p3}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->showProgressCircle()V

    .line 9
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->handleSuperSlowMotionFrcStarted()V

    .line 10
    :cond_1
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p3, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->getVideoSavingProgressedStep(J)F

    move-result p0

    invoke-interface {p3, p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->updateProgressCircle(F)V

    :cond_2
    return-void
.end method

.method public onShutterTimerCaptureTriggered()V
    .locals 2

    const-string v0, "SuperSlowMotionPresenter"

    const-string v1, "onShutterTimerCaptureTriggered"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->startBackgroundRecording()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->startSuperSlowMotionRecording()V

    :goto_0
    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->enableEngineCallbacksForRecording(Z)V

    return-void
.end method

.method public onStartPreviewPrepared(ILcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)V
    .locals 0

    const-string p0, "SuperSlowMotionPresenter"

    const-string p1, "onStartPreviewPrepared"

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isSuperSlowMotionSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->h:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object p1, Lu3/h;->Y:Lu3/h;

    invoke-static {p1}, Lu3/d;->b(Lu3/h;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Lu3/d;->b(Lu3/h;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/android/app/camera/util/factory/RangeFactory;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->h:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 p1, 0xf0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/android/app/camera/util/factory/RangeFactory;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 5
    :goto_0
    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->b0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/MakerParameter;->getExposureMetering(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 0

    return-void
.end method

.method public onSuperSlowMotionFrcResultUpdated(JJ)V
    .locals 1

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mFrcTimeResult:Landroid/util/Pair;

    return-void
.end method

.method public onSuperSlowMotionInfoChanged(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuperSlowMotionStateChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperSlowMotionPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mCurrentSuperSlowMotionState:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->stopVideoStream()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->onStateAutoDetectCancelled()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->onStateOperating()V

    goto :goto_0

    .line 6
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->onStateReady()V

    :goto_0
    return-void
.end method

.method public onSuperSlowRectMove(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mSuperSlowRectCoordinates:Landroid/graphics/Rect;

    return-void
.end method

.method public onTouchAfFocused()V
    .locals 2

    const-string v0, "SuperSlowMotionPresenter"

    const-string v1, "onTouchAfFocused"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FOCUS_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mCurrentSuperSlowMotionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsTouchDisabled:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->restartMotionDetection()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onVideoDbUpdatePreparedEvent(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HEVC:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->isFrcSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isSuperSlowMotionQFrcSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "22"

    goto :goto_1

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->isFrcSupported()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isSuperSlowMotionQFrcSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "7"

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "9"

    :goto_1
    const-string v1, "recording_mode"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->addFrcResultToSef(Ljava/lang/String;)V

    return-void
.end method

.method public onVisibilityChanged(Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_ZOOM_RESTRICTION:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {p1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->isSuperSlowMotionGuideVisible()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsNeedToShowGuide:Z

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {p1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->hideSuperSlowMotionGuide()V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, p2, :cond_4

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->hideRecordingToast()V

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsNeedToShowGuide:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsSuperSlowMotionRecording:Z

    if-nez p1, :cond_4

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionContract$View;->showSuperSlowMotionGuide()V

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_QUICK_SETTING:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 9
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object p2

    new-array v0, v0, [Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SUPER_SLOW_MOTION_HELP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    aput-object v1, v0, p1

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->isPopupVisible([Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsNeedToShowToastPopup:Z

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsNeedToShowToastPopup:Z

    if-eqz p2, :cond_4

    .line 12
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsNeedToShowToastPopup:Z

    .line 13
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsHelpGuideAvailable:Z

    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->showHelpGuideToast()V

    :cond_4
    :goto_0
    return-void
.end method

.method public startRecording()Z
    .locals 2

    const-string v0, "SuperSlowMotionPresenter"

    const-string/jumbo v1, "startRecording"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4b0

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mStableCheckTime:I

    .line 3
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->startRecording()Z

    move-result p0

    return p0
.end method

.method protected terminateRecording()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->isRecordingInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resetAfTrigger()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    .line 4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->mIsBackgroundRecording:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;->terminateBackgroundRecording()Z

    move-result p0

    return p0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->stopRecording()Z

    move-result p0

    return p0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModePresenter;->cancelRecording()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
