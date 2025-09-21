.class public Lcom/sec/android/app/camera/cropper/view/VisionTextView;
.super Landroid/view/View;
.source "VisionTextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VisionTextView"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHasPerformedLongPress:Z

.field private mIgnoreLastTouchUp:Z

.field private mIsTextRecognizable:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private final mLongPressRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mVisionText:Lj3/c;

.field private mVisionTextDrawHelper:Lj3/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mLastMotionX:F

    .line 13
    iput v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mLastMotionY:F

    .line 14
    new-instance v0, Lcom/sec/android/app/camera/cropper/view/p;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/cropper/view/p;-><init>(Lcom/sec/android/app/camera/cropper/view/VisionTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 15
    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mLastMotionX:F

    .line 8
    iput p2, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mLastMotionY:F

    .line 9
    new-instance p2, Lcom/sec/android/app/camera/cropper/view/p;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/cropper/view/p;-><init>(Lcom/sec/android/app/camera/cropper/view/VisionTextView;)V

    iput-object p2, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 10
    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mLastMotionX:F

    .line 3
    iput p2, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mLastMotionY:F

    .line 4
    new-instance p2, Lcom/sec/android/app/camera/cropper/view/p;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/cropper/view/p;-><init>(Lcom/sec/android/app/camera/cropper/view/VisionTextView;)V

    iput-object p2, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/cropper/view/VisionTextView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic b(Ll3/a$a;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->lambda$executeVisionText$1(Ll3/a$a;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$executeVisionText$1(Ll3/a$a;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLongPressRunnable: run mLastMotionX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mLastMotionX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mLastMotionY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mLastMotionY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mLastMotionX:F

    iget v1, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mLastMotionY:F

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performLongClick(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mHasPerformedLongPress:Z

    :cond_0
    return-void
.end method

.method private postCheckForLongClick()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mHasPerformedLongPress:Z

    const-string v0, "VisionTextView"

    const-string v1, "postCheckForLongClick"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private removeLongPressCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mVisionTextDrawHelper:Lj3/d;

    if-eqz v0, :cond_0

    const-string v0, "VisionTextView"

    const-string v1, "clear"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mVisionTextDrawHelper:Lj3/d;

    invoke-interface {p0}, Lj3/d;->j()V

    :cond_0
    return-void
.end method

.method public executeVisionText(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ll3/a;Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mVisionTextDrawHelper:Lj3/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mIsTextRecognizable:Z

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 3
    iput-boolean v1, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mIsTextRecognizable:Z

    return-void

    .line 4
    :cond_1
    invoke-virtual {p3}, Ll3/a;->c()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/cropper/view/q;->a:Lcom/sec/android/app/camera/cropper/view/q;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 7
    iget-object p2, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mVisionTextDrawHelper:Lj3/d;

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lj3/d;->g(Z)V

    .line 8
    iget-object p2, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mVisionTextDrawHelper:Lj3/d;

    invoke-interface {p2, p1}, Lj3/d;->f(Landroid/graphics/Bitmap;)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mVisionTextDrawHelper:Lj3/d;

    invoke-interface {p1, v0}, Lj3/d;->e(Landroid/graphics/RectF;)V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mVisionTextDrawHelper:Lj3/d;

    invoke-interface {p1, p3}, Lj3/d;->b(Ll3/a;)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mVisionTextDrawHelper:Lj3/d;

    invoke-interface {p1}, Lj3/d;->c()Z

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mVisionTextDrawHelper:Lj3/d;

    invoke-interface {p1}, Lj3/d;->j()V

    if-eqz p4, :cond_3

    .line 13
    invoke-interface {p4}, Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;->onExtractTextCompleted()V

    .line 14
    :cond_3
    iput-boolean v1, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mIsTextRecognizable:Z

    return-void

    .line 15
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mIsTextRecognizable:Z

    return-void
.end method

.method public getVisionText()Lj3/c;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mVisionText:Lj3/c;

    return-object p0
.end method

.method public init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mVisionText:Lj3/c;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lb3/a;->h(Landroid/content/Context;)Lb3/a;

    move-result-object v0

    invoke-virtual {v0}, Lb3/a;->e()Lj3/c;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mVisionText:Lj3/c;

    if-nez v0, :cond_1

    const-string p0, "VisionTextView"

    const-string v0, "init : visionText got null"

    .line 3
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mHandler:Landroid/os/Handler;

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mVisionText:Lj3/c;

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lj3/c;->a(Landroid/content/Context;)Lj3/d;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mVisionTextDrawHelper:Lj3/d;

    .line 6
    invoke-interface {v0, p0}, Lj3/d;->h(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mTouchSlop:I

    return-void
.end method

.method public isTextRecognizable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mIsTextRecognizable:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mVisionTextDrawHelper:Lj3/d;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0, p1}, Lj3/d;->a(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->removeLongPressCallback()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 6
    iget v4, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mLastMotionX:F

    sub-float/2addr v4, v0

    float-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 7
    iget v4, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mLastMotionY:F

    sub-float/2addr v4, v2

    float-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 8
    iget v4, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mTouchSlop:I

    if-ge v0, v4, :cond_2

    if-lt v2, v4, :cond_6

    .line 9
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mHasPerformedLongPress:Z

    if-nez v0, :cond_6

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->removeLongPressCallback()V

    .line 11
    iput-boolean v3, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mIgnoreLastTouchUp:Z

    goto :goto_0

    .line 12
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mHasPerformedLongPress:Z

    if-nez v0, :cond_6

    .line 13
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->removeLongPressCallback()V

    .line 14
    iget-boolean v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mIgnoreLastTouchUp:Z

    if-eqz v0, :cond_4

    .line 15
    iput-boolean v2, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mIgnoreLastTouchUp:Z

    goto :goto_0

    .line 16
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mIsTextRecognizable:Z

    if-eqz v0, :cond_6

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mVisionTextDrawHelper:Lj3/d;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-interface {v0, v4, v5, v2}, Lj3/d;->i(FFZ)Z

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mLastMotionX:F

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mLastMotionY:F

    .line 20
    iput-boolean v2, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mHasPerformedLongPress:Z

    .line 21
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->postCheckForLongClick()V

    .line 22
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->mVisionTextDrawHelper:Lj3/d;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lj3/d;->d(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, " handleTouchEvent return true"

    .line 23
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v3
.end method
