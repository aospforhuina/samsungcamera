.class public Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SingleTakeCustomizedOptionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private mItem:Ln5/y;

.field private mRestoreAnimation:Landroid/animation/AnimatorSet;

.field private mTouchDownAnimation:Landroid/animation/AnimatorSet;

.field private mTouchUpAnimation:Landroid/animation/AnimatorSet;

.field private final mViewBinding:Lo5/e8;

.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;Lo5/e8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;

    .line 2
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    .line 4
    iget-object p1, p2, Lo5/e8;->f:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/a;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/a;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;)Ln5/y;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mItem:Ln5/y;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;)Lo5/e8;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->cancelAnimation()V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->startRestoreAnimation()V

    return p2

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->cancelAnimation()V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->startTouchUpAnimation()V

    return p2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->cancelAnimation()V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->startTouchDownAnimation()V

    return p2
.end method

.method private startRestoreAnimation()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;->d(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mItem:Ln5/y;

    invoke-virtual {v1}, Ln5/y;->d()Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mItem:Ln5/y;

    invoke-virtual {v4}, Ln5/y;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 4
    :goto_1
    new-instance v5, Lcom/sec/android/app/camera/util/interpolator/CustomPath;

    const v6, 0x3f99999a    # 1.2f

    const v7, 0x3e4ccccd    # 0.2f

    invoke-direct {v5, v7, v7, v2, v6}, Lcom/sec/android/app/camera/util/interpolator/CustomPath;-><init>(FFFF)V

    .line 5
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mRestoreAnimation:Landroid/animation/AnimatorSet;

    .line 6
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v6, v6, Lo5/e8;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getScaleX()F

    move-result v7

    invoke-static {v6, v7, v3, v0, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v6, v6, Lo5/e8;->d:Landroid/widget/RelativeLayout;

    .line 7
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getScaleX()F

    move-result v7

    invoke-static {v6, v7, v3, v0, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v3, v3, Lo5/e8;->b:Landroid/widget/RelativeLayout;

    .line 8
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v6

    invoke-static {v3, v6, v1, v0, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v2, v2, Lo5/e8;->d:Landroid/widget/RelativeLayout;

    .line 9
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v3

    invoke-static {v2, v3, v4, v0, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mRestoreAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startTouchDownAnimation()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;->d(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/CustomPath;

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    const v4, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/sec/android/app/camera/util/interpolator/CustomPath;-><init>(FFFF)V

    .line 3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mTouchDownAnimation:Landroid/animation/AnimatorSet;

    .line 4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v3, v3, Lo5/e8;->b:Landroid/widget/RelativeLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f666666    # 0.9f

    invoke-static {v3, v4, v5, v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v3, v3, Lo5/e8;->d:Landroid/widget/RelativeLayout;

    .line 5
    invoke-static {v3, v4, v5, v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mTouchDownAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startTouchUpAnimation()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mItem:Ln5/y;

    invoke-virtual {v0}, Ln5/y;->d()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mItem:Ln5/y;

    invoke-virtual {v3}, Ln5/y;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 3
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mItem:Ln5/y;

    invoke-virtual {v4}, Ln5/y;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 4
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mItem:Ln5/y;

    invoke-virtual {v5}, Ln5/y;->d()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v1

    .line 5
    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;

    invoke-static {v6}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;->d(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b00a4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 6
    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/CustomPath;

    const v8, 0x3ecccccd    # 0.4f

    const v9, 0x3f19999a    # 0.6f

    const v10, 0x3fcccccd    # 1.6f

    invoke-direct {v7, v8, v9, v1, v10}, Lcom/sec/android/app/camera/util/interpolator/CustomPath;-><init>(FFFF)V

    .line 7
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mTouchUpAnimation:Landroid/animation/AnimatorSet;

    .line 8
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v8, v8, Lo5/e8;->b:Landroid/widget/RelativeLayout;

    const v9, 0x3f666666    # 0.9f

    invoke-static {v8, v9, v2, v6, v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v8, v8, Lo5/e8;->d:Landroid/widget/RelativeLayout;

    .line 9
    invoke-static {v8, v9, v2, v6, v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v2, v2, Lo5/e8;->b:Landroid/widget/RelativeLayout;

    .line 10
    invoke-static {v2, v0, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v1, v1, Lo5/e8;->d:Landroid/widget/RelativeLayout;

    .line 11
    invoke-static {v1, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mTouchUpAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder$1;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mTouchUpAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public alignItem(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;->c(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v0, v0, Lo5/e8;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;->d(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 4
    sget-object v2, Lu3/b;->b:Lu3/b;

    invoke-static {v2}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    const/16 v3, 0xb

    const/16 v4, 0x9

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;->c(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;->c(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;)I

    move-result v2

    const/16 v6, 0xb4

    if-ne v2, v6, :cond_4

    :cond_1
    sub-int/2addr v1, v5

    .line 5
    rem-int/2addr p1, v1

    if-eqz p1, :cond_3

    if-eq p1, v5, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 8
    :cond_4
    rem-int/2addr p1, v1

    if-eqz p1, :cond_7

    if-eq p1, v5, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    goto :goto_0

    .line 9
    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_6
    const/16 p1, 0xe

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 11
    :cond_7
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object p0, p0, Lo5/e8;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mTouchUpAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mTouchUpAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mTouchDownAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mTouchDownAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mRestoreAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mRestoreAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v0, v0, Lo5/e8;->f:Landroid/widget/RelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v2, v2, Lo5/e8;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;->a(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mItem:Ln5/y;

    invoke-virtual {v3}, Ln5/y;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f12060f

    goto :goto_0

    :cond_0
    const v3, 0x7f12060e

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;->a(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1201f8

    .line 2
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v0, v0, Lo5/e8;->b:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v0, v0, Lo5/e8;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setScaleY(F)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v0, v0, Lo5/e8;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mItem:Ln5/y;

    invoke-virtual {v2}, Ln5/y;->d()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v0, v0, Lo5/e8;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v0, v0, Lo5/e8;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setScaleY(F)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v0, v0, Lo5/e8;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mItem:Ln5/y;

    invoke-virtual {v2}, Ln5/y;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v0, v0, Lo5/e8;->g:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mItem:Ln5/y;

    invoke-virtual {p0}, Ln5/y;->d()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setActivated(Z)V

    return-void
.end method

.method public updateItem(Ln5/y;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mItem:Ln5/y;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object v0, v0, Lo5/e8;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ln5/y;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object p1, p1, Lo5/e8;->b:Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object p1, p1, Lo5/e8;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mItem:Ln5/y;

    invoke-virtual {v0}, Ln5/y;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object p1, p1, Lo5/e8;->d:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mViewBinding:Lo5/e8;

    iget-object p1, p1, Lo5/e8;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->mItem:Ln5/y;

    invoke-virtual {v0}, Ln5/y;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->reset()V

    return-void
.end method
