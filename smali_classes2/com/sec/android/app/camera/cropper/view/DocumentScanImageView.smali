.class public Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;
.super Lcom/sec/android/app/camera/cropper/view/CropImageView;
.source "DocumentScanImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DocumentScanImageView"


# instance fields
.field private mAnimationHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

.field private mDrawableDiff:F

.field private mHandlerAnimator:Landroid/animation/ValueAnimator;

.field private mInitialAnimatorSet:Landroid/animation/AnimatorSet;

.field private mIsCornerInitialAnimationRequired:Z

.field private mIsScanMode:Z

.field private final mPointImageHideAnimator:Landroid/animation/ValueAnimator;

.field private final mPointImageShowAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array v0, p1, [F

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageShowAnimator:Landroid/animation/ValueAnimator;

    new-array p1, p1, [F

    .line 3
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageHideAnimator:Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mIsScanMode:Z

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->initDocumentScanImageView()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/cropper/view/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p2, p1, [F

    .line 7
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageShowAnimator:Landroid/animation/ValueAnimator;

    new-array p1, p1, [F

    .line 8
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageHideAnimator:Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mIsScanMode:Z

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->initDocumentScanImageView()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/cropper/view/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p2, p1, [F

    .line 12
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageShowAnimator:Landroid/animation/ValueAnimator;

    new-array p1, p1, [F

    .line 13
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageHideAnimator:Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mIsScanMode:Z

    .line 15
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->initDocumentScanImageView()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static synthetic a(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->lambda$hidePointImage$4(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mIsCornerInitialAnimationRequired:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageShowAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageHideAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;ILandroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->movePointImage(ILandroid/widget/FrameLayout;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->lambda$getPathPaintAnimation$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->lambda$getCornerButtonAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->lambda$getOverlayPaintAnimation$1(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->lambda$startCornerAnimation$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->lambda$showPointImage$5(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->lambda$getPolygonPaintAnimation$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getCornerButtonAnimation()Landroid/animation/ValueAnimator;
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3f19999a    # 0.6f

    const/4 v4, 0x0

    const v5, 0x3fcccccd    # 1.6f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x12c

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    new-instance v1, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView$1;-><init>(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    new-instance v1, Lcom/sec/android/app/camera/cropper/view/d;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/cropper/view/d;-><init>(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getOverlayPaintAnimation()Landroid/animation/ValueAnimator;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 2
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/cropper/R$integer;->document_scan_animation_duration:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    new-instance v2, Lcom/sec/android/app/camera/cropper/view/g;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/cropper/view/g;-><init>(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getPathPaintAnimation()Landroid/animation/ValueAnimator;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/cropper/R$dimen;->document_scan_cropper_border_thickness:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/cropper/R$color;->document_scan_path_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 4
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/cropper/R$integer;->document_scan_animation_duration:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    new-instance v1, Lcom/sec/android/app/camera/cropper/view/c;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/cropper/view/c;-><init>(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private getPolygonPaintAnimation()Landroid/animation/ValueAnimator;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 2
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/cropper/R$integer;->document_scan_animation_duration:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    new-instance v1, Lcom/sec/android/app/camera/cropper/view/f;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/cropper/view/f;-><init>(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private hidePointImage(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/cropper/R$id;->point_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageHideAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/cropper/view/a;

    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/cropper/view/a;-><init>(Landroid/widget/FrameLayout;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView$2;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView$2;-><init>(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;Landroid/widget/FrameLayout;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private initDocumentScanImageView()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mIsCornerInitialAnimationRequired:Z

    return-void
.end method

.method private isNeedPointImageMove(ILandroid/widget/FrameLayout;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    const/4 v0, 0x1

    if-le p1, p0, :cond_2

    .line 4
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    int-to-float v3, p0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    return v0

    :cond_2
    if-ge p1, p0, :cond_3

    .line 5
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getX()F

    move-result p1

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method private synthetic lambda$getCornerButtonAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mDrawableDiff:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private synthetic lambda$getOverlayPaintAnimation$1(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOverlayPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private synthetic lambda$getPathPaintAnimation$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private synthetic lambda$getPolygonPaintAnimation$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygonPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$hidePointImage$4(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method private static synthetic lambda$showPointImage$5(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$startCornerAnimation$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mDrawableDiff:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private movePointImage(ILandroid/widget/FrameLayout;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    .line 2
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le p1, p0, :cond_0

    .line 3
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 4
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    goto :goto_0

    .line 5
    :cond_0
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 6
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 7
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private onActionMove(FF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mTouchedHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/handle/Handle;->getHandleId()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/cropper/polygon/PolygonHelper;->reorderPolygonPoint(Lcom/sec/android/app/camera/cropper/polygon/Polygon;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-static {}, Lcom/sec/android/app/camera/cropper/handle/HandleHelper;->getHandleList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/cropper/handle/Handle;

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mTouchedHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mTouchedHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mAnimationHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

    .line 5
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mTouchedPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    sub-float v2, p1, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v1, p2, v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mTouchedHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mImageViewRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/android/app/camera/cropper/handle/Handle;->getDelta(Landroid/graphics/Rect;Lcom/sec/android/app/camera/cropper/polygon/Polygon;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mTouchedHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mImageViewRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/android/app/camera/cropper/handle/Handle;->move(Landroid/graphics/Rect;Lcom/sec/android/app/camera/cropper/polygon/Polygon;Landroid/graphics/PointF;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mTouchedPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mTouchedHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/cropper/handle/Handle;->getHandleId()I

    move-result p1

    .line 10
    iget-object p2, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getVertexStartId()I

    move-result p2

    if-gt p2, p1, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getVertexStartId()I

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getVertexCount()I

    move-result v0

    add-int/2addr p2, v0

    if-ge p1, p2, :cond_2

    const/4 p1, 0x0

    .line 11
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->showPointImage(Z)V

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private setPointImage(II)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/cropper/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getResizedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getResizedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalImageOrientation()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_2

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_1

    const/16 v4, 0x10e

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getResizedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getResizedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getResizedBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, p2

    move p2, p1

    move p1, v3

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getResizedBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int p1, v3, p1

    .line 9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getResizedBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int p2, v3, p2

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getResizedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getResizedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getResizedBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int p1, v3, p1

    move v9, p2

    move p2, p1

    move p1, v9

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/2addr p1, v3

    int-to-float p1, p1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int/2addr p2, p1

    int-to-float p1, p2

    int-to-float p2, v2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 15
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/sec/android/app/camera/cropper/R$dimen;->document_scan_round_bitmap_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 16
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/sec/android/app/camera/cropper/R$color;->black:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    .line 17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalImageOrientation()I

    move-result v6

    invoke-static/range {v3 .. v8}, Lcom/sec/android/app/camera/cropper/util/BitmapUtil;->getRoundCropBitmap(Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private showPointImage(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getPointList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mTouchedHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/handle/Handle;->getHandleId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getPointList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mTouchedHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/cropper/handle/Handle;->getHandleId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->setPointImage(II)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/cropper/R$id;->point_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->isNeedPointImageMove(ILandroid/widget/FrameLayout;)Z

    move-result v2

    const/16 v3, 0xfa

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->hidePointImage(I)V

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v3, 0x190

    move v2, v4

    :goto_0
    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageShowAnimator:Landroid/animation/ValueAnimator;

    int-to-long v5, v3

    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/4 v5, 0x0

    const v6, 0x3f99999a    # 1.2f

    const v7, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageShowAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/sec/android/app/camera/cropper/view/b;

    invoke-direct {v2, v1}, Lcom/sec/android/app/camera/cropper/view/b;-><init>(Landroid/widget/FrameLayout;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView$3;-><init>(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;Landroid/widget/FrameLayout;I)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mPointImageShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 13
    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private startCornerAnimation(FF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mAnimationHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

    if-nez v0, :cond_0

    const-string p0, "DocumentScanImageView"

    const-string/jumbo p1, "startCornerAnimation : there is no handle for animation, return."

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mHandlerAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mHandlerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mHandlerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 5
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mHandlerAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mHandlerAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e6147ae    # 0.22f

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mHandlerAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/sec/android/app/camera/cropper/view/e;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/cropper/view/e;-><init>(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mHandlerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 10
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private startInitialAnimation()V
    .locals 2

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mInitialAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->getOverlayPaintAnimation()Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->getPathPaintAnimation()Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->getPolygonPaintAnimation()Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->getCornerButtonAnimation()Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mInitialAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView$4;-><init>(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mInitialAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private stopInitialAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mIsCornerInitialAnimationRequired:Z

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mInitialAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mIsScanMode:Z

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getType()Lcom/sec/android/app/camera/cropper/util/CropConstants$PolygonType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/cropper/util/CropConstants$PolygonType;->FREE_FORM:Lcom/sec/android/app/camera/cropper/util/CropConstants$PolygonType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mInitialAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->startInitialAnimation()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getPointList()Ljava/util/ArrayList;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/sec/android/app/camera/cropper/view/CropImageViewHelper;->drawBackgroundOverlay(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygonPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-static {p1, v1, v2, v3, v0}, Lcom/sec/android/app/camera/cropper/view/CropImageViewHelper;->drawInsideMask(Landroid/graphics/Canvas;Landroid/graphics/Paint;IILjava/util/ArrayList;)V

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPathPaint:Landroid/graphics/Paint;

    invoke-static {p1, v1, v0}, Lcom/sec/android/app/camera/cropper/view/CropImageViewHelper;->drawPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/ArrayList;)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/cropper/R$drawable;->document_scan_cropper_handler:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 10
    iget-boolean v2, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mIsCornerInitialAnimationRequired:Z

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 12
    iget v3, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mDrawableDiff:F

    invoke-static {p1, v1, v2, v3}, Lcom/sec/android/app/camera/cropper/view/CropImageViewHelper;->drawFreeFormCorner(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;F)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 14
    iget-object v4, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mTouchedHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/android/app/camera/cropper/handle/Handle;->getHandleId()I

    move-result v4

    if-ne v4, v2, :cond_2

    iget v4, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mDrawableDiff:F

    goto :goto_2

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    .line 15
    :goto_2
    invoke-static {p1, v1, v3, v4}, Lcom/sec/android/app/camera/cropper/view/CropImageViewHelper;->drawFreeFormCorner(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->stopInitialAnimation()V

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x400ccccd    # 2.2f

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mTouchedHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->onActionMove(FF)V

    goto :goto_0

    :cond_2
    const-string p1, "7052"

    .line 6
    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->startCornerAnimation(FF)V

    .line 8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->performClick()Z

    const/16 p1, 0x190

    .line 9
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->hidePointImage(I)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-static {v0, v4, v5}, Lcom/sec/android/app/camera/cropper/handle/HandleHelper;->getTouchedHandle(FFLcom/sec/android/app/camera/cropper/polygon/Polygon;)Lcom/sec/android/app/camera/cropper/handle/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mTouchedHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

    if-eqz v0, :cond_4

    .line 11
    iget-object v4, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/handle/Handle;->getHandleId()I

    move-result v0

    invoke-static {v4, v0}, Lcom/sec/android/app/camera/cropper/polygon/PolygonHelper;->reorderPolygonPoint(Lcom/sec/android/app/camera/cropper/polygon/Polygon;I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    .line 12
    invoke-static {}, Lcom/sec/android/app/camera/cropper/handle/HandleHelper;->getHandleList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/cropper/handle/Handle;

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mTouchedHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mTouchedHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mAnimationHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mTouchedPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v4, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 15
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mTouchedHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/sec/android/app/camera/cropper/handle/Handle;->getHandleId()I

    move-result p1

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getVertexStartId()I

    move-result v0

    if-gt v0, p1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getVertexStartId()I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getVertexCount()I

    move-result v4

    add-int/2addr v0, v4

    if-ge p1, v0, :cond_5

    .line 18
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->showPointImage(Z)V

    .line 19
    :cond_5
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->startCornerAnimation(FF)V

    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return v3

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public setCropVisibility(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->mIsScanMode:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method protected setMinCropSizeByType(Lcom/sec/android/app/camera/cropper/polygon/Polygon;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/cropper/R$drawable;->document_scan_cropper_handler:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    .line 4
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->setMinCropSize(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "DocumentScanImageView"

    const-string v1, "drawBitmap : there is no corner drawable."

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget p0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPreviewScaledRatio:F

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->setMinCropSizeByRatio(F)V

    :goto_0
    return-void
.end method
