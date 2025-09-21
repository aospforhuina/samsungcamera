.class public Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;
.super Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;
.source "PortraitVideoView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoContract$View;
.implements Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView<",
        "Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoContract$View;",
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeContract$View<",
        "Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoContract$Presenter;",
        ">;"
    }
.end annotation


# instance fields
.field private mGuideAnimator:Landroid/animation/ValueAnimator;

.field private mIsNeedToUpdateGuidePositionForTablet:Z

.field private mIsRecordingState:Z

.field private mViewBinding:Lo5/u6;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mIsRecordingState:Z

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mIsNeedToUpdateGuidePositionForTablet:Z

    return-void
.end method

.method public static synthetic J(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->lambda$initView$3()V

    return-void
.end method

.method public static synthetic K(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->lambda$updateOrientation$2()V

    return-void
.end method

.method public static synthetic L(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->lambda$refreshGuidePosition$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic M(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->lambda$updateStopRecordingLayout$1()V

    return-void
.end method

.method public static synthetic N(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->lambda$refreshGuidePosition$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic O(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->lambda$startRecordingTime$0()V

    return-void
.end method

.method private getGuideTextViewLandscapeTranslateXOffset()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object v0, v0, Lo5/u6;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    const/16 v1, -0x5a

    const v2, 0x7f070495

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    neg-float p0, p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getTimeIndicatorLandscapePosX(I)F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object v1, v1, Lo5/u6;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object v2, v2, Lo5/u6;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/16 v3, -0x5a

    if-ne p1, v3, :cond_0

    div-float/2addr v0, v2

    sub-float/2addr v0, v1

    return v0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object p1, p1, Lo5/u6;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object p0, p0, Lo5/u6;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    sub-float/2addr p0, v1

    div-float/2addr v0, v2

    sub-float/2addr p0, v0

    return p0
.end method

.method private initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/u6;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/u6;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    .line 2
    iget-object v0, v0, Lo5/u6;->r:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->k:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object v0, v0, Lo5/u6;->q:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->g:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object v1, v1, Lo5/u6;->c:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 5
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    invoke-static {v0, v1}, Lv5/a;->c(Landroid/content/Context;Landroidx/viewbinding/ViewBinding;)Lcom/sec/android/app/camera/interfaces/PortraitLayoutUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/PortraitLayoutUpdater;

    .line 7
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/portrait/f0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/f0;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$initView$3()V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/PortraitLayoutUpdater;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/UpdaterViewId;->APPLY_TABLET_KEY_SCREEN_CONSTRAINTS:Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateViews([Lcom/sec/android/app/camera/interfaces/UpdaterViewId;)V

    return-void
.end method

.method private synthetic lambda$refreshGuidePosition$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->getGuideText()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$refreshGuidePosition$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->getGuideText()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    return-void
.end method

.method private synthetic lambda$startRecordingTime$0()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->refreshGuidePosition(Z)V

    return-void
.end method

.method private synthetic lambda$updateOrientation$2()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/PortraitLayoutUpdater;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateAllViews()V

    return-void
.end method

.method private synthetic lambda$updateStopRecordingLayout$1()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->refreshGuidePosition(Z)V

    return-void
.end method

.method private refreshGuidePosition(Z)V
    .locals 10

    .line 15
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    if-eqz v0, :cond_c

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mGuideAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 17
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const v1, 0x7f0b0096

    const v2, 0x7f070495

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    .line 18
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mIsRecordingState:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mIsNeedToUpdateGuidePositionForTablet:Z

    if-eqz v0, :cond_3

    .line 19
    :cond_2
    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mIsNeedToUpdateGuidePositionForTablet:Z

    return-void

    .line 20
    :cond_3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mIsRecordingState:Z

    .line 21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->getGuideText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->getGuideText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTranslationY()F

    move-result v4

    .line 22
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0705a2

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0705a0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    add-float/2addr v0, v7

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v0, v2

    if-eqz p1, :cond_5

    new-array p1, v3, [F

    aput v4, p1, v6

    aput v0, p1, v5

    .line 24
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mGuideAnimator:Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_5
    new-array p1, v3, [F

    aput v4, p1, v6

    sub-float/2addr v4, v0

    aput v4, p1, v5

    .line 25
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mGuideAnimator:Landroid/animation/ValueAnimator;

    .line 26
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mGuideAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 27
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mGuideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 28
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mGuideAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/portrait/e0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/e0;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 29
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mGuideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 30
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->getGuideText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTranslationX()F

    move-result v0

    .line 31
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    const/16 v8, -0x5a

    if-ne v7, v8, :cond_7

    move v9, v5

    goto :goto_2

    :cond_7
    move v9, v6

    :goto_2
    xor-int/2addr v9, p1

    if-eqz v9, :cond_8

    const/high16 v9, -0x40800000    # -1.0f

    goto :goto_3

    :cond_8
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_3
    mul-float/2addr v2, v9

    const v9, 0x7f070498

    if-ne v7, v8, :cond_9

    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->getGuideTextViewLandscapeOffset()F

    move-result v8

    goto :goto_4

    .line 33
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070493

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->getGuideTextViewLandscapeOffset()F

    move-result v8

    :goto_4
    sub-float/2addr v7, v8

    add-float v8, v2, v7

    .line 34
    invoke-static {v0, v8}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v8

    if-eqz v8, :cond_a

    return-void

    :cond_a
    new-array v3, v3, [F

    aput v0, v3, v6

    if-eqz p1, :cond_b

    move v4, v2

    :cond_b
    add-float/2addr v7, v4

    aput v7, v3, v5

    .line 35
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mGuideAnimator:Landroid/animation/ValueAnimator;

    .line 36
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mGuideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 38
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mGuideAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/portrait/d0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/d0;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 39
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mGuideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 40
    :cond_c
    :goto_5
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mIsRecordingState:Z

    return-void
.end method

.method private updateRecordingTimeIndicatorOrientation(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object v0, v0, Lo5/u6;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object p1, p1, Lo5/u6;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object p0, p0, Lo5/u6;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object v0, v0, Lo5/u6;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->getTimeIndicatorLandscapePosX(I)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object v0, p1, Lo5/u6;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    iget-object p1, p1, Lo5/u6;->q:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object v1, v1, Lo5/u6;->r:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr p1, v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object p0, p0, Lo5/u6;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setY(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->cancelAnimation()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object v0, v0, Lo5/u6;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->j()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mGuideAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic endNightShutterAnimation(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->endNightShutterAnimation(Z)V

    return-void
.end method

.method protected getBokehEffectList()Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object p0, p0, Lo5/u6;->a:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectList;

    return-object p0
.end method

.method protected getBokehEffectListFrame()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object p0, p0, Lo5/u6;->b:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method protected getBokehEffectTitle()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object p0, p0, Lo5/u6;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method protected getBokehLighting()Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getEffectButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object p0, p0, Lo5/u6;->d:Landroid/widget/ImageButton;

    return-object p0
.end method

.method protected getEffectSlider()Lcom/sec/android/app/camera/widget/ExpandableSlider;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object p0, p0, Lo5/u6;->f:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    return-object p0
.end method

.method protected getFaceGuideView()Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getGuideText()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object p0, p0, Lo5/u6;->k:Landroid/widget/TextView;

    return-object p0
.end method

.method protected getGuideline(Z)Landroidx/constraintlayout/widget/Guideline;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lo5/u6;->r:Landroidx/constraintlayout/widget/Guideline;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lo5/u6;->c:Landroidx/constraintlayout/widget/Guideline;

    :goto_0
    return-object p0
.end method

.method protected getMainConstraintLayout()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object p0, p0, Lo5/u6;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method protected getMainLayout()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object p0, p0, Lo5/u6;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method protected getNightCountDownTimer()Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getNightGuideText()Landroid/widget/TextView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getNightModeButton()Lcom/sec/android/app/camera/widget/SceneDetectButton;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getNightShutter()Lcom/sec/android/app/camera/widget/NightShutter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getNightShutterArea()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPauseTimeIndicatorBgColor(Z)I
    .locals 0

    if-nez p1, :cond_1

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7f0602c6

    return p0

    :cond_1
    :goto_0
    const p0, 0x7f0602c7

    return p0
.end method

.method protected getSelectBackground()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object p0, p0, Lo5/u6;->o:Landroid/widget/ImageView;

    return-object p0
.end method

.method public bridge synthetic hideBokehEffectViews(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->hideBokehEffectViews(Z)V

    return-void
.end method

.method public bridge synthetic hideBokehLightingSlider()Z
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->hideBokehLightingSlider()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hideFaceGuide()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->hideFaceGuide()V

    return-void
.end method

.method public bridge synthetic hideGuideText()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->hideGuideText()V

    return-void
.end method

.method public bridge synthetic hideNightModeButton(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->hideNightModeButton(Z)V

    return-void
.end method

.method public inflateView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->initView()V

    return-void
.end method

.method public initialize()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->getEffectButton()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1200c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1200f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2
    sget-object v0, Lu3/b;->P4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object v1, v1, Lo5/u6;->l:Lcom/sec/android/app/camera/shootingmode/portrait/naturalblur/NaturalBlurView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoContract$Presenter;->createNaturalBlurPresenter(Lcom/sec/android/app/camera/shootingmode/portrait/naturalblur/NaturalBlurContract$View;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object v0, v0, Lo5/u6;->l:Lcom/sec/android/app/camera/shootingmode/portrait/naturalblur/NaturalBlurView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/portrait/naturalblur/NaturalBlurView;->initialize()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object v0, v0, Lo5/u6;->l:Lcom/sec/android/app/camera/shootingmode/portrait/naturalblur/NaturalBlurView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    :goto_0
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->initialize()V

    return-void
.end method

.method public bridge synthetic isBokehEffectListAnimationRunning()Z
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->isBokehEffectListAnimationRunning()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isBokehEffectListVisible()Z
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->isBokehEffectListVisible()Z

    move-result p0

    return p0
.end method

.method protected isBokehEffectSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isLightingSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onUserInteraction()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeContract$Presenter;->onUserInteractionRequested()V

    return-void
.end method

.method public bridge synthetic refreshBokehSliderTablet(III)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->refreshBokehSliderTablet(III)V

    return-void
.end method

.method protected refreshGuidePosition()V
    .locals 5

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mIsRecordingState:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mGuideAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    if-eqz v1, :cond_3

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->getGuideText()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->getGuideText()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object v1, v1, Lo5/u6;->q:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->getGuideline(Z)Landroidx/constraintlayout/widget/Guideline;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->getGuideTextViewLandscapeOffset()F

    move-result v0

    add-float/2addr v1, v0

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->getGuideTextViewLandscapeTranslateXOffset()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->getGuideTextViewLandscapeOffset()F

    move-result v2

    sub-float/2addr v0, v2

    .line 8
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    const/16 v3, -0x5a

    const v4, 0x7f070498

    if-ne v2, v3, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070493

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    :goto_0
    add-float/2addr v0, v2

    .line 11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->getGuideText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->getGuideText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->getGuideText()Landroid/widget/TextView;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setRotation(F)V

    return-void

    .line 14
    :cond_3
    :goto_1
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->refreshGuidePosition()V

    return-void
.end method

.method public bridge synthetic setBokehEffectSliderLevel(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setBokehEffectSliderLevel(I)V

    return-void
.end method

.method public bridge synthetic setBokehLightingVisibility(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setBokehLightingVisibility(Z)V

    return-void
.end method

.method public bridge synthetic setBokehListAdapter(Ljava/util/ArrayList;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setBokehListAdapter(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic setCurrentBokehEffect(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setCurrentBokehEffect(I)V

    return-void
.end method

.method public bridge synthetic setEstimatedCaptureDurationTime(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setEstimatedCaptureDurationTime(I)V

    return-void
.end method

.method public bridge synthetic setInitialBokehEffect(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setInitialBokehEffect(I)V

    return-void
.end method

.method public bridge synthetic setLightingLevel(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setLightingLevel(I)V

    return-void
.end method

.method public bridge synthetic setNightGuideVisibility(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setNightGuideVisibility(Z)V

    return-void
.end method

.method public bridge synthetic setNightModeSelected(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setNightModeSelected(Z)V

    return-void
.end method

.method public bridge synthetic setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setPreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic showCountDownTimer(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->showCountDownTimer(IZ)V

    return-void
.end method

.method public bridge synthetic showEffectButton()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->showEffectButton()V

    return-void
.end method

.method public bridge synthetic showEffectSlider(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->showEffectSlider(Z)V

    return-void
.end method

.method public bridge synthetic showFaceGuide()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->showFaceGuide()V

    return-void
.end method

.method public bridge synthetic showGuideText()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->showGuideText()V

    return-void
.end method

.method public bridge synthetic showNightModeButton(ZIZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->showNightModeButton(ZIZ)V

    return-void
.end method

.method public bridge synthetic showNightShutter()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->showNightShutter()V

    return-void
.end method

.method public bridge synthetic startFaceDetectGuideAnimation(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->startFaceDetectGuideAnimation(Z)V

    return-void
.end method

.method public bridge synthetic startNightModeButtonClickAnimation(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->startNightModeButtonClickAnimation(Z)V

    return-void
.end method

.method public bridge synthetic startNightShutterAnimation(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->startNightShutterAnimation(I)V

    return-void
.end method

.method public startRecordingTime(I)V
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->updateRecordingTimeIndicatorOrientation(I)V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object v1, v1, Lo5/u6;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, p1, v2}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->w(IF)V

    .line 4
    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/portrait/i0;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/i0;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->refreshGuidePosition(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic updateChildBackground(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->updateChildBackground(I)V

    return-void
.end method

.method public updateEffectButtonResource(IZ)V
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/BokehUtil;->getVideoBokehEffectButtonResource(IZ)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object v0, v0, Lo5/u6;->d:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p2, :cond_0

    const p2, 0x7f120476

    goto :goto_0

    :cond_0
    const p2, 0x7f120475

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->getEffectButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic updateGuideText(Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->updateGuideText(Ljava/lang/String;Z)V

    return-void
.end method

.method protected updateOrientation()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->updateOrientation()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/PortraitLayoutUpdater;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mIsRecordingState:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->updateStopRecordingLayout(Z)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mIsNeedToUpdateGuidePositionForTablet:Z

    goto :goto_0

    .line 6
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mIsNeedToUpdateGuidePositionForTablet:Z

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/PortraitLayoutUpdater;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->setOrientation(I)V

    .line 8
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/portrait/g0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/g0;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public updatePauseRecordingLayout(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object p0, p0, Lo5/u6;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->k(IZ)V

    return-void
.end method

.method public updateRecordingTime(JI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object p0, p0, Lo5/u6;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->C(JI)V

    return-void
.end method

.method public updateResumeRecordingLayout()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object p0, p0, Lo5/u6;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->x()V

    return-void
.end method

.method public updateStartRecordingLayout()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object p0, p0, Lo5/u6;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->n()V

    return-void
.end method

.method public updateStopRecordingLayout(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object v0, v0, Lo5/u6;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->A(Z)V

    .line 2
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/portrait/h0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/h0;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->refreshGuidePosition(Z)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object v0, v0, Lo5/u6;->a:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectList;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->hideBokehEffectViews(Z)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->showEffectButton()V

    :goto_1
    return-void
.end method

.method public updateTimeIndicatorBackground()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitVideoView;->mViewBinding:Lo5/u6;

    iget-object p0, p0, Lo5/u6;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->v()V

    return-void
.end method

.method public bridge synthetic updateViewBackground(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->updateViewBackground(Landroid/graphics/Rect;)V

    return-void
.end method
