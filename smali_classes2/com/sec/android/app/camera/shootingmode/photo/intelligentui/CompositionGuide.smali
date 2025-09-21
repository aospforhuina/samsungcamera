.class public Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;
.super Landroid/widget/RelativeLayout;
.source "CompositionGuide.java"


# static fields
.field private static final COMPOSITION_GUIDE_TOP_VIEW_STATE:F = 10000.0f

.field private static final TAG:Ljava/lang/String; = "CompositionGuide"


# instance fields
.field private mAnalyzingAnimatorSet:Landroid/animation/AnimatorSet;

.field private mCompositionGuideBackgroundImageSize:F

.field private mCompositionGuideBackgroundInnerImageSize:F

.field private mCompositionLineDrawable:Landroid/graphics/drawable/Drawable;

.field private mCurrentAnimatorSet:Landroid/animation/AnimatorSet;

.field private mIsCompositionAnimationFinished:Z

.field private mIsLineAnimationFinished:Z

.field private mOrientation:I

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mRotationReachedAnimatorSet:Landroid/animation/AnimatorSet;

.field private mStatus:I

.field private mSyncAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetCompositionCenter:Landroid/graphics/PointF;

.field private mTargetCompositionDrawable:Landroid/graphics/drawable/Drawable;

.field private mTargetReachedAnimatorSet:Landroid/animation/AnimatorSet;

.field private mTranslateMatrix:Landroid/graphics/Matrix;

.field private final mUpdateCompositionTextRunnable:Ljava/lang/Runnable;

.field private mViewBinding:Lo5/g6;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/h;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/h;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mUpdateCompositionTextRunnable:Ljava/lang/Runnable;

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/h;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/h;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;)V

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mUpdateCompositionTextRunnable:Ljava/lang/Runnable;

    .line 6
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/h;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/h;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;)V

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mUpdateCompositionTextRunnable:Ljava/lang/Runnable;

    .line 9
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->lambda$initializeAnalyzingAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->lambda$initializeTargetReachedAnimation$4(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->lambda$initializeRotationReachedAnimation$3(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->lambda$new$0()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->lambda$startTargetFoundAnimation$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->lambda$startHideCompositionTextAnimation$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->lambda$initializeAnalyzingAnimation$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->lambda$startTargetFoundAnimation$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic i(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mAnalyzingAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p0, v0}, Lo5/g6;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/g6;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mStatus:I

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->initializeResources()V

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->initializeAnimations()V

    return-void
.end method

.method private initializeAnalyzingAnimation()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0b0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v2, Lu4/d;

    invoke-direct {v2}, Lu4/d;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/a;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/a;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    .line 5
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    .line 7
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 8
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 9
    new-instance v0, Lu4/d;

    invoke-direct {v0}, Lu4/d;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/d;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/d;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mAnalyzingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 12
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mAnalyzingAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide$1;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide$1;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private initializeCurrentComposition()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, v0, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mTargetCompositionCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, v0, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mTargetCompositionCenter:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setY(F)V

    return-void
.end method

.method private initializeResources()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080602

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mTargetCompositionDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080601

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mCompositionLineDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mCompositionGuideBackgroundImageSize:F

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mCompositionGuideBackgroundInnerImageSize:F

    return-void
.end method

.method private initializeRotationReachedAnimation(I)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mIsLineAnimationFinished:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    new-instance v1, Lu4/f;

    invoke-direct {v1}, Lu4/f;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/g;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/g;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mRotationReachedAnimatorSet:Landroid/animation/AnimatorSet;

    .line 7
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide$2;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide$2;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;I)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mRotationReachedAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initializeTargetReachedAnimation()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mIsCompositionAnimationFinished:Z

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mIsLineAnimationFinished:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    new-instance v2, Lu4/f;

    invoke-direct {v2}, Lu4/f;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/f;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/f;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide$3;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide$3;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mTargetReachedAnimatorSet:Landroid/animation/AnimatorSet;

    .line 10
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide$4;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mTargetReachedAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static bridge synthetic j(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;)Lo5/g6;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mIsCompositionAnimationFinished:Z

    return-void
.end method

.method static bridge synthetic l(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mIsLineAnimationFinished:Z

    return-void
.end method

.method private synthetic lambda$initializeAnalyzingAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p0, p0, Lo5/g6;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$initializeAnalyzingAnimation$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p0, p0, Lo5/g6;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$initializeRotationReachedAnimation$3(ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateCenterLine(IF)V

    return-void
.end method

.method private synthetic lambda$initializeTargetReachedAnimation$4(ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateCenterLine(IF)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateCompositionText(ZZ)V

    return-void
.end method

.method private synthetic lambda$startHideCompositionTextAnimation$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p0, p0, Lo5/g6;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$startTargetFoundAnimation$6(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, v0, Lo5/g6;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p0, p0, Lo5/g6;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$startTargetFoundAnimation$7(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, v0, Lo5/g6;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p0, p0, Lo5/g6;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method static bridge synthetic m(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateCenterLine(IF)V

    return-void
.end method

.method private moveCurrentComposition(Landroid/graphics/PointF;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/util/factory/PointFFactory;->create(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 3
    iget v1, p1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    sub-float v4, v1, v3

    add-float/2addr v1, v3

    .line 4
    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float v5, p1, v3

    add-float/2addr p1, v3

    .line 5
    invoke-static {v4, v5, v1, p1}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create(FFFF)Landroid/graphics/RectF;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mTranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 7
    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v2

    add-float/2addr v1, v4

    .line 8
    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    sub-float/2addr v1, v3

    .line 9
    iput v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v3

    .line 10
    iput v4, p1, Landroid/graphics/RectF;->top:F

    .line 11
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 12
    sget-object v2, Lu3/b;->b:Lu3/b;

    invoke-static {v2}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, v0, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, v0, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mPreviewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setY(F)V

    goto/16 :goto_0

    :cond_0
    float-to-int v1, v1

    if-eqz v1, :cond_3

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_2

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_1

    .line 15
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v1, v1, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, v0, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mPreviewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setY(F)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v1, v1, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, v0, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mPreviewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setY(F)V

    goto :goto_0

    .line 19
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v1, v1, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 20
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v1, v1, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mPreviewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, p1

    sub-float/2addr p0, v0

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setY(F)V

    goto :goto_0

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, v0, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, v0, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mPreviewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setY(F)V

    :goto_0
    return-void
.end method

.method private setCompositionLineVisibility(ZIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, v0, Lo5/g6;->k:Landroid/view/View;

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    move p2, v1

    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mOrientation:I

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p2, p2, Lo5/g6;->o:Landroid/view/View;

    if-eqz p1, :cond_2

    move p3, v1

    :cond_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p2, p2, Lo5/g6;->l:Landroid/view/View;

    if-eqz p1, :cond_3

    move p4, v1

    :cond_3
    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p1, p1, Lo5/g6;->m:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p0, p0, Lo5/g6;->n:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_4
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p2, p2, Lo5/g6;->o:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p2, p2, Lo5/g6;->l:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p2, p2, Lo5/g6;->m:Landroid/view/View;

    if-eqz p1, :cond_5

    move p3, v1

    :cond_5
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p0, p0, Lo5/g6;->n:Landroid/view/View;

    if-eqz p1, :cond_6

    move p4, v1

    :cond_6
    invoke-virtual {p0, p4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setCompositionVisibility(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, v0, Lo5/g6;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p0, p0, Lo5/g6;->c:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private startAnimation(Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mCurrentAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startHideCompositionTextAnimation()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/c;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/c;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide$5;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide$5;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startTargetFoundAnimation()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateCompositionText(ZZ)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0183

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 5
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 6
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/b;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/b;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    .line 7
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/e;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/e;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 11
    new-instance v3, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide$6;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 13
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private stopAllAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mSyncAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mCurrentAnimatorSet:Landroid/animation/AnimatorSet;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    :cond_2
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mCurrentAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private updateBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, v0, Lo5/g6;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p0, p0, Lo5/g6;->k:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private updateCenterLine(IF)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mOrientation:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, v0, Lo5/g6;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mCompositionGuideBackgroundInnerImageSize:F

    sub-float/2addr v0, v3

    div-float/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v1, v1, Lo5/g6;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v3, v3, Lo5/g6;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v1, v1, Lo5/g6;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v2, v2, Lo5/g6;->l:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v3, v3, Lo5/g6;->o:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    int-to-float v3, v0

    mul-float/2addr v3, p2

    float-to-int p2, v3

    .line 7
    iput p2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v3, v0, p2

    .line 8
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 9
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v3, v3, Lo5/g6;->o:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v1, v1, Lo5/g6;->l:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11
    iput p2, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v0, p2

    .line 12
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 13
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p0, p0, Lo5/g6;->l:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, v0, Lo5/g6;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mCompositionGuideBackgroundInnerImageSize:F

    sub-float/2addr v0, v3

    div-float/2addr v0, v1

    .line 15
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v1, v1, Lo5/g6;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v3, v3, Lo5/g6;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 16
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v1, v1, Lo5/g6;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v2, v2, Lo5/g6;->n:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 18
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v3, v3, Lo5/g6;->m:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    int-to-float v3, v0

    mul-float/2addr v3, p2

    float-to-int p2, v3

    .line 19
    iput p2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v3, v0, p2

    .line 20
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 21
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v3, v3, Lo5/g6;->m:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v1, v1, Lo5/g6;->n:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 23
    iput p2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr v0, p2

    .line 24
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 25
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p0, p0, Lo5/g6;->n:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private updateCompositionGuideView(IFLandroid/graphics/PointF;)V
    .locals 5

    .line 1
    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateCurrentCompositionAlpha(Landroid/graphics/PointF;)V

    const p3, 0x461c4000    # 10000.0f

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v0, :cond_d

    const/4 v3, 0x2

    if-eq p1, v3, :cond_a

    const/4 v3, 0x3

    if-eq p1, v3, :cond_8

    if-eq p1, v1, :cond_5

    const/4 v3, 0x7

    if-eq p1, v3, :cond_3

    const/16 v3, 0x8

    if-eq p1, v3, :cond_1

    .line 2
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateCompositionText(ZZ)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mTargetCompositionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080601

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-direct {p0, v1, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->setCompositionVisibility(II)V

    cmpl-float p1, p2, p3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 5
    :goto_0
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->setCompositionLineVisibility(ZIII)V

    goto/16 :goto_7

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mAnalyzingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->startAnimation(Landroid/animation/AnimatorSet;)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mTargetCompositionDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mCompositionLineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v3}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->setCompositionVisibility(II)V

    cmpl-float p1, p2, p3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    .line 9
    :goto_1
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->setCompositionLineVisibility(ZIII)V

    goto/16 :goto_7

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mTargetCompositionDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mCompositionLineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v3}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 11
    invoke-direct {p0, v2, v2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->setCompositionVisibility(II)V

    cmpl-float p1, p2, p3

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    .line 12
    :goto_2
    invoke-direct {p0, v0, v2, v1, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->setCompositionLineVisibility(ZIII)V

    goto/16 :goto_7

    .line 13
    :cond_5
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mIsLineAnimationFinished:Z

    if-nez p1, :cond_6

    .line 14
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mRotationReachedAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->startAnimation(Landroid/animation/AnimatorSet;)V

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mTargetCompositionDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-direct {p0, v2, v2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->setCompositionVisibility(II)V

    cmpl-float p1, p2, p3

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    move v0, v2

    .line 17
    :goto_3
    invoke-direct {p0, v0, v1, v2, v2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->setCompositionLineVisibility(ZIII)V

    goto/16 :goto_7

    .line 18
    :cond_8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v3, 0x7f080603

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mCompositionLineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v3}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 19
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v3, p1, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    iget-object p1, p1, Lo5/g6;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getX()F

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 20
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v3, p1, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    iget-object p1, p1, Lo5/g6;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getY()F

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 21
    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->setCompositionVisibility(II)V

    cmpl-float p1, p2, p3

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    move v0, v2

    .line 22
    :goto_4
    invoke-direct {p0, v0, v2, v1, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->setCompositionLineVisibility(ZIII)V

    goto :goto_7

    .line 23
    :cond_a
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mIsCompositionAnimationFinished:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mIsLineAnimationFinished:Z

    if-nez p1, :cond_b

    .line 24
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mTargetReachedAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->startAnimation(Landroid/animation/AnimatorSet;)V

    .line 25
    :cond_b
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v3, p1, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    iget-object p1, p1, Lo5/g6;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getX()F

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 26
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v3, p1, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    iget-object p1, p1, Lo5/g6;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getY()F

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 27
    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->setCompositionVisibility(II)V

    cmpl-float p1, p2, p3

    if-nez p1, :cond_c

    goto :goto_5

    :cond_c
    move v0, v2

    .line 28
    :goto_5
    invoke-direct {p0, v0, v1, v2, v2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->setCompositionLineVisibility(ZIII)V

    goto :goto_7

    .line 29
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->startTargetFoundAnimation()V

    .line 30
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mTargetCompositionDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mCompositionLineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v3}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-direct {p0, v2, v2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->setCompositionVisibility(II)V

    cmpl-float p1, p2, p3

    if-nez p1, :cond_e

    goto :goto_6

    :cond_e
    move v0, v2

    .line 32
    :goto_6
    invoke-direct {p0, v0, v2, v1, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->setCompositionLineVisibility(ZIII)V

    :goto_7
    return-void
.end method

.method private updateCompositionGuideWrapper()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v1, v1, Lo5/g6;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isPortrait(F)Z

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 6
    new-instance v0, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v4, v4, Lo5/g6;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mPreviewRect:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v5, v5, Lo5/g6;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mTargetCompositionCenter:Landroid/graphics/PointF;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0700a1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 9
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v0

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 10
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 11
    div-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 12
    new-instance v0, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v4, v4, Lo5/g6;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mPreviewRect:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v5, v5, Lo5/g6;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mTargetCompositionCenter:Landroid/graphics/PointF;

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p0, p0, Lo5/g6;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateCompositionRotation(F)V
    .locals 2

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, v0, Lo5/g6;->k:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, v0, Lo5/g6;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p1, p1, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, p1, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    iget-object p1, p1, Lo5/g6;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    .line 6
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mOrientation:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p0, p0, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    const/high16 p1, 0x43870000    # 270.0f

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p0, p0, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p0, p0, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    const/high16 p1, 0x42b40000    # 90.0f

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p0, p0, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    :goto_1
    return-void
.end method

.method private updateCurrentComposition(ILandroid/graphics/PointF;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->moveCurrentComposition(Landroid/graphics/PointF;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->initializeCurrentComposition()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateCurrentCompositionAlpha(Landroid/graphics/PointF;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, v0, Lo5/g6;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mCompositionGuideBackgroundImageSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 2
    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p1, p1

    add-float/2addr v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    cmpl-float v1, v0, p1

    const v2, 0x3e4ccccd    # 0.2f

    if-lez v1, :cond_0

    sub-float p1, v0, p1

    div-float/2addr p1, v0

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p1, v0

    add-float/2addr v2, p1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p0, p0, Lo5/g6;->c:Landroid/view/View;

    const/high16 p1, 0x41200000    # 10.0f

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method clearAnimatorListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mSyncAnimatorList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mAnalyzingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 6
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mRotationReachedAnimatorSet:Landroid/animation/AnimatorSet;

    .line 7
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mTargetReachedAnimatorSet:Landroid/animation/AnimatorSet;

    .line 8
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mCurrentAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method initializeAnimations()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->clearAnimatorListeners()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->initializeAnalyzingAnimation()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060044

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->initializeRotationReachedAnimation(I)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->initializeTargetReachedAnimation()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mAnalyzingAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mRotationReachedAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mTargetReachedAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mSyncAnimatorList:Ljava/util/ArrayList;

    return-void
.end method

.method update(Landroid/graphics/PointF;FI)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mStatus:I

    if-eq v0, p3, :cond_2

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mIsCompositionAnimationFinished:Z

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mIsLineAnimationFinished:Z

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120233

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120234

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    iput p3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mStatus:I

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->stopAllAnimation()V

    .line 8
    invoke-direct {p0, p3, p2, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateCompositionGuideView(IFLandroid/graphics/PointF;)V

    .line 9
    invoke-direct {p0, p3, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateCurrentComposition(ILandroid/graphics/PointF;)V

    .line 10
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateCompositionRotation(F)V

    return-void
.end method

.method updateCompositionText(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p1, p1, Lo5/g6;->d:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mUpdateCompositionTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b00e7

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mUpdateCompositionTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p2, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->startHideCompositionTextAnimation()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object p0, p0, Lo5/g6;->d:Landroid/widget/TextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method updateOrientation(I)V
    .locals 2

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mOrientation:I

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateCompositionGuideWrapper()V

    goto :goto_0

    :cond_0
    const/16 v0, -0x5a

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_2

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mOrientation:I

    goto :goto_0

    .line 5
    :cond_2
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mOrientation:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    .line 6
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mOrientation:I

    :goto_0
    return-void
.end method

.method updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mPreviewRect:Landroid/graphics/Rect;

    .line 2
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateCompositionGuideWrapper()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v0, v0, Lo5/g6;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 7
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 8
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v1, v1, Lo5/g6;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v1, v1, Lo5/g6;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mViewBinding:Lo5/g6;

    iget-object v2, v2, Lo5/g6;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 12
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/factory/PointFFactory;->create(FF)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mTargetCompositionCenter:Landroid/graphics/PointF;

    return-void
.end method

.method updateTranslateMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->mTranslateMatrix:Landroid/graphics/Matrix;

    return-void
.end method
