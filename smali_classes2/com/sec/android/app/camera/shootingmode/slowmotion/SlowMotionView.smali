.class public Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;
.super Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;
.source "SlowMotionView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView<",
        "Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionContract$View;"
    }
.end annotation


# instance fields
.field private mViewBinding:Lo5/m8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;-><init>(Landroid/content/Context;)V

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

    invoke-static {v0, p0, v1}, Lo5/m8;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/m8;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    .line 2
    iget-object v0, v0, Lo5/m8;->g:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->k:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object v0, v0, Lo5/m8;->f:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->g:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object p0, p0, Lo5/m8;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method private updateRecordingTimeIndicatorOrientation(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object v0, v0, Lo5/m8;->c:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object p1, p1, Lo5/m8;->c:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object p0, p0, Lo5/m8;->c:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object v1, v0, Lo5/m8;->c:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    iget-object v0, v0, Lo5/m8;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object v2, v2, Lo5/m8;->c:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    .line 5
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object v3, v3, Lo5/m8;->c:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 6
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;->getTimeIndicatorLandscapePosX(FFFI)F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object v0, p1, Lo5/m8;->c:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    iget-object p1, p1, Lo5/m8;->f:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object v1, v1, Lo5/m8;->g:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr p1, v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object p0, p0, Lo5/m8;->c:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

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
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object p0, p0, Lo5/m8;->c:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->j()V

    return-void
.end method

.method protected getMainLayout()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object p0, p0, Lo5/m8;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method protected getRecordingTimeIndicator()Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object p0, p0, Lo5/m8;->c:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    return-object p0
.end method

.method public inflateView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->initView()V

    return-void
.end method

.method public startRecordingTime(I)V
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->updateRecordingTimeIndicatorOrientation(I)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object p0, p0, Lo5/m8;->c:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->w(IF)V

    return-void
.end method

.method protected updateOrientation()V
    .locals 0

    return-void
.end method

.method public updatePauseRecordingLayout(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object p0, p0, Lo5/m8;->c:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->k(IZ)V

    return-void
.end method

.method public updateRecordingTime(JI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object p0, p0, Lo5/m8;->c:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->C(JI)V

    return-void
.end method

.method public updateResumeRecordingLayout()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object p0, p0, Lo5/m8;->c:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->x()V

    return-void
.end method

.method public updateStartRecordingLayout()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object p0, p0, Lo5/m8;->c:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->n()V

    return-void
.end method

.method public updateStopRecordingLayout(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object p0, p0, Lo5/m8;->c:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->A(Z)V

    return-void
.end method

.method public updateTimeIndicatorBackground()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionView;->mViewBinding:Lo5/m8;

    iget-object p0, p0, Lo5/m8;->c:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->v()V

    return-void
.end method
