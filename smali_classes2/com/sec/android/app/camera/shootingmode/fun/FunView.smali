.class public Lcom/sec/android/app/camera/shootingmode/fun/FunView;
.super Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;
.source "FunView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/fun/FunContract$View;
.implements Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;
.implements Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$SnapListener;
.implements Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$PopupLensListener;
.implements Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$BottomSheetLensInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView<",
        "Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/shootingmode/fun/FunContract$View;",
        "Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;",
        "Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$SnapListener;",
        "Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$PopupLensListener;",
        "Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$BottomSheetLensInterface;"
    }
.end annotation


# static fields
.field private static final MIN_SHUTTER_BUTTON_QUICK_TAKE_SCALE_RATIO:F = 0.85f

.field private static final TAG:Ljava/lang/String; = "FunView"


# instance fields
.field private mAdapter:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

.field private mBottomSheetLens:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;

.field private mContentsNavigator:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

.field mIsScrollEnabled:Z

.field private mLensAdapter:Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mShutterColorAnimation:Landroid/animation/ValueAnimator;

.field private mViewBinding:Lo5/x4;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mPreviewRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mIsScrollEnabled:Z

    return-void
.end method

.method private getTimeIndicatorLandscapePosX()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v1, v1, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v2, v2, Lo5/x4;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v3, v3, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0701ac

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    div-float/2addr p0, v1

    sub-float/2addr v2, p0

    return v2
.end method

.method private getTimeIndicatorLandscapePosY()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v1, v1, Lo5/x4;->c:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    cmpg-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    sub-int/2addr v2, p0

    int-to-float p0, v2

    div-float/2addr p0, v1

    return p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->p:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v2, v2, Lo5/x4;->r:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    div-float/2addr v0, v1

    return v0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/shootingmode/fun/FunView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->lambda$initView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/shootingmode/fun/FunView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->lambda$addLens$0()V

    return-void
.end method

.method private initView()V
    .locals 2

    const-string v0, "FunView"

    const-string v1, "Initialize Fun View"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/x4;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/x4;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    .line 3
    iget-object v0, v0, Lo5/x4;->d:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mContentsNavigator:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    .line 4
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->setSnapListener(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$SnapListener;)V

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->hideSnapButton()V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->a:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/fun/l;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/fun/l;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/FunView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/fun/k;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/fun/k;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/FunView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v1, v1, Lo5/x4;->c:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->p:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/Util;->updateShutterAreaGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/shootingmode/fun/FunView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->lambda$startQuickTakeAnimation$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic k(Landroid/animation/ValueAnimator;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->lambda$startQuickTakeAnimation$5(Landroid/animation/ValueAnimator;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/shootingmode/fun/FunView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->lambda$initView$7(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$addLens$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static synthetic lambda$hideQuickTakeButton$2(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private synthetic lambda$hideQuickTakeEffect$1()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->m:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$initView$7(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;

    invoke-interface {p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;->onMoreLensBackButtonClicked()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;->showBottomSheetLens()V

    return-void
.end method

.method private synthetic lambda$initView$8(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;->showBottomSheetLens()V

    .line 2
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->EVENT_FUN_MORE_LENSES:Lcom/sec/android/app/camera/logging/SaLogEventId;

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;)V

    return-void
.end method

.method private synthetic lambda$showLensGuide$3(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p1, p1, Lo5/x4;->g:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p1, p1, Lo5/x4;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b017d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$startQuickTakeAnimation$5(Landroid/animation/ValueAnimator;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method private synthetic lambda$startQuickTakeAnimation$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->l:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/fun/q;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/q;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$updateSnapLensName$4(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->q:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f12058b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    const p1, 0x7f120589

    invoke-virtual {v2, p1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p1, p1, Lo5/x4;->q:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p1, p1, Lo5/x4;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b017e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/shootingmode/fun/FunView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->lambda$updateSnapLensName$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic n(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->lambda$hideQuickTakeButton$2(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/camera/shootingmode/fun/FunView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->lambda$showLensGuide$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/camera/shootingmode/fun/FunView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->lambda$hideQuickTakeEffect$1()V

    return-void
.end method

.method private updateRecordingTimeIndicatorOrientation(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p1, p1, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v1, v0, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    iget-object v0, v0, Lo5/x4;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v2, v2, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    .line 5
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v3, v3, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 6
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;->getTimeIndicatorLandscapePosX(FFFI)F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p1, p1, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->getTimeIndicatorLandscapePosY()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setY(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addLens()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mContentsNavigator:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/fun/m;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/fun/m;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/FunView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getLensAdapter()Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mLensAdapter:Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;

    return-object p0
.end method

.method protected getMainLayout()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method protected getRecordingTimeIndicator()Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    return-object p0
.end method

.method public hideLensGuide()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->g:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideMoreLensPage()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mBottomSheetLens:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mBottomSheetLens:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/b;->dismiss()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->onSnapLensEnd(Z)V

    .line 4
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogScreenId;->SHOOTINGMODE_FUN:Lcom/sec/android/app/camera/logging/SaLogScreenId;

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->setSaScreenId(Lcom/sec/android/app/camera/logging/SaLogScreenId;)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hideQuickTakeButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/fun/r;->a:Lcom/sec/android/app/camera/shootingmode/fun/r;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->l:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hideQuickTakeEffect()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->m:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/fun/n;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/fun/n;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/FunView;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public hideSnapButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->d:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hideSnapName()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->q:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public inflateView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->initView()V

    return-void
.end method

.method public initialize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;->onInitialize()V

    .line 2
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->initialize()V

    return-void
.end method

.method public onBottomSheetDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->scrollToPosition(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->onLensSelected(I)V

    return-void
.end method

.method public onContentsSnapped(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mContentsNavigator:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->setSnappedPosition(ILcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;)V

    return-void
.end method

.method public onDiscoverButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;->onDiscoverButtonClicked()V

    return-void
.end method

.method public onFunModeContentsNavigatorTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;->onFocusedSnapButtonTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLensSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->g:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;->onLensSelected(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->onSnapLensEnd(Z)V

    return-void
.end method

.method public onLongPressKey()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->onLongPressKey()V

    return-void
.end method

.method public onPopupLensClick(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mBottomSheetLens:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/b;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p1, p1, Lo5/x4;->a:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p1, p1, Lo5/x4;->k:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;

    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;->onPopupLensClick(I)V

    return-void
.end method

.method public onPopupTouch(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;->onPopupTouch(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSnapButtonClick(Landroid/view/View;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;->onFocusedSnapButtonClicked()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;->onLensSelected(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mContentsNavigator:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->setSnap(IZ)V

    :goto_0
    return-void
.end method

.method public onSnapButtonLongClick(IZLjava/lang/String;)V
    .locals 0

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p2, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;

    invoke-interface {p2, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;->onFocusedLongSnapButtonPressed(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->getItemCount()I

    move-result p2

    if-le p2, p3, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->getItemCount()I

    move-result p2

    sub-int/2addr p2, p3

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->onSnapLensEnd(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p2, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;

    invoke-interface {p2, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;->onLensSelected(I)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mContentsNavigator:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->setSnap(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSnapButtonTouch(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;->onFocusedSnapButtonTouch(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public onSnapLensEnd(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->k:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->k:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mContentsNavigator:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->changeToScrolledPosition(I)V

    return-void
.end method

.method public setAdapter(Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->setSnapButtonClickListener(Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mContentsNavigator:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mContentsNavigator:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->setOrientation(I)V

    return-void
.end method

.method public setLensAdapter(Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mLensAdapter:Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;

    const/4 p0, 0x1

    .line 2
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mContentsNavigator:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->setScrollEnabled(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mIsScrollEnabled:Z

    return-void
.end method

.method public showBottomSheetLens(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mBottomSheetLens:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens$BottomSheetLensInterface;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mBottomSheetLens:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mLensAdapter:Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->setPopupLensClickListener(Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$PopupLensListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mBottomSheetLens:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mBottomSheetLens:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mBottomSheetLens:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mBottomSheetLens:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public showLensGuide(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    new-instance p2, Lcom/sec/android/app/camera/shootingmode/fun/p;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/p;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/FunView;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public showMoreLensPage()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mBottomSheetLens:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->a:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;->onMoreLensBackButtonClicked()V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$Presenter;->showBottomSheetLens()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public showSnapButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->d:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showSnapName()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->q:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->q:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b017e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startQuickTakeAnimation()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mShutterColorAnimation:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060019

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f06001a

    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 5
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mShutterColorAnimation:Landroid/animation/ValueAnimator;

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mShutterColorAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mShutterColorAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/fun/j;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/fun/j;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/FunView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mShutterColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0b001f

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v7, v1

    invoke-virtual {v0, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 15
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->d:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 20
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b001e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public updateBackButton(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->a:Landroid/widget/ImageButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->a:Landroid/widget/ImageButton;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateLayoutOrientation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mBottomSheetLens:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;

    if-eqz v0, :cond_0

    .line 2
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->updateOrientation(I)V

    :cond_0
    return-void
.end method

.method protected updateOrientation()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->updateRecordingTimeIndicatorOrientation(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mBottomSheetLens:Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/fun/BottomSheetLens;->updateOrientation(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->g:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mContentsNavigator:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->onOrientationChanged(F)V

    return-void
.end method

.method public updatePauseRecordingLayout(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->k(IZ)V

    return-void
.end method

.method public updateRecordingTime(JI)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->updateRecordingTimeIndicatorOrientation(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p3, v1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->w(IF)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->C(JI)V

    return-void
.end method

.method public updateResumeRecordingLayout()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->x()V

    return-void
.end method

.method public updateScrollToPosition()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mContentsNavigator:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->getSnapPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->scrollToPosition(I)V

    return-void
.end method

.method public updateSnapLensName(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/fun/o;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/o;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/FunView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateStartRecordingLayout()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->startQuickTakeAnimation()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->a:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->n()V

    return-void
.end method

.method public updateStopRecordingLayout(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object v0, v0, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->A(Z)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p1, p1, Lo5/x4;->d:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p1, p1, Lo5/x4;->f:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mContentsNavigator:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->getSnapPosition()I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->onSnapLensEnd(Z)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->showSnapName()V

    return-void
.end method

.method public updateTimeIndicatorBackground()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->mViewBinding:Lo5/x4;

    iget-object p0, p0, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->v()V

    return-void
.end method
