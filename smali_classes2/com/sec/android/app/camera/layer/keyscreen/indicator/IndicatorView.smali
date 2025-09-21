.class public Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;
.super Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;
.source "IndicatorView.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorContract$View;
.implements Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;
.implements Lcom/sec/android/app/camera/interfaces/IndicatorManager;


# instance fields
.field private mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorContract$Presenter;

.field private mViewBinding:Lo5/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;)Lo5/u;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lo5/u;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/u;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public hideApertureIndicator()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object p0, p0, Lo5/u;->a:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideBtMicIndicator()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object p0, p0, Lo5/u;->b:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideHdr10PlusIndicator()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object p0, p0, Lo5/u;->c:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideRemainCountIndicator()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object p0, p0, Lo5/u;->f:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public initialize()V
    .locals 1

    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->setRotateAction(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;)V

    return-void
.end method

.method public prepareRotation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public refreshLayout(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object v0, v0, Lo5/u;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object v1, v1, Lo5/u;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object v2, v2, Lo5/u;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object v3, v3, Lo5/u;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    .line 5
    iget-object v4, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object v4, v4, Lo5/u;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object v5, v5, Lo5/u;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->init(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 9
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object v6, v6, Lo5/u;->d:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 10
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object v6, v6, Lo5/u;->f:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalBias(IF)V

    .line 11
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object v6, v6, Lo5/u;->f:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    const/4 v7, 0x6

    invoke-virtual {p1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 12
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object v6, v6, Lo5/u;->f:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-virtual {p1, v6, v8, v9, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 13
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object v6, v6, Lo5/u;->c:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    invoke-virtual {p1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 14
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object v6, v6, Lo5/u;->c:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    invoke-virtual {p1, v6, v8, v9, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 15
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object v6, v6, Lo5/u;->a:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    invoke-virtual {p1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 16
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object v6, v6, Lo5/u;->a:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    invoke-virtual {p1, v6, v8, v9, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 17
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object v6, v6, Lo5/u;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    invoke-virtual {p1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 18
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object v6, v6, Lo5/u;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    invoke-virtual {p1, v6, v8, v9, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 19
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object v6, v6, Lo5/u;->d:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object p1, p1, Lo5/u;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object p1, p1, Lo5/u;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView$1;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView$1;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;I)V

    const-wide/16 v6, 0xa

    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object p1, p1, Lo5/u;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object p1, p1, Lo5/u;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object p0, p0, Lo5/u;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->setPresenter(Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorContract$Presenter;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorContract$Presenter;

    return-void
.end method

.method public setRemainCountIndicator(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorContract$Presenter;->onSetRemainCountIndicatorRequested(I)V

    return-void
.end method

.method public showApertureIndicator(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object v0, v0, Lo5/u;->a:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "F %.1f"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object p0, p0, Lo5/u;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showBtMicIndicator()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object p0, p0, Lo5/u;->b:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showHdr10PlusIndicator()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object p0, p0, Lo5/u;->c:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showRemainCountIndicator(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object v0, v0, Lo5/u;->f:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "%03d"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lo5/u;

    iget-object p0, p0, Lo5/u;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
