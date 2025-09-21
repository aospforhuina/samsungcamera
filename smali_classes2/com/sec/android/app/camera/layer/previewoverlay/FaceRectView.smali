.class public Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;
.super Landroid/view/View;
.source "FaceRectView.java"


# static fields
.field private static final DELAY_TIME_TO_HIDE_FACE_RECT:J = 0x7d0L

.field static final RECT_TYPE_HUMAN:I = 0x1

.field static final RECT_TYPE_PET:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FaceRectView"


# instance fields
.field private mDetectedFaceCount:I

.field private mFacePositionGuideIndex:I

.field private mFaceRectList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final mHideFaceRectRunnable:Ljava/lang/Runnable;

.field private mIsFaceRectAutoHideEnabled:Z

.field private mIsFaceRectVisible:Z

.field private mOldDetectedFaceCount:I

.field private mOrientation:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/Map;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mIsFaceRectAutoHideEnabled:Z

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mFacePositionGuideIndex:I

    .line 6
    new-instance p1, Lcom/sec/android/app/camera/layer/previewoverlay/e;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/e;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mHideFaceRectRunnable:Ljava/lang/Runnable;

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->lambda$hideFaceRect$1()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->lambda$new$0()V

    return-void
.end method

.method private getMedianRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    .line 2
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 3
    :cond_1
    new-instance p0, Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    div-float/2addr v3, v1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, p2

    div-float/2addr p1, v1

    invoke-direct {p0, v0, v2, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method private getScaledRect(Landroid/graphics/RectF;I)Landroid/graphics/RectF;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float p0, p0, v0

    const v0, 0x3f99999a    # 1.2f

    const/4 v1, 0x1

    const v2, 0x3f8ccccd    # 1.1f

    const/high16 v3, 0x40000000    # 2.0f

    if-lez p0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p0

    mul-float/2addr p0, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr p0, v4

    div-float/2addr p0, v3

    .line 3
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v4, v2

    div-float/2addr v4, v3

    if-ne p2, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p2

    mul-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float/2addr p2, v0

    div-float v4, p2, v3

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    mul-float/2addr p0, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr p0, v4

    div-float/2addr p0, v3

    .line 6
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v4, v2

    div-float/2addr v4, v3

    if-ne p2, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    mul-float/2addr p0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    sub-float/2addr p0, p2

    div-float/2addr p0, v3

    .line 8
    :cond_1
    :goto_0
    iget p2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, p0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v4

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p0

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p0, v4

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p1
.end method

.method private handleFacePositionGuide([Landroid/graphics/Rect;Landroid/graphics/Matrix;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->isTtsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v5, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    iget v6, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mOrientation:I

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/camera/util/FaceAreaManager;->getFacePositionIndex(Landroid/content/Context;[Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;II)I

    move-result p2

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->isFaceCountChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mFacePositionGuideIndex:I

    if-eq v0, p2, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    array-length p1, p1

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/camera/util/FaceAreaManager;->speak(Landroid/content/Context;II)V

    .line 5
    :cond_2
    iput p2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mFacePositionGuideIndex:I

    return-void
.end method

.method private init()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mOldDetectedFaceCount:I

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mIsFaceRectVisible:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070148

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mRadius:F

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07014a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06008c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private synthetic lambda$hideFaceRect$1()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mIsFaceRectVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mIsFaceRectAutoHideEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mIsFaceRectVisible:Z

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->hideFaceRect(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startHideFaceRectTimer()V
    .locals 3

    const-string v0, "FaceRectView"

    const-string/jumbo v1, "startHideFaceRectTimer"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mHideFaceRectRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mHideFaceRectRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mHideFaceRectRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method getFaceCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    return p0
.end method

.method hideFaceRect(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/layer/previewoverlay/d;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/d;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method isFaceCountChanged()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    iget p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mOldDetectedFaceCount:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isFaceRectVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mIsFaceRectVisible:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mIsFaceRectVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mRadius:F

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mOrientation:I

    return-void
.end method

.method resetFaceRect()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mIsFaceRectVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mIsFaceRectVisible:Z

    .line 3
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->hideFaceRect(Z)V

    .line 4
    :cond_0
    iput v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mOldDetectedFaceCount:I

    .line 5
    iput v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mFacePositionGuideIndex:I

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method setFaceRectAutoHideEnabled(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFaceRectAutoHideEnabled : enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceRectView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mIsFaceRectAutoHideEnabled:Z

    return-void
.end method

.method setFaceRectColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method updateFaceRect(Ljava/util/Map;Landroid/graphics/Matrix;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Matrix;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 2
    iput v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-array p3, v1, [Landroid/graphics/Rect;

    invoke-interface {p1, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->handleFacePositionGuide([Landroid/graphics/Rect;Landroid/graphics/Matrix;)V

    .line 5
    iget p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mOldDetectedFaceCount:I

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->resetFaceRect()V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->isFaceCountChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mIsFaceRectVisible:Z

    .line 9
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mIsFaceRectAutoHideEnabled:Z

    if-eqz v0, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->startHideFaceRectTimer()V

    .line 11
    :cond_2
    new-instance v0, Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 14
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mIsFaceRectVisible:Z

    if-eqz v0, :cond_8

    .line 16
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v3

    .line 18
    invoke-virtual {p2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 19
    invoke-direct {p0, v3, p3}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->getScaledRect(Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object v3

    .line 20
    iget-object v4, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 21
    iget-object v4, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->getMedianRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 22
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 23
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_7

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 25
    :cond_7
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-array p3, v1, [Landroid/graphics/Rect;

    invoke-interface {p1, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->handleFacePositionGuide([Landroid/graphics/Rect;Landroid/graphics/Matrix;)V

    .line 27
    iget p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/FaceRectView;->mOldDetectedFaceCount:I

    return-void
.end method

.method updateFaceRectDrawingArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method
