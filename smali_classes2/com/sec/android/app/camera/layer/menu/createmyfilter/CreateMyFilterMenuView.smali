.class public Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;
.super Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;
.source "CreateMyFilterMenuView.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract$View;
.implements Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView<",
        "Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract$View;",
        "Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateMyFilterMenuView"


# instance fields
.field private mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFilterName:Ljava/lang/String;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field final mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mIsEnableLayoutTouch:Z

.field private mIsPreviewLongPressed:Z

.field private final mThumbGroupShowAnimationSet:Landroid/animation/AnimatorSet;

.field private final mThumbImageShowAnimationSet:Landroid/animation/AnimatorSet;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mToast:Landroid/widget/Toast;

.field private mViewBinding:Lo5/x1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mIsPreviewLongPressed:Z

    .line 3
    new-instance p1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView$1;-><init>(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 4
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mThumbGroupShowAnimationSet:Landroid/animation/AnimatorSet;

    .line 5
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mThumbImageShowAnimationSet:Landroid/animation/AnimatorSet;

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;)Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    return-object p0
.end method

.method private changeNormalMode()V
    .locals 2

    const-string v0, "CreateMyFilterMenuView"

    const-string v1, "Change to normal mode"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p0, p0, Lo5/x1;->z:Landroidx/constraintlayout/widget/Group;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->lambda$initialize$3(Landroid/view/View;)V

    return-void
.end method

.method private hideLoadingAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->l:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->stopProgressAnimation()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->lambda$startEditNameViewDownAnimation$5(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private inflateLayout()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/x1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/x1;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    .line 2
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->n:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->d:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->o:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->B:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/i;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/i;-><init>(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 1
    invoke-virtual {p0, p0}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->setRotateAction(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->inflateLayout()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mIsEnableLayoutTouch:Z

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->lambda$initialize$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->lambda$initialize$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->lambda$initialize$2(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$inflateLayout$4(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast p1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract$Presenter;

    invoke-interface {p1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract$Presenter;->updateThumbnailImageLayout()V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p1, p1, Lo5/x1;->A:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 5
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p0, p0, Lo5/x1;->A:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$initialize$0(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mIsEnableLayoutTouch:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast p1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract$Presenter;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mFilterName:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract$Presenter;->onNameClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initialize$1(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mIsEnableLayoutTouch:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract$Presenter;->onThumbnailImageClick()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initialize$2(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;->onBackKeyUp()Z

    return-void
.end method

.method private synthetic lambda$initialize$3(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mIsEnableLayoutTouch:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast p1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract$Presenter;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mFilterName:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract$Presenter;->onSaveButtonClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startEditNameViewDownAnimation$5(FFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->m:Landroid/widget/Button;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTranslationX(F)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p1, p1, Lo5/x1;->m:Landroid/widget/Button;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTranslationY(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p0, p0, Lo5/x1;->m:Landroid/widget/Button;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setAlpha(F)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->lambda$inflateLayout$4(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private makeBlinkAnimation()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    return-void
.end method

.method private makeThumbnailGroupShowAnimation()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v2, v2, Lo5/x1;->r:Landroid/view/View;

    new-instance v3, Lu4/h;

    invoke-direct {v3}, Lu4/h;-><init>()V

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v4, v5, v1, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v2, v2, Lo5/x1;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v3, Lu4/h;

    invoke-direct {v3}, Lu4/h;-><init>()V

    invoke-static {v2, v4, v5, v1, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mThumbGroupShowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void
.end method

.method private makeThumbnailImageShowAnimation()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v2, v2, Lo5/x1;->B:Landroid/view/View;

    new-instance v3, Lu4/h;

    invoke-direct {v3}, Lu4/h;-><init>()V

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v4, v5, v1, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v2, v2, Lo5/x1;->A:Landroid/widget/ImageView;

    new-instance v3, Lu4/h;

    invoke-direct {v3}, Lu4/h;-><init>()V

    invoke-static {v2, v4, v5, v1, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v2, v2, Lo5/x1;->m:Landroid/widget/Button;

    new-instance v3, Lu4/h;

    invoke-direct {v3}, Lu4/h;-><init>()V

    invoke-static {v2, v4, v5, v1, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mThumbImageShowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void
.end method

.method static bridge synthetic n(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mIsPreviewLongPressed:Z

    return-void
.end method

.method private setReverseLandscapeChain()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v1, v1, Lo5/x1;->f:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v1, v1, Lo5/x1;->r:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v1, v1, Lo5/x1;->r:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v3, v3, Lo5/x1;->q:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v1, v1, Lo5/x1;->m:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v3, v3, Lo5/x1;->k:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v1, v1, Lo5/x1;->m:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v3, v3, Lo5/x1;->q:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v4, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v1, v1, Lo5/x1;->B:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v3, v3, Lo5/x1;->k:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v1, v1, Lo5/x1;->B:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v3, v3, Lo5/x1;->q:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v4, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v1, v1, Lo5/x1;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 10
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v1, v1, Lo5/x1;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v3, v3, Lo5/x1;->k:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p0, p0, Lo5/x1;->f:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private setThumbnailGroupVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->z:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->z:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mThumbGroupShowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p0, p0, Lo5/x1;->z:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void
.end method

.method private setThumbnailImageVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->A:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->A:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mThumbImageShowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p0, p0, Lo5/x1;->B:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showLoadingAnimation()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->l:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060048

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 4
    new-instance v2, Landroid/graphics/BlendModeColorFilter;

    sget-object v3, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v1, v1, Lo5/x1;->l:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v3, Lm/e;

    const-string v4, "dot1"

    const-string v5, "**"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lm/e;-><init>([Ljava/lang/String;)V

    sget-object v4, Lh/u;->a:Ljava/lang/Integer;

    new-instance v6, Lu/c;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7}, Lu/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v4, v6}, Lcom/airbnb/lottie/LottieAnimationView;->h(Lm/e;Ljava/lang/Object;Lu/c;)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v1, v1, Lo5/x1;->l:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v3, Lm/e;

    const-string v6, "dot2"

    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lm/e;-><init>([Ljava/lang/String;)V

    new-instance v6, Lu/c;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7}, Lu/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v4, v6}, Lcom/airbnb/lottie/LottieAnimationView;->h(Lm/e;Ljava/lang/Object;Lu/c;)V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v1, v1, Lo5/x1;->l:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v3, Lm/e;

    const-string v6, "dot3"

    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lm/e;-><init>([Ljava/lang/String;)V

    new-instance v6, Lu/c;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v6, v0}, Lu/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v4, v6}, Lcom/airbnb/lottie/LottieAnimationView;->h(Lm/e;Ljava/lang/Object;Lu/c;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->l:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lm/e;

    const-string v3, "dot4"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lm/e;-><init>([Ljava/lang/String;)V

    sget-object v3, Lh/u;->K:Landroid/graphics/ColorFilter;

    new-instance v4, Lu/c;

    invoke-direct {v4, v2}, Lu/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->h(Lm/e;Ljava/lang/Object;Lu/c;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->l:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v0

    const/high16 v1, -0x3d4c0000    # -90.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->l:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->startProgressAnimation()V

    :cond_2
    return-void
.end method

.method private startEditNameViewDownAnimation()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const v2, 0x7f070134

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    neg-float v0, v0

    move v2, v1

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v0

    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    neg-float v0, v0

    :goto_0
    move v2, v0

    move v0, v1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v0

    const/high16 v3, -0x3d4c0000    # -90.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v0

    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 7
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 8
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e6147ae    # 0.22f

    const/high16 v6, 0x3e800000    # 0.25f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v1, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0024

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    new-instance v1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/d;

    invoke-direct {v1, p0, v2, v0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/d;-><init>(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;FF)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startProgressAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p0, p0, Lo5/x1;->l:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    return-void
.end method

.method private startThumbnailEdgeBlink()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private stopProgressAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p0, p0, Lo5/x1;->l:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    return-void
.end method

.method private updateButtonLayoutPosition(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v0

    float-to-int v0, v0

    const/16 v1, -0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p0, p0, Lo5/x1;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 4
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p0, p0, Lo5/x1;->p:Landroidx/constraintlayout/widget/Guideline;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 7
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    goto :goto_0

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p0, p0, Lo5/x1;->k:Landroidx/constraintlayout/widget/Guideline;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 10
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 11
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateNormalModeLayout(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mIsEnableLayoutTouch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->hideLoadingAnimation()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->d:Lcom/sec/android/app/camera/widget/StrokedTextButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->m:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mFilterName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->A:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->setThumbnailGroupVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 8
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->setThumbnailImageVisibility(I)V

    if-eqz p1, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->startThumbnailEdgeBlink()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->d:Lcom/sec/android/app/camera/widget/StrokedTextButton;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 11
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->showLoadingAnimation()V

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p1, p1, Lo5/x1;->m:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mFilterName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p1, p1, Lo5/x1;->A:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 14
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->setThumbnailGroupVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p1, p1, Lo5/x1;->m:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 16
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->setThumbnailImageVisibility(I)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->setThumbnailGroupVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p1, p1, Lo5/x1;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p1, p1, Lo5/x1;->m:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 20
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->setThumbnailImageVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public cancelToastMessages()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public getMyFilterNameViewCoordinate()Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->m:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v1, v1, Lo5/x1;->m:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v2, v2, Lo5/x1;->m:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getRight()I

    move-result v2

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p0, p0, Lo5/x1;->m:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->getBottom()I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create(IIII)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getMyFilterThumbnailLayoutSize()Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p0, p0, Lo5/x1;->B:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/factory/SizeFactory;->create(II)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public hideThumbnailGroup()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mThumbGroupShowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mThumbImageShowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x4

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->setThumbnailGroupVisibility(I)V

    .line 4
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->setThumbnailImageVisibility(I)V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getNavigationBarHeight(Landroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->updateButtonLayoutPosition(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v0

    const/high16 v1, -0x3d4c0000    # -90.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->setReverseLandscapeChain()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->m:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/f;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/f;-><init>(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->m:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView$2;-><init>(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->A:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/g;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/g;-><init>(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->c:Lcom/sec/android/app/camera/widget/StrokedTextButton;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/h;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/h;-><init>(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->d:Lcom/sec/android/app/camera/widget/StrokedTextButton;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/e;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/e;-><init>(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->makeBlinkAnimation()V

    .line 11
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->makeThumbnailGroupShowAnimation()V

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->makeThumbnailImageShowAnimation()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mIsPreviewLongPressed:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract$Presenter;->onPreviewLongPressEnd()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mIsPreviewLongPressed:Z

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mIsEnableLayoutTouch:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mIsPreviewLongPressed:Z

    if-nez p1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 4
    iget-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mIsPreviewLongPressed:Z

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast p1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract$Presenter;

    invoke-interface {p1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuContract$Presenter;->onPreviewLongPressEnd()V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mIsPreviewLongPressed:Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->changeNormalMode()V

    :cond_3
    :goto_0
    return v0
.end method

.method public prepareRotation()Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public refreshLayout(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object p1, p1, Lo5/x1;->z:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 2
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->inflateLayout()V

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->initialize()V

    .line 4
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->updateNormalModeLayout(Z)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setDefaultFilterName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mFilterName:Ljava/lang/String;

    return-void
.end method

.method public setEnableLayoutTouch(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnableLayoutTouch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CreateMyFilterMenuView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mIsEnableLayoutTouch:Z

    return-void
.end method

.method public setThumbnailBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public showErrorGuide()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->hideLoadingAnimation()V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->cancelToastMessages()V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f12023c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showToastMessage(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->cancelToastMessages()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mToast:Landroid/widget/Toast;

    .line 3
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public updateButtonGroup()V
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isSoftwareNavigationBar()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isLandscape(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mViewBinding:Lo5/x1;

    iget-object v0, v0, Lo5/x1;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isEnabledTaskBar(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 4
    iput p0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    goto :goto_0

    :cond_1
    const p0, 0x7f0a02cd

    .line 5
    iput p0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    :cond_2
    :goto_0
    return-void
.end method

.method public updateCreateMyFilterLayout(Landroid/graphics/Rect;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCreateMyFilterLayout : touch-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->mIsEnableLayoutTouch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", thumb-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CreateMyFilterMenuView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->startEditNameViewDownAnimation()V

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->updateNormalModeLayout(Z)V

    return-void
.end method
