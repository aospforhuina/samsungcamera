.class public Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "PreviewOverlayLayerView.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerContract$View;
.implements Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;
.implements Lcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;


# static fields
.field private static final EMPTY_RECT:Landroid/graphics/Rect;

.field private static final GUIDE_LINE_LINE_DIVIDE_FACTOR:I = 0x3

.field private static final MULTI_AF_ALPHA:F = 0.65f

.field private static final TAG:Ljava/lang/String; = "PreviewOverlayLayerView"


# instance fields
.field private mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

.field private mIsInclinometerEnable:Z

.field private mIsLevelMeterEnable:Z

.field private mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerLayoutUpdater;

.field private mMultiAfView:Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;

.field private mOrientation:I

.field private mPalmRectView:Lcom/sec/android/app/camera/layer/previewoverlay/PalmRectView;

.field private mPresenter:Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;

.field private mPrevQrRect:Landroid/graphics/RectF;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mQrRectAnimator:Landroid/animation/ValueAnimator;

.field private mTouchAreaBottomLimit:I

.field private mTranslateMatrix:Landroid/graphics/Matrix;

.field private mViewBinding:Lo5/y0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->EMPTY_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/MatrixFactory;->create()Landroid/graphics/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mTranslateMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mIsInclinometerEnable:Z

    .line 4
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mIsLevelMeterEnable:Z

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "inflate : Start["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreviewOverlayLayerView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/MatrixFactory;->create()Landroid/graphics/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mTranslateMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mIsInclinometerEnable:Z

    .line 9
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mIsLevelMeterEnable:Z

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "inflate : Start["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreviewOverlayLayerView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->lambda$showQrRectView$14(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->lambda$hideGuideLineView$3(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->lambda$initialize$4()V

    return-void
.end method

.method public static synthetic e(ILcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->lambda$onOrientationChanged$6(ILcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;FFFLandroid/graphics/Rect;Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->lambda$updateAccelerationValue$8(FFFLandroid/graphics/Rect;Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->lambda$enableInclinometerView$0(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;)V

    return-void
.end method

.method public static synthetic h(Landroid/graphics/Rect;Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->lambda$updateLayoutBounds$9(Landroid/graphics/Rect;Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->lambda$enableLevelMeterView$1(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;)V

    return-void
.end method

.method private inflateGuideLineView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->l:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v1, v1, Lo5/y0;->l:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;->setViewBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;->getInclinometer()Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mOrientation:I

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->lambda$showQrRectView$13(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->lambda$onOrientationChanged$5()V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;FFFLcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->lambda$updateAccelerationValue$7(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;FFFLcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;)V

    return-void
.end method

.method private static synthetic lambda$enableInclinometerView$0(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;->getInclinometer()Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->hide()V

    return-void
.end method

.method private static synthetic lambda$enableLevelMeterView$1(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;->getLevelMeter()Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->hideLevelMeter()V

    return-void
.end method

.method private synthetic lambda$enableMultiAfView$2(Landroid/graphics/Rect;ZLcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->reset()V

    .line 2
    invoke-virtual {p3, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->updateLayout(Landroid/graphics/Rect;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;->getInclinometer()Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3f266666    # 0.65f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p3, p0}, Landroid/widget/GridLayout;->setAlpha(F)V

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/16 p0, 0x8

    .line 4
    :goto_1
    invoke-virtual {p3, p0}, Landroid/widget/GridLayout;->setVisibility(I)V

    return-void
.end method

.method private static synthetic lambda$hideGuideLineView$3(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$initialize$4()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mPresenter:Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;->onBottomBackgroundChanged()V

    return-void
.end method

.method private synthetic lambda$moveQrRectView$11(FFFFFFFFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->u:Landroid/widget/ImageView;

    invoke-virtual {p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr p2, v1

    add-float/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p1, p1, Lo5/y0;->u:Landroid/widget/ImageView;

    invoke-virtual {p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p4, p2

    add-float/2addr p3, p4

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p1, p1, Lo5/y0;->u:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 4
    invoke-virtual {p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p6, p2

    add-float/2addr p5, p6

    float-to-int p2, p5

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 5
    invoke-virtual {p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p8, p2

    add-float/2addr p7, p8

    float-to-int p2, p7

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->u:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$onOrientationChanged$5()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerLayoutUpdater;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateAllViews()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->transformAeAfTouchBoundaryTablet(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->updateTouchBoundary(Landroid/graphics/Rect;)V

    return-void
.end method

.method private static synthetic lambda$onOrientationChanged$6(ILcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;)V
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;->getInclinometer()Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->onOrientationChanged(I)V

    return-void
.end method

.method private synthetic lambda$showQrRectView$12(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->u:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->u:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$showQrRectView$13(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->u:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->u:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$showQrRectView$14(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->u:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private static synthetic lambda$updateAccelerationValue$7(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;FFFLcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;->getInclinometer()Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->isVisibleCondition(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3f266666    # 0.65f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p4, p0}, Landroid/widget/GridLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$updateAccelerationValue$8(FFFLandroid/graphics/Rect;Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mIsInclinometerEnable:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p5}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;->getInclinometer()Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->updateAccelerationValue(FFF)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mMultiAfView:Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/layer/previewoverlay/j;

    invoke-direct {v1, p5, p1, p2, p3}, Lcom/sec/android/app/camera/layer/previewoverlay/j;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;FFF)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mIsLevelMeterEnable:Z

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p5}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;->getLevelMeter()Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p4}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->updateAccelerationValue(FFLandroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$updateLayoutBounds$9(Landroid/graphics/Rect;Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->updateLayout(Landroid/graphics/Rect;)V

    return-void
.end method

.method private synthetic lambda$updateMultiAfView$10([BLcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->g:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->isFaceRectVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->hide()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/widget/GridLayout;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 4
    invoke-virtual {p2, p0}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 5
    :cond_1
    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->update([B)V

    :goto_0
    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;FFFFFFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->lambda$moveQrRectView$11(FFFFFFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private moveQrRectView(Landroid/graphics/RectF;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v3

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v5

    .line 3
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v4, v0, v3

    .line 4
    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float v6, v0, v5

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v7, v0

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v9, v0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float v8, v0, v7

    .line 8
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float v10, v0, v9

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mQrRectAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 10
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 11
    new-instance v1, Lu4/f;

    invoke-direct {v1}, Lu4/f;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    new-instance v11, Lcom/sec/android/app/camera/layer/previewoverlay/r;

    move-object v1, v11

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/app/camera/layer/previewoverlay/r;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;FFFFFFFF)V

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14
    new-instance v1, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView$1;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 16
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mQrRectAnimator:Landroid/animation/ValueAnimator;

    .line 17
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->u:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic n(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;Landroid/graphics/Rect;ZLcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->lambda$enableMultiAfView$2(Landroid/graphics/Rect;ZLcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->lambda$showQrRectView$12(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;[BLcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->lambda$updateMultiAfView$10([BLcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;)V

    return-void
.end method

.method static bridge synthetic q(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mPrevQrRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method private setQrRectView(Landroid/graphics/RectF;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 3
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v1, v1, Lo5/y0;->u:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->u:Landroid/widget/ImageView;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->u:Landroid/widget/ImageView;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->u:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showQrRectView()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v2, Lu4/b;

    invoke-direct {v2}, Lu4/b;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v2, Lcom/sec/android/app/camera/layer/previewoverlay/q;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/q;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    .line 5
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    new-instance v3, Lu4/d;

    invoke-direct {v3}, Lu4/d;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    new-instance v3, Lcom/sec/android/app/camera/layer/previewoverlay/p;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/p;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    .line 9
    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0086

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    new-instance v3, Lu4/d;

    invoke-direct {v3}, Lu4/d;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    new-instance v3, Lcom/sec/android/app/camera/layer/previewoverlay/h;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/h;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 14
    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 15
    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 16
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f866666    # 1.05f
    .end array-data

    :array_1
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private transformAeAfTouchBoundaryTablet(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 2
    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isPortrait(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lu3/g;->b:Lu3/g;

    invoke-static {v2}, Lu3/d;->a(Lu3/g;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 4
    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isPortraitReverse(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-direct {v0, v2, v1, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 7
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 8
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, v0, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090004

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 10
    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    new-instance p0, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 12
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 13
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->clear()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->b:Lcom/sec/android/app/camera/layer/previewoverlay/BottomBackground;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/BottomBackground;->setBottomBackgroundChangeListener(Lcom/sec/android/app/camera/layer/previewoverlay/BottomBackground$BottomBackgroundChangeListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->g:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->clear()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->s:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->clear()V

    .line 5
    iput-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mTranslateMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public enableBottomBackground(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->b:Lcom/sec/android/app/camera/layer/previewoverlay/BottomBackground;

    if-eqz p1, :cond_1

    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public enableFaceRectView(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableFaceRectView : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewOverlayLayerView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->resetFaceRectView()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->k:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public enableInclinometerView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mIsInclinometerEnable:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/layer/previewoverlay/n;->a:Lcom/sec/android/app/camera/layer/previewoverlay/n;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public enableLevelMeterView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mIsLevelMeterEnable:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/layer/previewoverlay/o;->a:Lcom/sec/android/app/camera/layer/previewoverlay/o;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public enableMultiAfView(ZLandroid/graphics/Rect;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableMultiAfView enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewOverlayLayerView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mMultiAfView:Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->q:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mMultiAfView:Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;

    .line 4
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;->initialize()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mMultiAfView:Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/layer/previewoverlay/x;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/x;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;Landroid/graphics/Rect;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getFaceCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->g:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->getFaceCount()I

    move-result p0

    return p0
.end method

.method public hideAeAfView()V
    .locals 2

    const-string v0, "PreviewOverlayLayerView"

    const-string v1, "hideAeAfView"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->hideAeAfGroup(Z)V

    return-void
.end method

.method public hideFaceRectView()V
    .locals 2

    const-string v0, "PreviewOverlayLayerView"

    const-string v1, "hideFaceRectView"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->g:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->hideFaceRect(Z)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->s:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->hideFaceRect(Z)V

    return-void
.end method

.method public hideGuideLineView()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/layer/previewoverlay/m;->a:Lcom/sec/android/app/camera/layer/previewoverlay/m;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public hideMultiAfView()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mMultiAfView:Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/layer/previewoverlay/k;->a:Lcom/sec/android/app/camera/layer/previewoverlay/k;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public hidePalmRect()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mPalmRectView:Lcom/sec/android/app/camera/layer/previewoverlay/PalmRectView;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/layer/previewoverlay/l;->a:Lcom/sec/android/app/camera/layer/previewoverlay/l;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public hideQrRectView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->u:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->u:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mPrevQrRect:Landroid/graphics/RectF;

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mPresenter:Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v1, v1, Lo5/y0;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;->createAeAfPresenter(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract$View;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->initialize()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->b:Lcom/sec/android/app/camera/layer/previewoverlay/BottomBackground;

    new-instance v1, Lcom/sec/android/app/camera/layer/previewoverlay/s;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/s;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/BottomBackground;->setBottomBackgroundChangeListener(Lcom/sec/android/app/camera/layer/previewoverlay/BottomBackground$BottomBackgroundChangeListener;)V

    .line 4
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    invoke-static {v0, v1}, Lv5/a;->d(Landroid/content/Context;Landroidx/viewbinding/ViewBinding;)Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerLayoutUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerLayoutUpdater;

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->setOrientation(I)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerLayoutUpdater;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateAllViews()V

    :cond_0
    return-void
.end method

.method public onLayerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mOrientation:I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerLayoutUpdater;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->setOrientation(I)V

    .line 4
    new-instance v0, Lcom/sec/android/app/camera/layer/previewoverlay/t;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/t;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->onOrientationChanged(I)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->g:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->onOrientationChanged(I)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->s:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->onOrientationChanged(I)V

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/layer/previewoverlay/u;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/u;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public refreshAeAfMovableBoundary(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->refreshAeAfMovableBoundary(Landroid/graphics/Rect;)V

    return-void
.end method

.method public refreshAeAfProperty(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->refreshAeAfProperty(Ljava/util/EnumSet;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    sget-object p1, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->EMPTY_RECT:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->refreshAeAfMovableBoundary(Landroid/graphics/Rect;)V

    return-void
.end method

.method public requestAeAfTouch(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public resetBottomBackground(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->b:Lcom/sec/android/app/camera/layer/previewoverlay/BottomBackground;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/BottomBackground;->resetBottomBackground(Z)V

    return-void
.end method

.method public resetFaceRectView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->g:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->resetFaceRect()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->s:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->resetFaceRect()V

    return-void
.end method

.method public setAeAfTouchEventListener(Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager$AeAfTouchEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->setAeAfTouchEventListener(Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager$AeAfTouchEventListener;)V

    return-void
.end method

.method public setBottomBackgroundColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->b:Lcom/sec/android/app/camera/layer/previewoverlay/BottomBackground;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setBottomBackgroundPosition(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerLayoutUpdater;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerLayoutUpdater;->setBottomBackgroundPosition(II)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->b:Lcom/sec/android/app/camera/layer/previewoverlay/BottomBackground;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/layer/previewoverlay/BottomBackground;->startBottomBackgroundAnimation(II)V

    :goto_0
    return-void
.end method

.method public setBottomBackgroundPosition(III)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->b:Lcom/sec/android/app/camera/layer/previewoverlay/BottomBackground;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, p3, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/BottomBackground;->setBackgroundColorWithAnimation(II)V

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->setBottomBackgroundPosition(II)V

    return-void
.end method

.method public setFaceRectAutoHideEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->g:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->setFaceRectAutoHideEnabled(Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->s:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->setFaceRectAutoHideEnabled(Z)V

    return-void
.end method

.method public setFaceRectColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->g:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->setFaceRectColor(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->g:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPetFaceRectColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->s:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->setFaceRectColor(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->s:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->setPresenter(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mPresenter:Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;

    return-void
.end method

.method public setTouchAreaBottomLimit(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mTouchAreaBottomLimit:I

    return-void
.end method

.method public setTranslateMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mTranslateMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public setViewBinding(Landroidx/databinding/ViewDataBinding;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflate : End["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewOverlayLayerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    check-cast p1, Lo5/y0;

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    return-void
.end method

.method public showAeAfLockedIndicator()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->showAeAfLockedIndicator()V

    return-void
.end method

.method public showEvSlider()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->showEvSlider()V

    return-void
.end method

.method public updateAccelerationValue(FFFLandroid/graphics/Rect;)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v7, Lcom/sec/android/app/camera/layer/previewoverlay/w;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/layer/previewoverlay/w;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;FFFLandroid/graphics/Rect;)V

    invoke-virtual {v0, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateAeAfTouchBoundary(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->transformAeAfTouchBoundaryTablet(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->updateTouchBoundary(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mTouchAreaBottomLimit:I

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v1, v1, Lo5/y0;->w:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v1, v1, Lo5/y0;->b:Lcom/sec/android/app/camera/layer/previewoverlay/BottomBackground;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v1, v1, Lo5/y0;->b:Lcom/sec/android/app/camera/layer/previewoverlay/BottomBackground;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v2, v2, Lo5/y0;->x:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 7
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v1, p1, v0}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create(IIII)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->updateTouchBoundary(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public updateDebugInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object p0, p0, Lo5/y0;->f:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public updateFaceRect(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->g:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mTranslateMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->updateFaceRect(Ljava/util/Map;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public updateGuideLineSize(Landroid/graphics/Rect;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->inflateGuideLineView()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 7
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_2

    .line 10
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 12
    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;->getLevelMeter()Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 15
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;->getLevelMeter()Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;->getLevelMeter()Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->reset()V

    .line 17
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;->getInclinometer()Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 20
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;->getInclinometer()Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mGuideLineView:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;->getInclinometer()Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->reset()V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateLayoutBounds(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mPreviewRect:Landroid/graphics/Rect;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->g:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->updateFaceRectDrawingArea(Landroid/graphics/Rect;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->s:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->updateFaceRectDrawingArea(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->resetFaceRectView()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mMultiAfView:Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/layer/previewoverlay/v;

    invoke-direct {v1, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/v;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->hideMultiAfView()V

    .line 7
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->setTouchAreaBottomLimit(I)V

    return-void
.end method

.method public updateMultiAfView([B)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mMultiAfView:Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/layer/previewoverlay/i;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/i;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;[B)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updatePalmRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mPalmRectView:Lcom/sec/android/app/camera/layer/previewoverlay/PalmRectView;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->r:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/previewoverlay/PalmRectView;

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mPalmRectView:Lcom/sec/android/app/camera/layer/previewoverlay/PalmRectView;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->resetFaceRectView()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mPalmRectView:Lcom/sec/android/app/camera/layer/previewoverlay/PalmRectView;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mTranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/PalmRectView;->updatePalmRect(Landroid/graphics/Rect;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public updatePetFaceRect(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lo5/y0;

    iget-object v0, v0, Lo5/y0;->s:Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mTranslateMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->updateFaceRect(Ljava/util/Map;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public updateQrRectView(Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mPrevQrRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->mPrevQrRect:Landroid/graphics/RectF;

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->setQrRectView(Landroid/graphics/RectF;)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->showQrRectView()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->moveQrRectView(Landroid/graphics/RectF;)V

    :goto_0
    return-void
.end method
