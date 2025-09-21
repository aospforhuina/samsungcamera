.class public Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;
.super Lcom/sec/android/app/camera/cropper/controller/CropController;
.source "DocumentScanController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DocumentScanController"


# instance fields
.field private isSupportSmartScanAnimation:Z

.field private mExternalSDStoragePath:Ljava/lang/String;

.field private mExtractedTextSelectGuide:Landroid/widget/TextView;

.field private mIsExtractTextCompleted:Z

.field private mIsObjectRemovalEnabled:Z

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mSavingDir:Ljava/lang/String;

.field private mVisionTextView:Lcom/sec/android/app/camera/cropper/view/VisionTextView;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/widget/LinearLayout;Lcom/sec/android/app/camera/cropper/view/CropImageView;Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/cropper/controller/CropController;-><init>(ILandroid/content/Context;Landroid/widget/LinearLayout;Lcom/sec/android/app/camera/cropper/view/CropImageView;Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;)V

    const-string p0, "DocumentScanController"

    const-string p1, "Create DocumentScan controller."

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;Landroid/graphics/Rect;Ll3/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->lambda$executeVisionText$0(Landroid/graphics/Rect;Ll3/a;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->updateVisionTextBitmap()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->convertCropCoordinate(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->updateVisionTextLayout(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->isSupportSmartScanAnimation:Z

    return p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->executeVisionText(Landroid/graphics/Rect;)V

    return-void
.end method

.method private convertCropCoordinate(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getResizedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getResizedBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 5
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v2, v3}, Landroid/util/Size;-><init>(II)V

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalImageOrientation()I

    move-result v2

    invoke-direct {p0, v1, v4, v2}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->getPreviewDisplayMatrix(Landroid/content/res/Resources;Landroid/util/Size;I)Landroid/graphics/Matrix;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 7
    invoke-direct {p0, v1, v3, v2}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->getPosition(Landroid/content/res/Resources;Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Landroid/util/Size;

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getResizedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getResizedBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-direct {p1, v1, p0}, Landroid/util/Size;-><init>(II)V

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/cropper/polygon/PolygonHelper;->adjustPolygonBoundary(Landroid/util/Size;Ljava/util/ArrayList;)V

    .line 9
    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/polygon/PolygonHelper;->sortPointsClockwise(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private executeVisionText(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mVisionTextView:Lcom/sec/android/app/camera/cropper/view/VisionTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->getVisionText()Lj3/c;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getRotatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;-><init>(Lj3/c;Landroid/graphics/Bitmap;)V

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/cropper/controller/a;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/cropper/controller/a;-><init>(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;->setCompleteListener(Lcom/sec/android/app/camera/cropper/controller/VisionTextTask$CompleteListener;)V

    .line 3
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private getPosition(Landroid/content/res/Resources;Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;
    .locals 4

    .line 1
    new-instance p0, Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2
    sget p2, Lcom/sec/android/app/camera/cropper/R$dimen;->document_scan_corner_point_image_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 3
    iget p2, p0, Landroid/graphics/PointF;->x:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    sub-float v1, p2, p1

    add-float/2addr p2, p1

    .line 4
    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float v2, p0, p1

    add-float/2addr p0, p1

    .line 5
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1, v2, p2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 6
    invoke-virtual {p3, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 7
    iget p0, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p2, v0

    add-float/2addr p0, p2

    .line 8
    iget p2, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr p3, v0

    add-float/2addr p2, p3

    sub-float/2addr p0, p1

    .line 9
    iput p0, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, p1

    .line 10
    iput p2, v3, Landroid/graphics/RectF;->top:F

    .line 11
    new-instance p0, Landroid/graphics/PointF;

    iget p1, v3, Landroid/graphics/RectF;->left:F

    iget p2, v3, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method private getPreviewDisplayMatrix(Landroid/content/res/Resources;Landroid/util/Size;I)Landroid/graphics/Matrix;
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p0

    .line 2
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    .line 3
    sget v0, Lcom/sec/android/app/camera/cropper/R$dimen;->document_scan_corner_point_image_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float p3, p3

    .line 6
    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float p2, p2

    const/high16 p3, 0x44fa0000    # 2000.0f

    div-float v1, p2, p3

    int-to-float p0, p0

    div-float p3, p0, p3

    .line 7
    invoke-virtual {v0, v1, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    div-float/2addr p0, p3

    .line 8
    invoke-virtual {v0, p2, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    div-float/2addr p1, p3

    .line 9
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v0
.end method

.method private hideExtractedTextSelectGuide()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mExtractedTextSelectGuide:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mExtractedTextSelectGuide:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
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

.method private synthetic lambda$executeVisionText$0(Landroid/graphics/Rect;Ll3/a;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mIsExtractTextCompleted:Z

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mVisionTextView:Lcom/sec/android/app/camera/cropper/view/VisionTextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getRotatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mExtractTextEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->executeVisionText(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ll3/a;Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->updateExtractTextGuide()V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mExtractTextEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0}, Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;->onExtractTextCompleted()V

    :cond_0
    return-void
.end method

.method private showExtractedTextSelectGuide()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mExtractedTextSelectGuide:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mExtractedTextSelectGuide:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mExtractedTextSelectGuide:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateCropImageView(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCropImageView : initial point list = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentScanController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageViewLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$2;-><init>(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private updateCropImageView(Ljava/util/ArrayList;Landroid/util/Size;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/util/Size;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCropImageView : initial point list = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", previous bitmap size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentScanController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageViewLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$1;-><init>(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;Landroid/util/Size;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private updateExtractTextGuide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mVisionTextView:Lcom/sec/android/app/camera/cropper/view/VisionTextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mVisionTextView:Lcom/sec/android/app/camera/cropper/view/VisionTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->clear()V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->hideExtractedTextSelectGuide()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mVisionTextView:Lcom/sec/android/app/camera/cropper/view/VisionTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->isTextRecognizable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->showExtractedTextSelectGuide()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->hideExtractedTextSelectGuide()V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropContext:Landroid/content/Context;

    sget v0, Lcom/sec/android/app/camera/cropper/R$string;->no_text_found:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private updatePathForSaving(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "externalSDStoragePath"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mExternalSDStoragePath:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "savingDir"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mSavingDir:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mSavingDir:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DCIM"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Camera"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mSavingDir:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private updateVisionTextBitmap()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    new-instance v1, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController$3;-><init>(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method private updateVisionTextLayout(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mVisionTextView:Lcom/sec/android/app/camera/cropper/view/VisionTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mExtractedTextSelectGuide:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/cropper/R$dimen;->extracted_text_select_guide_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->isDeviceTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/2addr p1, v2

    .line 5
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 6
    :cond_0
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mExtractedTextSelectGuide:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    const/4 v3, 0x0

    if-le p2, p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mExtractedTextSelectGuide:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    add-int/2addr p1, v2

    mul-int/lit8 p1, p1, -0x1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mExtractedTextSelectGuide:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/sec/android/app/camera/cropper/R$drawable;->extracted_text_select_guide_dark_background:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 10
    :cond_1
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mExtractedTextSelectGuide:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/sec/android/app/camera/cropper/R$drawable;->extracted_text_select_guide_light_background:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mVisionTextView:Lcom/sec/android/app/camera/cropper/view/VisionTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mExtractedTextSelectGuide:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const-string v0, "DocumentScanController"

    const-string v1, "cancel"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->isNonDestruction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->deleteImage(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;->onCancelCompleted(Landroid/content/Intent;)V

    return-void
.end method

.method public deInitialize()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/camera/cropper/controller/SmartScanRectifyWrapper;->deInitialize()V

    return-void
.end method

.method public dispatchTouchEvent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mExtractedTextSelectGuide:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->hideExtractedTextSelectGuide()V

    :cond_0
    return-void
.end method

.method public extractText()V
    .locals 8

    const-string v0, "DocumentScanController"

    const-string v1, "extractText"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/cropper/controller/ExtractTextTask;

    iget-object v3, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalImagePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    iget-object v6, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    iget-boolean v7, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mIsObjectRemovalEnabled:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/cropper/controller/ExtractTextTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/camera/cropper/view/CropImageView;Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;Z)V

    .line 3
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public initialize()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/camera/cropper/controller/SmartScanRectifyWrapper;->initialize()V

    return-void
.end method

.method public save()V
    .locals 11

    const-string v0, "DocumentScanController"

    const-string v1, "save"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/cropper/controller/SaveTask;

    iget-object v3, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalImagePath()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalImageUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mSavingDir:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mExternalSDStoragePath:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    iget-object v9, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    iget-boolean v10, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mIsObjectRemovalEnabled:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/cropper/controller/SaveTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/camera/cropper/view/CropImageView;Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;Z)V

    .line 3
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setExtractedTextSelectGuide(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mExtractedTextSelectGuide:Landroid/widget/TextView;

    return-void
.end method

.method public setVisionTextView(Lcom/sec/android/app/camera/cropper/view/VisionTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mVisionTextView:Lcom/sec/android/app/camera/cropper/view/VisionTextView;

    return-void
.end method

.method public start(Landroid/content/Intent;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    new-instance v1, Lcom/sec/android/app/camera/cropper/polygon/FreeForm;

    invoke-direct {v1}, Lcom/sec/android/app/camera/cropper/polygon/FreeForm;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->setPolygon(Lcom/sec/android/app/camera/cropper/polygon/Polygon;)V

    const-string v0, "cropCoordinate"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const-string p1, "DocumentScanController"

    const-string/jumbo v0, "start : initial point list is null, return."

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->cancel()V

    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->updatePathForSaving(Landroid/content/Intent;)V

    const-string v0, "cameraPreviewRect"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mPreviewRect:Landroid/graphics/Rect;

    const-string/jumbo v0, "supportScanAnimation"

    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->isSupportSmartScanAnimation:Z

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v3, "convertCoordinateRequired"

    .line 10
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 11
    invoke-virtual {p1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v3, "objectRemovalEnabled"

    .line 12
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mIsObjectRemovalEnabled:Z

    .line 13
    invoke-virtual {p1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 14
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->updateCropImageView(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    const-string v0, "resizedImageWidth"

    .line 15
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "resizedImageHeight"

    .line 16
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 17
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v0, p1}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->updateCropImageView(Ljava/util/ArrayList;Landroid/util/Size;)V

    :goto_0
    return-void
.end method

.method public updateViewState(Z)V
    .locals 2

    const-string v0, "DocumentScanController"

    const-string/jumbo v1, "updateViewState"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/CropController;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    check-cast v0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->setCropVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mVisionTextView:Lcom/sec/android/app/camera/cropper/view/VisionTextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-boolean p1, p0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->mIsExtractTextCompleted:Z

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->updateExtractTextGuide()V

    :cond_1
    return-void
.end method
