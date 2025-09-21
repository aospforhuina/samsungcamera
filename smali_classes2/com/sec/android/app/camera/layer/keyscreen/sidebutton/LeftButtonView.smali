.class public Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;
.super Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/AbstractSideButtonView;
.source "LeftButtonView.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$View;
.implements Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/QuickViewThumbnailLoader$QuickViewThumbnailLoadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$MainHandler;
    }
.end annotation


# static fields
.field private static final MSG_CLEAR_UNUSED_QUICK_VIEW_IMAGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LeftButtonView"

.field private static final THUMBNAIL_IMAGE_BUFFER:I = 0xa


# instance fields
.field private final TIMEOUT_CLEAR_UNUSED_QUICK_VIEW_IMAGE:I

.field private mAttachMode:Z

.field private mCenterButtonState:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

.field private mFrameImageButton:Landroid/widget/ImageView;

.field private mHandler:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$MainHandler;

.field private mIndexNewThumbnail:I

.field private mIsPause:Z

.field private mIsPreloadThumbnailDisplayed:Z

.field private mLatestThumbnail:Landroid/graphics/Bitmap;

.field private final mOnTouchListenerForRippleEffect:Landroid/view/View$OnTouchListener;

.field private mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;

.field private mQuickViewThumbnailLoader:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/QuickViewThumbnailLoader;

.field private mSnapshotButtonAnimator:Landroid/animation/ValueAnimator;

.field private final mThumbnailImage:[Landroid/widget/ImageView;

.field private mViewBinding:Lo5/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/AbstractSideButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b00ba

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->TIMEOUT_CLEAR_UNUSED_QUICK_VIEW_IMAGE:I

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mLatestThumbnail:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mAttachMode:Z

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/widget/ImageView;

    .line 5
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    .line 6
    iput p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mIndexNewThumbnail:I

    .line 7
    iput-boolean p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mIsPause:Z

    .line 8
    new-instance p2, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$MainHandler;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$MainHandler;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;)V

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mHandler:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$MainHandler;

    .line 9
    new-instance p2, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/h;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/h;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;)V

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mOnTouchListenerForRippleEffect:Landroid/view/View$OnTouchListener;

    .line 10
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/AbstractSideButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b00ba

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->TIMEOUT_CLEAR_UNUSED_QUICK_VIEW_IMAGE:I

    const/4 p2, 0x0

    .line 13
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mLatestThumbnail:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    .line 14
    iput-boolean p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mAttachMode:Z

    const/16 p3, 0xa

    new-array p3, p3, [Landroid/widget/ImageView;

    .line 15
    iput-object p3, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    .line 16
    iput p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mIndexNewThumbnail:I

    .line 17
    iput-boolean p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mIsPause:Z

    .line 18
    new-instance p2, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$MainHandler;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$MainHandler;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;)V

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mHandler:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$MainHandler;

    .line 19
    new-instance p2, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/h;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/h;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;)V

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mOnTouchListenerForRippleEffect:Landroid/view/View$OnTouchListener;

    .line 20
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->lambda$updateQuickViewThumbnail$6()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->lambda$startQuickViewTranslationAnimation$8(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

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

.method private clearQuickViewThumbnail()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clearUnusedQuickViewThumbnail(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->clearQuickViewThumbnail()V

    return-void
.end method

.method private disableButtonMoveAnimation()V
    .locals 2

    .line 1
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x3

    .line 5
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->lambda$saveLatestThumbnail$3(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic f(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->lambda$updateButton$4(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->lambda$startQuickViewAlphaAnimation$7(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getTranslationBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 4
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v5, v7, v8, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 6
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v2

    const/high16 v4, 0x42b40000    # 90.0f

    cmpl-float v2, v2, v4

    const/4 v4, 0x0

    if-nez v2, :cond_0

    neg-float p0, p1

    .line 10
    invoke-virtual {v1, p2, v4, p0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result p0

    const/high16 v2, -0x3d4c0000    # -90.0f

    cmpl-float p0, p0, v2

    if-nez p0, :cond_1

    .line 12
    invoke-virtual {v1, p2, v4, p1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v1, p2, p1, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-object v0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->lambda$initialize$2(Landroid/view/View;)V

    return-void
.end method

.method private handlePauseButtonClick()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mIsPause:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;->onResumeButtonClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v0, v0, Lo5/x;->a:Landroid/widget/ImageButton;

    const v1, 0x7f080501

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mIsPause:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;->onPauseButtonClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v0, v0, Lo5/x;->a:Landroid/widget/ImageButton;

    const v1, 0x7f080441

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mIsPause:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->lambda$updateQuickViewThumbnail$5(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lo5/x;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/x;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->lambda$initialize$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic l(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->clearUnusedQuickViewThumbnail(I)V

    return-void
.end method

.method private synthetic lambda$initialize$1(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;->onQuickViewButtonClick()V

    return-void
.end method

.method private synthetic lambda$initialize$2(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;->onSnapShotButtonClick()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object p0, p0, Lo5/x;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object p0, p0, Lo5/x;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    :goto_0
    return p2
.end method

.method private synthetic lambda$saveLatestThumbnail$3(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;->onSaveLatestThumbnailRequested(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static synthetic lambda$startQuickViewAlphaAnimation$7(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$startQuickViewTranslationAnimation$8(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p3, v0

    .line 2
    invoke-direct {p0, p3, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->getTranslationBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static synthetic lambda$updateButton$4(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 2
    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$updateQuickViewThumbnail$5(Landroid/graphics/Bitmap;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mQuickViewThumbnailLoader:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/QuickViewThumbnailLoader;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/QuickViewThumbnailLoader;->loadQuickViewThumbnail(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private synthetic lambda$updateQuickViewThumbnail$6()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mQuickViewThumbnailLoader:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/QuickViewThumbnailLoader;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/QuickViewThumbnailLoader;->loadQuickViewThumbnail()V

    return-void
.end method

.method private startQuickViewAlphaAnimation(ILandroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    aget-object p1, v0, p1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->updateThumbnailBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 4
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    new-instance v0, Lu4/d;

    invoke-direct {v0}, Lu4/d;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/d;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/d;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    new-instance p1, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$3;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$3;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startQuickViewTranslationAnimation(ILandroid/graphics/Bitmap;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    aget-object p1, v0, p1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->updateThumbnailBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    new-instance v1, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/e;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/e;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    new-instance p1, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$4;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$4;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateThumbnailBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object p0, p0, Lo5/x;->f:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    return-void
.end method


# virtual methods
.method public cancelAllAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mSnapshotButtonAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mQuickViewThumbnailLoader:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/QuickViewThumbnailLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/QuickViewThumbnailLoader;->setQuickViewThumbnailLoadListener(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/QuickViewThumbnailLoader$QuickViewThumbnailLoadListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mQuickViewThumbnailLoader:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/QuickViewThumbnailLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/QuickViewThumbnailLoader;->release()V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mHandler:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$MainHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected getBackgroundView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object p0, p0, Lo5/x;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method protected getForegroundView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object p0, p0, Lo5/x;->a:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public getImageThumbnailView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    iget p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mIndexNewThumbnail:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public initialize()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mAttachMode:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;

    invoke-interface {v1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;->getQuickViewThumbnailLoader()Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/QuickViewThumbnailLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mQuickViewThumbnailLoader:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/QuickViewThumbnailLoader;

    .line 4
    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/QuickViewThumbnailLoader;->setQuickViewThumbnailLoadListener(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/QuickViewThumbnailLoader$QuickViewThumbnailLoadListener;)V

    .line 5
    iput v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mIndexNewThumbnail:I

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;

    invoke-interface {v1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;->isResizableMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lu3/b;->b:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v2, v2, Lo5/x;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v3, -0x1

    .line 9
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 10
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 11
    iget-object v4, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v4, v4, Lo5/x;->b:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v2, v2, Lo5/x;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 13
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 14
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 15
    iget-object v4, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v4, v4, Lo5/x;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v2, v2, Lo5/x;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 17
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 18
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 19
    iget-object v4, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v4, v4, Lo5/x;->f:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v2, v2, Lo5/x;->a:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 21
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 22
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 23
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v3, v3, Lo5/x;->a:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 25
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v2, v2, Lo5/x;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 26
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 27
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 28
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v3, v3, Lo5/x;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v2, v2, Lo5/x;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 30
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 31
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 32
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v3, v3, Lo5/x;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    move v2, v0

    .line 33
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 34
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v2

    .line 35
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    aget-object v3, v3, v2

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 36
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v3, v3, Lo5/x;->c:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    aget-object v4, v4, v2

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x11

    invoke-direct {v5, v1, v1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    aget-object v3, v3, v2

    new-instance v4, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/g;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/g;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mOnTouchListenerForRippleEffect:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 39
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 40
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    aget-object v3, v3, v2

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v0, v0, Lo5/x;->a:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/f;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/f;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v0, v0, Lo5/x;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v0, v0, Lo5/x;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mOnTouchListenerForRippleEffect:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 44
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1204d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v1, v1, Lo5/x;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v0, v0, Lo5/x;->c:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$1;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;

    invoke-virtual {v0, v1}, Lo5/x;->f(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;)V

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/AbstractSideButtonView;->enableButtonMoveAnimation()V

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;->onInitialize()V

    .line 50
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/AbstractSideButtonView;->setInitialized()V

    return-void
.end method

.method protected isSwitchCameraButtonVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onQuickViewThumbnailEmpty()V
    .locals 3

    const-string v0, "LeftButtonView"

    const-string v1, "onQuickViewThumbnailEmpty"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->clearQuickViewThumbnail()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v0, v0, Lo5/x;->f:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mIndexNewThumbnail:I

    aget-object v0, v0, v1

    const v1, 0x7f080507

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mIndexNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mLatestThumbnail:Landroid/graphics/Bitmap;

    .line 7
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;

    invoke-interface {v2}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;->onLatestThumbnailEmpty()V

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p0, "Update - QuickViewThumbnail"

    .line 9
    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    const-string p0, "UpdateQuickViewThumbnail"

    .line 10
    invoke-static {p0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    return-void
.end method

.method public onQuickViewThumbnailLoaded(Landroid/graphics/Bitmap;Z)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mLatestThumbnail:Landroid/graphics/Bitmap;

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mIndexNewThumbnail:I

    add-int/lit8 v1, v0, 0x1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    array-length v3, v2

    rem-int/2addr v1, v3

    iput v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mIndexNewThumbnail:I

    .line 4
    iget-boolean v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mIsPreloadThumbnailDisplayed:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 5
    iput-boolean v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mIsPreloadThumbnailDisplayed:Z

    .line 6
    aget-object p2, v2, v0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->updateThumbnailBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->startQuickViewTranslationAnimation(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->startQuickViewAlphaAnimation(ILandroid/graphics/Bitmap;)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mHandler:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$MainHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mHandler:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$MainHandler;

    invoke-static {p1, p2, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p2

    iget p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->TIMEOUT_CLEAR_UNUSED_QUICK_VIEW_IMAGE:I

    int-to-long v0, p0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public preloadLatestThumbnail(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "LeftButtonView"

    const-string v1, "preloadLatestThumbnail"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070879

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 3
    invoke-static {p1, v1, v0}, Lcom/sec/android/app/camera/util/ImageUtils;->getRoundedBitmapUsingBitmapShader(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mIndexNewThumbnail:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->updateThumbnailBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mIsPreloadThumbnailDisplayed:Z

    return-void
.end method

.method public registerAssistantMenu()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;->onRegisterAssistantMenu()V

    return-void
.end method

.method public saveLatestThumbnail()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mLatestThumbnail:Landroid/graphics/Bitmap;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/l;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/l;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setAttachMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mAttachMode:Z

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->setPresenter(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonContract$Presenter;

    return-void
.end method

.method public setToolTipText(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object p0, p0, Lo5/x;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateButton(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/AbstractSideButtonView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/AbstractSideButtonView;->isRecordingMode()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/AbstractSideButtonView;->enableButtonMoveAnimation()V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mSnapshotButtonAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    .line 6
    sget-object v0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$5;->$SwitchMap$com$sec$android$app$camera$interfaces$KeyScreenLayerManager$CenterButtonState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq p1, v0, :cond_4

    if-eq p1, v1, :cond_3

    return-void

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v0, p1, Lo5/x;->a:Landroid/widget/ImageButton;

    .line 8
    iget-object v3, p1, Lo5/x;->c:Landroid/widget/FrameLayout;

    .line 9
    iget-object p1, p1, Lo5/x;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mViewBinding:Lo5/x;

    iget-object v0, p1, Lo5/x;->c:Landroid/widget/FrameLayout;

    .line 11
    iget-object v3, p1, Lo5/x;->a:Landroid/widget/ImageButton;

    .line 12
    iget-object p1, p1, Lo5/x;->f:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_5

    return-void

    .line 14
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v4

    if-gez p1, :cond_6

    .line 15
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    new-array p1, v1, [F

    .line 16
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mSnapshotButtonAnimator:Landroid/animation/ValueAnimator;

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 18
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mSnapshotButtonAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lu4/f;

    invoke-direct {v1}, Lu4/f;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 19
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mSnapshotButtonAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/c;

    invoke-direct {v1, v0, v3}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/c;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 20
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mSnapshotButtonAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$2;

    invoke-direct {v1, p0, v3, v0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView$2;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 21
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mSnapshotButtonAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateFunModeLayout(ZI)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07019b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070057

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 4
    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateQuickViewThumbnail()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mQuickViewThumbnailLoader:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/QuickViewThumbnailLoader;

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/i;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/i;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateQuickViewThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 1

    if-nez p1, :cond_1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->clearQuickViewThumbnail()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/j;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/j;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->mQuickViewThumbnailLoader:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/QuickViewThumbnailLoader;

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/k;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
