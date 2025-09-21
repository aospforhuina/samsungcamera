.class public Lcom/sec/android/app/camera/shootingmode/video/VideoView;
.super Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;
.source "VideoView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/video/VideoContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView<",
        "Lcom/sec/android/app/camera/shootingmode/video/VideoContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/shootingmode/video/VideoContract$View;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SCALE_RATIO:F = 1.0f


# instance fields
.field private mDarkMode:Z

.field private mIsRecordingLayout:Z

.field private mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mScaleRatio:F

.field private mViewBinding:Lo5/u8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mScaleRatio:F

    .line 3
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mPreviewRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mIsRecordingLayout:Z

    return-void
.end method

.method private getProgressBarLandscapePosX(I)F
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v1, Lo5/u8;->k:Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v2, v2, Lo5/u8;->k:Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/16 v2, -0x5a

    if-ne p1, v2, :cond_0

    sub-float/2addr v0, v1

    return v0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p1, p1, Lo5/u8;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->k:Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    sub-float/2addr p1, v0

    return p1
.end method

.method private getProgressBarLandscapePosY()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v1, Lo5/u8;->b:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    cmpg-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->k:Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    sub-int/2addr v2, p0

    int-to-float p0, v2

    div-float/2addr p0, v1

    return p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->o:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v2, v2, Lo5/u8;->p:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->k:Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    div-float/2addr v0, v1

    return v0
.end method

.method private getViewLandscapePosY(Landroid/view/View;Z)F
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p2, p2, Lo5/u8;->o:Landroidx/constraintlayout/widget/Guideline;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p2, p2, Lo5/u8;->b:Landroidx/constraintlayout/widget/Guideline;

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v1, Lo5/u8;->b:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    cmpg-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-gez v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mPreviewRect:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr p2, p0

    int-to-float p0, p2

    :goto_1
    div-float/2addr p0, v1

    return p0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->p:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    add-float/2addr p0, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    goto :goto_1
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/shootingmode/video/VideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->lambda$onSizeChanged$3()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/shootingmode/video/VideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->lambda$updateOrientation$4()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p0, v1}, Lo5/u8;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/u8;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    .line 3
    iget-object v0, v0, Lo5/u8;->p:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->k:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->o:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->g:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v1, Lo5/u8;->b:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->f:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->d:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 7
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    invoke-static {v0, v1}, Lv5/a;->a(Landroid/content/Context;Landroidx/viewbinding/ViewBinding;)Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    .line 9
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/video/z;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/video/z;-><init>(Lcom/sec/android/app/camera/shootingmode/video/VideoView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/shootingmode/video/VideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->lambda$updateStopRecordingLayout$2()V

    return-void
.end method

.method public static synthetic k(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->lambda$showLowBrightnessValueWarning$1(Landroid/view/ViewPropertyAnimator;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/shootingmode/video/VideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->lambda$initView$5()V

    return-void
.end method

.method private synthetic lambda$hideLowBrightnessValueWarning$0()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->d:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$initView$5()V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/UpdaterViewId;->APPLY_TABLET_KEY_SCREEN_CONSTRAINTS:Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateViews([Lcom/sec/android/app/camera/interfaces/UpdaterViewId;)V

    return-void
.end method

.method private synthetic lambda$onSizeChanged$3()V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/UpdaterViewId;->UPDATE_RECORDING_TIME_VIDEO_VIEW:Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateViews([Lcom/sec/android/app/camera/interfaces/UpdaterViewId;)V

    return-void
.end method

.method private static synthetic lambda$showLowBrightnessValueWarning$1(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method private synthetic lambda$updateOrientation$4()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateAllViews()V

    return-void
.end method

.method private synthetic lambda$updateStopRecordingLayout$2()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->updateLowBrightnessValueWarningGuideOrientation(I)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/shootingmode/video/VideoView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;->applyTabletRecordingTimeIndicatorConstraint()V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/camera/shootingmode/video/VideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->lambda$hideLowBrightnessValueWarning$0()V

    return-void
.end method

.method private refreshSuperSteadyLowBrightnessWarningGuidePosition()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->d:Landroid/widget/TextView;

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mIsRecordingLayout:Z

    const/16 v3, -0x5a

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070495

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    if-eq v2, v3, :cond_2

    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    mul-float/2addr v2, v1

    .line 6
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    .line 7
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    const v5, 0x7f0701ac

    if-ne v4, v3, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v3, v1

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setX(F)V

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setX(F)V

    .line 10
    :goto_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mIsRecordingLayout:Z

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->getViewLandscapePosY(Landroid/view/View;Z)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method private updateGuideBackground(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->d:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    if-nez v1, :cond_0

    if-le p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p1, p1, Lo5/u8;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f08071f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p1, p1, Lo5/u8;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f08071e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private updateLowBrightnessValueWarningGuideOrientation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->d:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->refreshSuperSteadyLowBrightnessWarningGuidePosition()V

    return-void
.end method

.method private updateQuickTakeButtonOrientation(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->g:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private updateRecordingProgressBarOrientation(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->k:Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p1, p1, Lo5/u8;->k:Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->k:Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->k:Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->getProgressBarLandscapePosX(I)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p1, p1, Lo5/u8;->k:Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->getProgressBarLandscapePosY()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setY(F)V

    :goto_0
    return-void
.end method

.method private updateRecordingTimeIndicatorOrientation(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p1, p1, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v0, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    iget-object v0, v0, Lo5/u8;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v2, v2, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    .line 5
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v3, v3, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 6
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;->getTimeIndicatorLandscapePosX(FFFI)F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p1, p1, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->getViewLandscapePosY(Landroid/view/View;Z)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setY(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public applyQuickTakeLockTabletConstraint(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->g:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, 0x3

    .line 3
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    const/4 v2, 0x4

    .line 4
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    const/4 v2, 0x6

    .line 5
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    const/4 v2, 0x7

    .line 6
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    .line 7
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 8
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 9
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 10
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v1, Lo5/u8;->g:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->g:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07058e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07058d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 14
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 15
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    sub-float/2addr v3, v1

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v1

    const/high16 v4, -0x3d4c0000    # -90.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    .line 17
    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    add-float v3, p1, v0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p1, p1, Lo5/u8;->g:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 19
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->g:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    return-void
.end method

.method public cancelAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->j()V

    return-void
.end method

.method public cancelFocusEnhancerButtonAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->cancelFocusEnhancerButtonAnimation()V

    return-void
.end method

.method public changeQuickTakeLockBackgroundSize(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->o:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v1, Lo5/u8;->b:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07058e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->g:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->changeBackground(FF)V

    return-void
.end method

.method protected getMainLayout()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method protected getRecordingTimeIndicator()Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    return-object p0
.end method

.method public hideAutoFramingButton()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public hideAutoFramingRecordingGuide()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->hideRecordingGuide()V

    return-void
.end method

.method public hideFocusEnhancerView()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public hideLowBrightnessValueWarning(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p1, p1, Lo5/u8;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/video/b0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/video/b0;-><init>(Lcom/sec/android/app/camera/shootingmode/video/VideoView;)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->d:Landroid/widget/TextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public hideQuickTakeLockImage()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->g:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->hide()V

    return-void
.end method

.method public inflateView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->initView()V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v1, Lcom/sec/android/app/camera/shootingmode/video/VideoContract$Presenter;

    invoke-virtual {v0, v1}, Lo5/u8;->f(Lcom/sec/android/app/camera/shootingmode/video/VideoContract$Presenter;)V

    .line 2
    sget-object v0, Lu3/b;->M4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/video/VideoContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v1, Lo5/u8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/video/VideoContract$Presenter;->createAutoFramingPresenter(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/video/VideoContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v1, Lo5/u8;->c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/video/VideoContract$Presenter;->createFocusEnhancerPresenter(Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerContract$View;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->initialize()V

    .line 9
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->initialize()V

    return-void
.end method

.method public isContainQuickTakeLockArea(FF)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->g:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    float-to-int p0, p1

    float-to-int p1, p2

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isContainTimeIndicatorInPreview(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result p0

    if-le p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isQuickTakeLockAnimationRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->g:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->isRunningLockAnimation()Z

    move-result p0

    return p0
.end method

.method public onLayerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->M4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p1, p1, Lo5/u8;->k:Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p1, p1, Lo5/u8;->k:Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->initProgressBar()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mScaleRatio:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/video/w;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/video/w;-><init>(Lcom/sec/android/app/camera/shootingmode/video/VideoView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mPreviewRect:Landroid/graphics/Rect;

    .line 2
    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->updateGuideBackground(I)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->refreshSuperSteadyLowBrightnessWarningGuidePosition()V

    return-void
.end method

.method public setRecordingProgressScale(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mScaleRatio:F

    return-void
.end method

.method public showAutoFramingButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->hideAutoFramingRecordingGuide()V

    return-void
.end method

.method public showAutoFramingRecordingGuide()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->showRecordingGuide()V

    return-void
.end method

.method public showFocusEnhancerView()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public showLowBrightnessValueWarning()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/video/c0;->a:Lcom/sec/android/app/camera/shootingmode/video/c0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->d:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showQuickTakeLockImage(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->o:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v1, Lo5/u8;->b:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07058e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07058d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07058b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v2, v2, Lo5/u8;->g:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result v2

    add-int/2addr v2, v1

    .line 4
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-le v2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v1, Lo5/u8;->g:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v1, p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->show(IFZ)V

    return-void
.end method

.method public startQuickTakeLockAnimation(Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->g:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->startLockAnimation(Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;)V

    return-void
.end method

.method public startRecordingProgressBar(J)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mScaleRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->k:Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v1, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    const/4 v1, -0x1

    .line 4
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v1, Lo5/u8;->k:Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    :cond_0
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->updateRecordingProgressBarOrientation(I)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->k:Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mScaleRatio:F

    invoke-virtual {v0, p1, p2, p0}, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->start(JF)V

    return-void
.end method

.method public startRecordingTime(I)V
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/video/a0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/video/a0;-><init>(Lcom/sec/android/app/camera/shootingmode/video/VideoView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->updateRecordingTimeIndicatorOrientation(I)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mScaleRatio:F

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->w(IF)V

    return-void
.end method

.method public updateAutoFramingDrawingArea()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->updateAutoFramingDrawingArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateButtonBackground(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mDarkMode:Z

    if-eqz v1, :cond_0

    if-ge v0, p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mDarkMode:Z

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v1, Lo5/u8;->c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mDarkMode:Z

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p1, p1, Lo5/u8;->c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mDarkMode:Z

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->updateFocusEnhancerButtonBackground(Z)V

    return-void
.end method

.method protected updateOrientation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->setOrientation(I)V

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/video/x;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/video/x;-><init>(Lcom/sec/android/app/camera/shootingmode/video/VideoView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->updateQuickTakeButtonOrientation(I)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->onOrientationChanged(I)V

    .line 6
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->updateAutoFramingDrawingArea()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->g:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->setOrientation(I)V

    .line 9
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->updateLowBrightnessValueWarningGuideOrientation(I)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->updateGuideBackground(I)V

    return-void
.end method

.method public updatePauseRecordingLayout(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->k(IZ)V

    return-void
.end method

.method public updateRecordingProgressBar(J)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->k:Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->update(J)Z

    move-result p0

    return p0
.end method

.method public updateRecordingTime(JI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->C(JI)V

    return-void
.end method

.method public updateResumeRecordingLayout()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->x()V

    return-void
.end method

.method public updateStartRecordingLayout()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mIsRecordingLayout:Z

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mScaleRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-array v0, v0, [Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    .line 4
    sget-object v3, Lcom/sec/android/app/camera/interfaces/UpdaterViewId;->UPDATE_RECORDING_TIME_VIDEO_VIEW:Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    aput-object v3, v0, v2

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateViews([Lcom/sec/android/app/camera/interfaces/UpdaterViewId;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v1, Lo5/u8;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v1, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v1, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v4, v4, Lo5/u8;->m:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v1, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalBias(IF)V

    .line 10
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v1, Lo5/u8;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 12
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 13
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v1, v1, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->n()V

    .line 15
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->refreshSuperSteadyLowBrightnessWarningGuidePosition()V

    return-void
.end method

.method public updateStopRecordingLayout(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mIsRecordingLayout:Z

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object v0, v0, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->A(Z)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p1, p1, Lo5/u8;->k:Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->stop()V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/video/y;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/video/y;-><init>(Lcom/sec/android/app/camera/shootingmode/video/VideoView;)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b006a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    .line 6
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateTimeIndicatorBackground()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->mViewBinding:Lo5/u8;

    iget-object p0, p0, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->v()V

    return-void
.end method
