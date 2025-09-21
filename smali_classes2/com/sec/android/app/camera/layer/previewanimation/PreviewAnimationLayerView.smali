.class public Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;
.super Landroid/widget/FrameLayout;
.source "PreviewAnimationLayerView.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;
.implements Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$View;
.implements Lcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;


# static fields
.field private static final BLUR_EFFECT_UPDATE_LIMIT_VALUE_FOR_PERFORMANCE_AND_SEAMLESS:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "PreviewAnimationLayerView"

.field private static final TRANSITION_NORMAL_TO_WIDE_ANIMATION_DURATION:I

.field private static final TRANSITION_SCALE_FACTOR_NORMAL_TO_TELE:F

.field private static final TRANSITION_SCALE_FACTOR_WIDE_TO_NORMAL:F

.field private static final TRANSITION_WIDE_TO_NORMAL_ANIMATION_DURATION:I


# instance fields
.field private final CREATE_MY_FILTER_BLUR_RADIUS:I

.field private final DEFAULT_BLUR_RADIUS:I

.field private isHideCameraNotch:Z

.field private mBlurImageAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

.field private mCustomCameraDistance:F

.field private mIsResizableMode:Z

.field private mLastVerticalDirection:I

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationViewSizeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNextPreviewRect:Landroid/graphics/Rect;

.field private mPresenter:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;

.field private mPreviewEventListener:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewSnapshotEventListener;

.field private mPreviewRotateAnimationListener:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewRotateAnimationListener;

.field private mPreviewRotateChangeAnimator:Landroid/animation/ValueAnimator;

.field private mPreviewSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field private final mSeamlessAnimationEndListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$SeamlessAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSeamlessAnimator:Landroid/animation/ValueAnimator;

.field private mSnapShotTaken:Z

.field private mStartShutterAnimator:Landroid/animation/ValueAnimator;

.field private mUpdatedRadius:F

.field private mViewBinding:Lo5/w0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lu3/g;->l:Lu3/g;

    invoke-static {v0}, Lu3/d;->a(Lu3/g;)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->TRANSITION_SCALE_FACTOR_WIDE_TO_NORMAL:F

    .line 2
    sget-object v0, Lu3/g;->m:Lu3/g;

    invoke-static {v0}, Lu3/d;->a(Lu3/g;)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->TRANSITION_SCALE_FACTOR_NORMAL_TO_TELE:F

    .line 3
    sget-object v0, Lu3/h;->Z:Lu3/h;

    invoke-static {v0}, Lu3/d;->b(Lu3/h;)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->TRANSITION_NORMAL_TO_WIDE_ANIMATION_DURATION:I

    .line 4
    sget-object v0, Lu3/h;->a0:Lu3/h;

    invoke-static {v0}, Lu3/d;->b(Lu3/h;)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->TRANSITION_WIDE_TO_NORMAL_ANIMATION_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b014c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->DEFAULT_BLUR_RADIUS:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b00e9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->CREATE_MY_FILTER_BLUR_RADIUS:I

    .line 4
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSeamlessAnimationEndListenerList:Ljava/util/List;

    .line 5
    sget-object p2, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->NONE:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    const/4 p2, 0x1

    .line 6
    iput p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mLastVerticalDirection:I

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mListeners:Ljava/util/List;

    const/4 p2, 0x0

    .line 8
    iput p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mUpdatedRadius:F

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->isHideCameraNotch:Z

    .line 10
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b014c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->DEFAULT_BLUR_RADIUS:I

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b00e9

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->CREATE_MY_FILTER_BLUR_RADIUS:I

    .line 14
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSeamlessAnimationEndListenerList:Ljava/util/List;

    .line 15
    sget-object p2, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->NONE:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    const/4 p2, 0x1

    .line 16
    iput p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mLastVerticalDirection:I

    .line 17
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mListeners:Ljava/util/List;

    const/4 p2, 0x0

    .line 18
    iput p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mUpdatedRadius:F

    const/4 p2, 0x0

    .line 19
    iput-boolean p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->isHideCameraNotch:Z

    .line 20
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->lambda$startSeamlessLensChangingAnimation$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->lambda$hideBlurImage$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->lambda$hideSeamlessLensChangingAnimation$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->lambda$initialize$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;Landroid/graphics/Rect;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->lambda$postPreviewSizeChangedRunnable$4(Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method private emptyImageView(Landroid/widget/ImageView;)V
    .locals 0

    const/16 p0, 0x8

    .line 1
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;ZLandroid/widget/FrameLayout$LayoutParams;Landroid/graphics/Rect;ILandroid/graphics/Rect;IFFFFFILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->lambda$startPreviewRotateAnimation$7(ZLandroid/widget/FrameLayout$LayoutParams;Landroid/graphics/Rect;ILandroid/graphics/Rect;IFFFFFILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->lambda$startShutterAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->lambda$requestRemovePreviewChangeAnimation$5()V

    return-void
.end method

.method private hideBlurImage(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    .line 3
    new-instance v1, Lcom/sec/android/app/camera/layer/previewanimation/e;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/previewanimation/e;-><init>(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$2;-><init>(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private hideSeamlessLensChangingAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSeamlessAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSeamlessAnimator:Landroid/animation/ValueAnimator;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSeamlessAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/layer/previewanimation/f;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/previewanimation/f;-><init>(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSeamlessAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$3;-><init>(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSeamlessAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;FZIIFFIIIIIIZZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->lambda$startPreviewChangeAnimation$6(FZIIFFIIIIIIZZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflate : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PreviewAnimationLayerView"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lo5/w0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/w0;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "inflate : End["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v0, v0, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getCameraDistance()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float v1, p1, v1

    add-float/2addr p1, v1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCustomCameraDistance:F

    return-void
.end method

.method static bridge synthetic j(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;)Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewRotateAnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewRotateAnimationListener:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewRotateAnimationListener;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSeamlessAnimationEndListenerList:Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$hideBlurImage$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p0, p0, Lo5/w0;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$hideSeamlessLensChangingAnimation$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p0, p0, Lo5/w0;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$initialize$0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->onPinEdgeModeChanged()V

    return-void
.end method

.method private synthetic lambda$postPreviewSizeChangedRunnable$4(Landroid/graphics/Rect;ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationViewSizeChangeListener;

    .line 3
    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationViewSizeChangeListener;->onPreviewAnimationViewSizeChanged(Landroid/graphics/Rect;ZZ)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$requestRemovePreviewChangeAnimation$5()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewRotateChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->hideBlurImage(I)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p0, p0, Lo5/w0;->a:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private synthetic lambda$startPreviewChangeAnimation$6(FZIIFFIIIIIIZZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p15}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p15

    check-cast p15, Ljava/lang/Float;

    invoke-virtual {p15}, Ljava/lang/Float;->floatValue()F

    move-result p15

    .line 2
    invoke-direct {p0, p15, p1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->updateBlurRadius(FF)V

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p1, p1, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    int-to-float p2, p3

    mul-float/2addr p2, p15

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p1, p1, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    int-to-float p3, p4

    mul-float/2addr p3, p15

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p1, p1, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    mul-float/2addr p5, p15

    const/high16 p4, 0x3f800000    # 1.0f

    add-float/2addr p5, p4

    invoke-virtual {p1, p5}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p1, p1, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    mul-float/2addr p6, p15

    add-float/2addr p6, p4

    invoke-virtual {p1, p6}, Landroid/view/ViewGroup;->setScaleY(F)V

    float-to-int p1, p3

    add-int/2addr p7, p1

    float-to-int p1, p2

    add-int/2addr p8, p1

    int-to-float p1, p10

    mul-float/2addr p1, p15

    float-to-int p1, p1

    add-int/2addr p9, p1

    int-to-float p1, p12

    mul-float/2addr p1, p15

    float-to-int p1, p1

    add-int/2addr p11, p1

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    add-int/2addr p9, p8

    add-int/2addr p11, p7

    invoke-direct {p1, p8, p7, p9, p11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8
    invoke-virtual {p0, p1, p13, p14}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->previewSizeChanged(Landroid/graphics/Rect;ZZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startPreviewRotateAnimation$7(ZLandroid/widget/FrameLayout$LayoutParams;Landroid/graphics/Rect;ILandroid/graphics/Rect;IFFFFFILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p13}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p13

    check-cast p13, Ljava/lang/Float;

    invoke-virtual {p13}, Ljava/lang/Float;->floatValue()F

    move-result p13

    if-eqz p1, :cond_0

    .line 2
    iget p1, p3, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    mul-float/2addr p4, p13

    float-to-int p4, p4

    add-int/2addr p1, p4

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p3, p6

    mul-float/2addr p3, p13

    float-to-int p3, p3

    add-int/2addr p1, p3

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p1, p1, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :cond_0
    invoke-direct {p0, p13, p7}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->updateBlurRadius(FF)V

    const/high16 p1, -0x3ccc0000    # -180.0f

    mul-float/2addr p1, p13

    const/high16 p2, -0x3d4c0000    # -90.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    const/high16 p2, 0x43340000    # 180.0f

    add-float/2addr p1, p2

    .line 7
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, p8

    const/high16 p3, 0x3f800000    # 1.0f

    if-ltz p2, :cond_2

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr p2, p8

    const/high16 p4, 0x42b40000    # 90.0f

    sub-float/2addr p4, p8

    div-float/2addr p2, p4

    sub-float p2, p3, p2

    .line 9
    invoke-static {p2, p9}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/high16 p4, 0x41200000    # 10.0f

    mul-float/2addr p2, p4

    float-to-int p2, p2

    int-to-float p2, p2

    div-float/2addr p2, p4

    .line 10
    iget-object p4, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p4, p4, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p4

    invoke-static {p4, p2}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result p4

    if-nez p4, :cond_3

    .line 11
    iget-object p4, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p4, p4, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p4, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p2, p2, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p2

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_3

    .line 13
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p2, p2, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_3
    :goto_0
    cmpg-float p2, p13, p10

    const/high16 p4, 0x3e800000    # 0.25f

    if-gtz p2, :cond_4

    div-float/2addr p13, p10

    mul-float/2addr p13, p4

    sub-float/2addr p3, p13

    goto :goto_1

    :cond_4
    const/high16 p2, 0x3f400000    # 0.75f

    sub-float/2addr p13, p10

    sub-float/2addr p3, p10

    div-float/2addr p13, p3

    mul-float/2addr p13, p4

    add-float p3, p13, p2

    .line 14
    :goto_1
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p2, p2, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 15
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p2, p2, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 16
    sget-object p2, Lu3/b;->b:Lu3/b;

    invoke-static {p2}, Lu3/d;->e(Lu3/b;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p11}, Lcom/sec/android/app/camera/util/Util;->isLandscape(F)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPresenter:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;

    invoke-interface {p2}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;->isResizableMode()Z

    move-result p2

    if-nez p2, :cond_5

    .line 17
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p0, p0, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    int-to-float p2, p12

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setRotationY(F)V

    goto :goto_2

    .line 18
    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p0, p0, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    int-to-float p2, p12

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setRotationX(F)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$startSeamlessLensChangingAnimation$8(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v0, v0, Lo5/w0;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p0, p0, Lo5/w0;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$startShutterAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p0, p0, Lo5/w0;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method static bridge synthetic m(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;)Lo5/w0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    return-void
.end method

.method static bridge synthetic o(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->emptyImageView(Landroid/widget/ImageView;)V

    return-void
.end method

.method private onPinEdgeModeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPresenter:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;->updateLayoutForPinEdge()V

    return-void
.end method

.method static bridge synthetic p(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;Landroid/graphics/Rect;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->postPreviewSizeChangedRunnable(Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method private postPreviewSizeChangedRunnable(Landroid/graphics/Rect;ZZ)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/previewanimation/l;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/app/camera/layer/previewanimation/l;-><init>(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;Landroid/graphics/Rect;ZZ)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static bridge synthetic q(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->resetVariable()V

    return-void
.end method

.method static bridge synthetic r(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->showBlurImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-void
.end method

.method private requestRemovePreviewChangeAnimation()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/previewanimation/k;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/previewanimation/k;-><init>(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private resetPreviewAnimationViewProperty(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v0, v0, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v0, v0, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v0, v0, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setRotationX(F)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v0, v0, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setRotationY(F)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v0, v0, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v0, v0, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v0, v0, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->resetPivot()V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v0, v0, Lo5/w0;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v0, v0, Lo5/w0;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v0, v0, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 p1, -0x2

    .line 12
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 13
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 14
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p0, p0, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private resetVariable()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSnapShotTaken:Z

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->NONE:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v0, v0, Lo5/w0;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    iput-object v1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewEventListener:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewSnapshotEventListener;

    return-void
.end method

.method private setInitialProperty(Landroid/view/View;FFFFF)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setCameraDistance(F)V

    .line 2
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 3
    invoke-virtual {p1, p4}, Landroid/view/View;->setScaleY(F)V

    .line 4
    invoke-virtual {p1, p5}, Landroid/view/View;->setAlpha(F)V

    .line 5
    sget-object p2, Lu3/b;->b:Lu3/b;

    invoke-static {p2}, Lu3/d;->e(Lu3/b;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Lcom/sec/android/app/camera/util/Util;->isLandscape(F)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPresenter:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;->isResizableMode()Z

    move-result p0

    if-nez p0, :cond_0

    .line 6
    invoke-virtual {p1, p6}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, p6}, Landroid/view/View;->setRotationX(F)V

    :goto_0
    return-void
.end method

.method private showBlurImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 6

    const-string v0, "PreviewAnimationLayerView"

    const-string/jumbo v1, "showBlurImage"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->NORMAL_TO_WIDE:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-ne v1, v2, :cond_1

    .line 3
    iget-boolean v1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->isHideCameraNotch:Z

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v1, v1, Lo5/w0;->c:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 5
    :cond_0
    sget v1, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->TRANSITION_SCALE_FACTOR_WIDE_TO_NORMAL:F

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->stretchTopBottomBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->stretchLeftRightBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v3, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->TELE_TO_NORMAL:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-ne v1, v3, :cond_2

    .line 7
    sget v1, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->TRANSITION_SCALE_FACTOR_NORMAL_TO_TELE:F

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->stretchTopBottomBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->stretchLeftRightBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07006a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->DEFAULT_BLUR_RADIUS:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 10
    iget-object v4, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-ne v4, v2, :cond_3

    .line 11
    sget v5, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->TRANSITION_SCALE_FACTOR_WIDE_TO_NORMAL:F

    div-float/2addr v3, v5

    .line 12
    :cond_3
    sget-object v5, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->CREATE_MY_FILTER_POP_OVER:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-ne v4, v5, :cond_4

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->CREATE_MY_FILTER_BLUR_RADIUS:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v1, v1, Lo5/w0;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 15
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->resetPreviewAnimationViewProperty(Landroid/graphics/Rect;)V

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Blur preview W="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p2, p2, Lo5/w0;->c:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", H="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p2, p2, Lo5/w0;->c:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p1, p1, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 18
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p1, p1, Lo5/w0;->c:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p1, p1, Lo5/w0;->c:Landroid/widget/ImageView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 20
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-eq p1, v5, :cond_7

    sget-object p2, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->EDIT_FILTER:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-eq p1, p2, :cond_7

    sget-object p2, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->RESUME_CAMERA:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-eq p1, p2, :cond_7

    sget-object p2, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->PREVIEW_RATIO_CHANGE:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-eq p1, p2, :cond_7

    sget-object p2, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->DOWNLOAD_APPS:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-ne p1, p2, :cond_5

    goto :goto_1

    .line 21
    :cond_5
    sget-object p1, Lu3/b;->G3:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-eq p1, v2, :cond_6

    sget-object p2, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->WIDE_TO_NORMAL:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-ne p1, p2, :cond_8

    .line 22
    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p0, p0, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object p1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-static {v3, v3, p1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    goto :goto_2

    .line 23
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p0, p0, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object p1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {v3, v3, p1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    :cond_8
    :goto_2
    return-void
.end method

.method private startPreviewChangeAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 23

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v14, p2

    .line 1
    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 3
    iget v1, v14, Landroid/graphics/Rect;->top:I

    sub-int v5, v1, v8

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v13, v1, v12

    .line 5
    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 7
    iget v1, v14, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v9

    .line 8
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v11, v1, v10

    .line 9
    invoke-virtual {v14, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/lit8 v16, v1, 0x1

    .line 10
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v3, v14, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x0

    if-le v1, v3, :cond_0

    move/from16 v17, v2

    goto :goto_0

    :cond_0
    move/from16 v17, v6

    .line 11
    :goto_0
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v14, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v3, :cond_1

    move/from16 v18, v2

    goto :goto_1

    :cond_1
    move/from16 v18, v6

    .line 12
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 13
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, v15, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->DEFAULT_BLUR_RADIUS:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 14
    iget-object v1, v15, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v1, v1, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v1, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v7, v1, v6

    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    sub-float v19, v1, v6

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 17
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v15, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b006f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move/from16 v20, v7

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 19
    iget-object v0, v15, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/CustomPath;

    const v6, 0x3e6147ae    # 0.22f

    const/high16 v7, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v1, v6, v7, v3, v14}, Lcom/sec/android/app/camera/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 20
    iget-object v14, v15, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/sec/android/app/camera/layer/previewanimation/h;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v3, v16

    move/from16 v6, v20

    move-object/from16 v21, v7

    move/from16 v7, v19

    move-object/from16 v22, v14

    move/from16 v14, v17

    move/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcom/sec/android/app/camera/layer/previewanimation/h;-><init>(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;FZIIFFIIIIIIZZ)V

    move-object/from16 v1, v21

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v6, p0

    .line 21
    iget-object v7, v6, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$4;

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, p2

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$4;-><init>(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;ZLandroid/graphics/Rect;ZZ)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 22
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mNextPreviewRect:Landroid/graphics/Rect;

    .line 23
    iget-object v0, v6, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startPreviewRotateAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;I)V
    .locals 22

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v0

    int-to-float v12, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    move/from16 v2, p4

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2
    :goto_0
    invoke-static {v12}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    move/from16 v16, v1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    move/from16 v16, v2

    .line 3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704af

    invoke-static {v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getFloat(Landroid/content/res/Resources;I)F

    move-result v11

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704a6

    invoke-static {v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getFloat(Landroid/content/res/Resources;I)F

    move-result v9

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704b0

    invoke-static {v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getFloat(Landroid/content/res/Resources;I)F

    move-result v10

    .line 6
    iget-object v2, v14, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v2, v2, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v3, v14, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCustomCameraDistance:F

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setCameraDistance(F)V

    .line 7
    iget-object v2, v14, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v2, v2, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    iget v2, v13, Landroid/graphics/Rect;->top:I

    iget v3, v15, Landroid/graphics/Rect;->top:I

    sub-int v5, v2, v3

    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v7, v2, v3

    .line 10
    invoke-virtual {v13, v15}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v17, v2, 0x1

    .line 11
    iget v2, v15, Landroid/graphics/Rect;->top:I

    iget v3, v13, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_2

    move/from16 v18, v1

    goto :goto_2

    :cond_2
    move/from16 v18, v0

    .line 12
    :goto_2
    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_3

    move/from16 v19, v1

    goto :goto_3

    :cond_3
    move/from16 v19, v0

    .line 13
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 14
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, v14, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->DEFAULT_BLUR_RADIUS:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float v20, v1, v0

    .line 15
    iget-object v0, v14, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v0, v0, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v6, p3

    invoke-direct {v1, v2, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 16
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v14, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewRotateChangeAnimator:Landroid/animation/ValueAnimator;

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 18
    iget-object v0, v14, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewRotateChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/CustomPath;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/sec/android/app/camera/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 19
    iget-object v6, v14, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewRotateChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/sec/android/app/camera/layer/previewanimation/i;

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, v17

    move-object v3, v8

    move-object v15, v4

    move-object/from16 v4, p1

    move-object v14, v6

    move-object/from16 v6, p2

    move-object/from16 v21, v8

    move/from16 v8, v20

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/sec/android/app/camera/layer/previewanimation/i;-><init>(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;ZLandroid/widget/FrameLayout$LayoutParams;Landroid/graphics/Rect;ILandroid/graphics/Rect;IFFFFFI)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v6, p0

    .line 20
    iget-object v7, v6, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewRotateChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$5;

    move-object v0, v8

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move/from16 v4, v18

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$5;-><init>(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZZ)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 21
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mNextPreviewRect:Landroid/graphics/Rect;

    if-nez v17, :cond_4

    move-object/from16 v0, p1

    .line 22
    iget v1, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v2, v21

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 23
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 25
    iget-object v0, v6, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v0, v0, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    :cond_4
    iget-object v0, v6, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewRotateChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startSeamlessLensChangingAnimation()V
    .locals 11

    const-string v0, "PreviewAnimationLayerView"

    const-string/jumbo v1, "startSeamlessLensChangingAnimation"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->WIDE_TO_NORMAL:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_0

    .line 3
    sget v0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->TRANSITION_SCALE_FACTOR_WIDE_TO_NORMAL:F

    .line 4
    sget v1, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->TRANSITION_WIDE_TO_NORMAL_ANIMATION_DURATION:I

    :goto_0
    move v10, v0

    move v0, v3

    goto :goto_2

    .line 5
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->NORMAL_TO_WIDE:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-ne v0, v1, :cond_1

    .line 6
    sget v0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->TRANSITION_SCALE_FACTOR_WIDE_TO_NORMAL:F

    .line 7
    sget v1, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->TRANSITION_NORMAL_TO_WIDE_ANIMATION_DURATION:I

    :goto_1
    move v10, v3

    goto :goto_2

    .line 8
    :cond_1
    sget-object v1, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->NORMAL_TO_TELE:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-ne v0, v1, :cond_2

    .line 9
    sget v0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->TRANSITION_SCALE_FACTOR_NORMAL_TO_TELE:F

    .line 10
    sget v1, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->TRANSITION_NORMAL_TO_WIDE_ANIMATION_DURATION:I

    goto :goto_0

    .line 11
    :cond_2
    sget-object v1, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->TELE_TO_NORMAL:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-ne v0, v1, :cond_3

    .line 12
    sget v0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->TRANSITION_SCALE_FACTOR_NORMAL_TO_TELE:F

    .line 13
    sget v1, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->TRANSITION_NORMAL_TO_WIDE_ANIMATION_DURATION:I

    goto :goto_1

    :cond_3
    move v1, v2

    move v0, v3

    move v10, v0

    .line 14
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v4, v3, Lo5/w0;->c:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object v3, p0

    move v6, v0

    move v7, v0

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->setInitialProperty(Landroid/view/View;FFFFF)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v0, v3, v2

    const/4 v0, 0x1

    aput v10, v3, v0

    .line 15
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSeamlessAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, v1

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSeamlessAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSeamlessAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/layer/previewanimation/d;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/previewanimation/d;-><init>(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 19
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSeamlessAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateBlurRadius(FF)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    mul-float/2addr p2, p1

    .line 1
    :goto_0
    iget p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mUpdatedRadius:F

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iput p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mUpdatedRadius:F

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p0, p0, Lo5/w0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object p1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {p2, p2, p1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public cancelAllAnimator()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mStartShutterAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewRotateChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSeamlessAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public cancelPreviewAnimation()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->resetVariable()V

    return-void
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSeamlessAnimationEndListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public hideBlackArea()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p0, p0, Lo5/w0;->b:Lcom/sec/android/app/camera/layer/previewanimation/PreviewBlackArea;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public hidePreviewAnimation(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSnapShotTaken:Z

    const-string v0, "PreviewAnimationLayerView"

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Return, don\'t have a snapshot. Current animation type is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x1

    const-string v1, "Animation - HidePreviewAnimation"

    .line 3
    invoke-static {v1, p1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hidePreviewAnimation: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object p1, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$6;->$SwitchMap$com$sec$android$app$camera$interfaces$PreviewAnimationLayerManager$PreviewAnimationType:[I

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->resetVariable()V

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0033

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->hideBlurImage(I)V

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->hideSeamlessLensChangingAnimation()V

    goto :goto_0

    .line 9
    :pswitch_2
    sget-object p1, Lu3/h;->n:Lu3/h;

    invoke-static {p1}, Lu3/d;->b(Lu3/h;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->hideBlurImage(I)V

    goto :goto_0

    .line 10
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b006e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->hideBlurImage(I)V

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mNextPreviewRect:Landroid/graphics/Rect;

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->requestRemovePreviewChangeAnimation()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initialize()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/previewanimation/j;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/previewanimation/j;-><init>(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;)V

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver;->observePinEdgeMode(Landroid/view/View;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public isCameraSwitchingAnimationRequested()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->SWITCH_FACING:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPreviewAnimationRequested()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->NONE:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    const-string v0, "PreviewAnimationLayerView"

    const-string v1, "onApplyWindowInsets"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/DisplayCutoutUtil;->isHideCameraCutout(Landroid/view/View;Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->isHideCameraNotch:Z

    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 1
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPresenter:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;->onOrientationChangeRequested()V

    :cond_0
    return-void
.end method

.method public onPreviewSnapShotError()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSnapShotTaken:Z

    return-void
.end method

.method public onPreviewSnapShotTaken(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "PreviewAnimationLayerView"

    const-string v1, "onPreviewSnapShotTaken"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSnapShotTaken:Z

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPresenter:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;->onPreviewSnapShotTaken(Landroid/graphics/Bitmap;Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;)V

    return-void
.end method

.method public preparePausedPreviewSnapshot()V
    .locals 2

    const-string v0, "PreviewAnimationLayerView"

    const-string v1, "onPreparePausedPreviewSnapshotRequested"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPresenter:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;->onPreparePausedPreviewSnapshotRequested()V

    return-void
.end method

.method public previewSizeChanged(Landroid/graphics/Rect;ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationViewSizeChangeListener;

    .line 3
    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationViewSizeChangeListener;->onPreviewAnimationViewSizeChanged(Landroid/graphics/Rect;ZZ)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerPreviewAnimationViewSizeChangeListener(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationViewSizeChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerPreviewRotateAnimationListener(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewRotateAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewRotateAnimationListener:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewRotateAnimationListener;

    return-void
.end method

.method public registerSeamlessAnimationEndListener(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$SeamlessAnimationEndListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSeamlessAnimationEndListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestChangeShootingModeAnimation(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPresenter:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;->onChangeShootingModeAnimationRequested(Z)V

    return-void
.end method

.method public requestPreviewAnimation(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->requestPreviewAnimation(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewSnapshotEventListener;Landroid/graphics/Rect;)V

    return-void
.end method

.method public requestPreviewAnimation(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewSnapshotEventListener;Landroid/graphics/Rect;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestPreviewAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewAnimationLayerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->cancelAllAnimator()V

    .line 4
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    .line 5
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewEventListener:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewSnapshotEventListener;

    .line 6
    iput-object p3, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mNextPreviewRect:Landroid/graphics/Rect;

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPresenter:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;->onPreviewAnimationRequested(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->setPresenter(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPresenter:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;

    return-void
.end method

.method public setResizableMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mIsResizableMode:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p0, p0, Lo5/w0;->b:Lcom/sec/android/app/camera/layer/previewanimation/PreviewBlackArea;

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setResumeCameraAnimation()V
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->RESUME_CAMERA:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSnapShotTaken:Z

    return-void
.end method

.method public setVerticalDirection(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mLastVerticalDirection:I

    return-void
.end method

.method public showBlackArea()V
    .locals 2

    .line 5
    sget-object v0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$6;->$SwitchMap$com$sec$android$app$camera$interfaces$PreviewAnimationLayerManager$PreviewAnimationType:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPresenter:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;->onBlackAreaShowRequested()V

    :cond_0
    return-void
.end method

.method public showBlackArea(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showBlackArea: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewAnimationLayerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mIsResizableMode:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object v0, v0, Lo5/w0;->b:Lcom/sec/android/app/camera/layer/previewanimation/PreviewBlackArea;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewBlackArea;->setBlackArea(Landroid/graphics/Rect;)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p0, p0, Lo5/w0;->b:Lcom/sec/android/app/camera/layer/previewanimation/PreviewBlackArea;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public startPreviewAnimation(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startPreviewAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewAnimationLayerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->SWITCH_FACING:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-eq p1, v1, :cond_0

    .line 6
    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->showBlurImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->resetPreviewAnimationViewProperty(Landroid/graphics/Rect;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewEventListener:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewSnapshotEventListener;

    if-eqz p1, :cond_1

    .line 9
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewSnapshotEventListener;->onPreviewSnapshotShow()V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mPreviewEventListener:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewSnapshotEventListener;

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mNextPreviewRect:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mNextPreviewRect:Landroid/graphics/Rect;

    .line 12
    sget-object p1, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$6;->$SwitchMap$com$sec$android$app$camera$interfaces$PreviewAnimationLayerManager$PreviewAnimationType:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    const/high16 v2, -0x1000000

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 13
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->startSeamlessLensChangingAnimation()V

    goto :goto_1

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p1, p1, Lo5/w0;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 15
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mNextPreviewRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, p1, v0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->startPreviewChangeAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mViewBinding:Lo5/w0;

    iget-object p1, p1, Lo5/w0;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 17
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mNextPreviewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mLastVerticalDirection:I

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->startPreviewRotateAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public startShutterAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mStartShutterAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mStartShutterAnimator:Landroid/animation/ValueAnimator;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mStartShutterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/layer/previewanimation/g;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/previewanimation/g;-><init>(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mStartShutterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lu4/d;

    invoke-direct {v1}, Lu4/d;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mStartShutterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$1;-><init>(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mStartShutterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data
.end method

.method public unregisterPreviewAnimationViewSizeChangeListener(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationViewSizeChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterSeamlessAnimationEndListener(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$SeamlessAnimationEndListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->mSeamlessAnimationEndListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
