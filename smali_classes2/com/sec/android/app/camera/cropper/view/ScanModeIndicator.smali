.class public Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;
.super Landroid/widget/RelativeLayout;
.source "ScanModeIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$SelectButtonEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScanModeIndicator"


# instance fields
.field private mDarkMode:Z

.field private mExtractTextView:Landroid/widget/TextView;

.field private final mIsDeviceTablet:Z

.field private mNewBadge:Landroid/widget/ImageView;

.field private mScanTextView:Landroid/widget/TextView;

.field private mSelectBg:Landroid/widget/ImageView;

.field private mSelectBgMargin:I

.field private mSelectButtonEventListener:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$SelectButtonEventListener;

.field private mSelectIndicatorLayout:Landroid/widget/RelativeLayout;

.field private mTranslateButtonAnimatorSet:Landroid/animation/AnimatorSet;

.field private mainView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mTranslateButtonAnimatorSet:Landroid/animation/AnimatorSet;

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->initView(Landroid/content/Context;)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->isDeviceTablet()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mIsDeviceTablet:Z

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->lambda$translateButton$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->setSelectBgWidth(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectBg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectBgMargin:I

    return p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$SelectButtonEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectButtonEventListener:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$SelectButtonEventListener;

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->lambda$translateButton$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mTranslateButtonAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/cropper/view/o;->a:Lcom/sec/android/app/camera/cropper/view/o;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->lambda$translateButton$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->lambda$translateButton$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->onTouchScaleAnimation(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private getExtractTextStringWidth(Ljava/lang/String;F)F
    .locals 2

    .line 1
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 2
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    const/high16 p2, 0x40000000    # 2.0f

    float-to-double v0, p2

    add-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method private getRobotoBold()Landroid/graphics/Typeface;
    .locals 1

    const-string p0, "sec-bold"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private getRobotoMedium()Landroid/graphics/Typeface;
    .locals 1

    const-string p0, "sec-medium"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private getRobotoRegular()Landroid/graphics/Typeface;
    .locals 1

    const-string p0, "sec"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/sec/android/app/camera/cropper/R$layout;->scan_mode_indicator:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mainView:Landroid/view/View;

    .line 2
    sget v0, Lcom/sec/android/app/camera/cropper/R$id;->select_indicator_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectIndicatorLayout:Landroid/widget/RelativeLayout;

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mainView:Landroid/view/View;

    sget v0, Lcom/sec/android/app/camera/cropper/R$id;->select_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectBg:Landroid/widget/ImageView;

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mainView:Landroid/view/View;

    sget v0, Lcom/sec/android/app/camera/cropper/R$id;->scan_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mainView:Landroid/view/View;

    sget v0, Lcom/sec/android/app/camera/cropper/R$id;->extract_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mainView:Landroid/view/View;

    sget v0, Lcom/sec/android/app/camera/cropper/R$id;->new_badge:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mNewBadge:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/sec/android/app/camera/cropper/R$dimen;->scan_mode_indicator_select_background_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectBgMargin:I

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/cropper/R$string;->button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/sec/android/app/camera/cropper/view/m;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/cropper/view/m;-><init>(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/sec/android/app/camera/cropper/view/l;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/cropper/view/l;-><init>(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/sec/android/app/camera/cropper/view/n;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/cropper/view/n;-><init>(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 13
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/sec/android/app/camera/cropper/view/n;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/cropper/view/n;-><init>(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isDarkMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mDarkMode:Z

    return p0
.end method

.method private isDeviceTablet()Z
    .locals 1

    const-string p0, "ro.build.characteristics"

    .line 1
    invoke-static {p0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "tablet"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTextViewClickAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectIndicatorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->isTextViewClickAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "7050"

    const-string v0, "0"

    .line 2
    invoke-static {p1, v0}, Lcom/sec/android/app/camera/cropper/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->updateTextCropMode(Z)V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->isTextViewClickAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "7050"

    const-string v0, "1"

    .line 2
    invoke-static {p1, v0}, Lcom/sec/android/app/camera/cropper/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->updateTextCropMode(Z)V

    return-void
.end method

.method private synthetic lambda$translateButton$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectBg:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectBgMargin:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setX(F)V

    return-void
.end method

.method private synthetic lambda$translateButton$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->setSelectBgWidth(I)V

    return-void
.end method

.method private synthetic lambda$translateButton$4(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$translateButton$5(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private onTouchScaleAnimation(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const v0, 0x3f147ae1    # 0.58f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectIndicatorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const p1, 0x3f666666    # 0.9f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectIndicatorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private refreshExtractModeContentDescription()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mNewBadge:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/cropper/R$string;->button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/cropper/R$string;->new_content_available:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setBackgroundResource()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->isDarkMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectIndicatorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/cropper/R$drawable;->scan_mode_indicator_dark_background:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectBg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectIndicatorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/cropper/R$drawable;->scan_mode_indicator_light_background:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectBg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private setDarkMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mDarkMode:Z

    return-void
.end method

.method private setSelectBgWidth(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectBgMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectBg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method private setSelectIndicatorLayoutWidth(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/cropper/R$dimen;->scan_mode_indicator_group_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectIndicatorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectIndicatorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectIndicatorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method private setSelectedTextView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method private showSelectButton()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    const/16 v2, 0x15

    const/16 v3, 0x14

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectBg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/cropper/R$color;->scan_mode_indicator_select_font_color:I

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/cropper/R$color;->scan_mode_indicator_normal_font_color:I

    :goto_2
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/cropper/R$color;->scan_mode_indicator_select_font_color:I

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/cropper/R$color;->scan_mode_indicator_normal_font_color:I

    :goto_3
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-boolean v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mIsDeviceTablet:Z

    if-eqz v0, :cond_7

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_4

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_5

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_7
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0, v0}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 12
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 13
    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    goto :goto_6

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    :goto_6
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->setSelectBgWidth(I)V

    .line 14
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->setSelectIndicatorLayoutWidth(I)V

    .line 15
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectIndicatorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectIndicatorLayout:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 18
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private translateButton()V
    .locals 14

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v1}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 3
    iget-object v3, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getX()F

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 4
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getX()F

    move-result v2

    :goto_1
    const/4 v4, 0x2

    new-array v5, v4, [F

    aput v3, v5, v1

    const/4 v3, 0x1

    aput v2, v5, v3

    .line 5
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/app/camera/cropper/R$integer;->animation_duration_scan_mode_indicator_button_translate:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v7, v5

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    new-instance v5, Lcom/sec/android/app/camera/cropper/view/j;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/cropper/view/j;-><init>(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    iget-object v5, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    :goto_2
    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 10
    iget-object v7, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    goto :goto_3

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    :goto_3
    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    new-array v8, v4, [I

    aput v5, v8, v1

    aput v7, v8, v3

    .line 11
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 12
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    new-instance v7, Lcom/sec/android/app/camera/cropper/view/k;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/cropper/view/k;-><init>(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15
    iget-boolean v7, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mIsDeviceTablet:Z

    if-eqz v7, :cond_6

    .line 16
    iget-object v7, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v8

    goto :goto_4

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v8

    :goto_4
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    iget-object v7, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v8

    goto :goto_5

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v8

    :goto_5
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_8

    .line 18
    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->getRobotoBold()Landroid/graphics/Typeface;

    move-result-object v8

    goto :goto_6

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v8

    :goto_6
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    iget-object v7, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->getRobotoBold()Landroid/graphics/Typeface;

    move-result-object v8

    goto :goto_7

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v8

    :goto_7
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_8
    new-array v7, v4, [I

    .line 20
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/app/camera/cropper/R$color;->scan_mode_indicator_normal_font_color:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    aput v8, v7, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v11, Lcom/sec/android/app/camera/cropper/R$color;->scan_mode_indicator_select_font_color:I

    invoke-virtual {v8, v11, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    aput v8, v7, v3

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 21
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-long v12, v8

    invoke-virtual {v7, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 22
    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 23
    new-instance v8, Lcom/sec/android/app/camera/cropper/view/h;

    invoke-direct {v8, p0}, Lcom/sec/android/app/camera/cropper/view/h;-><init>(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v4, [I

    .line 24
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    aput v8, v4, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    aput v1, v4, v3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 25
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 26
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 27
    new-instance v0, Lcom/sec/android/app/camera/cropper/view/i;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/cropper/view/i;-><init>(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 28
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mTranslateButtonAnimatorSet:Landroid/animation/AnimatorSet;

    .line 29
    new-instance v3, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;-><init>(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 30
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mTranslateButtonAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 31
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mTranslateButtonAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateExtractModeNewBadgePosition()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->getExtractTextStringWidth(Ljava/lang/String;F)F

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/cropper/R$dimen;->scan_mode_indicator_new_badge_left_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mNewBadge:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    return-void
.end method

.method private updateTextCropMode(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mTranslateButtonAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/widget/RelativeLayout;->measure(II)V

    if-eqz p1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    :goto_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->setSelectBgWidth(I)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->setSelectIndicatorLayoutWidth(I)V

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isSelected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->translateButton()V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mExtractTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mScanTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->translateButton()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public initialize(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->setDarkMode(Z)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->setBackgroundResource()V

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->setSelectedTextView(Z)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->showSelectButton()V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->updateExtractModeNewBadgePosition()V

    return-void
.end method

.method public setExtractModeNewBadgeActivated(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mNewBadge:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->refreshExtractModeContentDescription()V

    return-void
.end method

.method public setSelectButtonEventListener(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$SelectButtonEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->mSelectButtonEventListener:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$SelectButtonEventListener;

    return-void
.end method
