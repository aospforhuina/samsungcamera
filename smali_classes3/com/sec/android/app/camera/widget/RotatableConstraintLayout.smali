.class public Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "RotatableConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RotatableConstraintLayout"


# instance fields
.field private mExpectedOrientation:Ljava/lang/Integer;

.field private mExpectedVisibility:Ljava/lang/Integer;

.field private mHeight:I

.field private mIsDynamicSize:Z

.field private mIsRotatableLayout:Z

.field private mIsRotateActionEnabled:Z

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mRotateAction:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mIsDynamicSize:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mIsRotateActionEnabled:Z

    .line 4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mIsRotatableLayout:Z

    .line 5
    new-instance v0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;-><init>(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mIsDynamicSize:Z

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mIsRotateActionEnabled:Z

    .line 10
    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mIsRotatableLayout:Z

    .line 11
    new-instance v0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;-><init>(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 14
    iput-boolean p3, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mIsDynamicSize:Z

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mIsRotateActionEnabled:Z

    .line 16
    iput-boolean p3, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mIsRotatableLayout:Z

    .line 17
    new-instance p3, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;

    invoke-direct {p3, p0}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;-><init>(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;)V

    iput-object p3, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mExpectedOrientation:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mExpectedVisibility:Ljava/lang/Integer;

    return-object p0
.end method

.method private checkLandscapeRotation(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, -0x5a

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkPortraitRotation(I)Z
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mIsRotatableLayout:Z

    return p0
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;)Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mRotateAction:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mExpectedOrientation:Ljava/lang/Integer;

    return-void
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mExpectedVisibility:Ljava/lang/Integer;

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/R$styleable;->RotateConstraintLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mIsDynamicSize:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4
    throw p0
.end method


# virtual methods
.method public enableRotateAction(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableRotateAction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RotatableConstraintLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mIsRotateActionEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mIsRotateActionEnabled:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method protected final isRotatableLayout()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mIsRotatableLayout:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.CONFIGURATION_ORIENTATION"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mRotateAction:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mIsRotateActionEnabled:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mIsRotatableLayout:Z

    if-nez v0, :cond_2

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 3
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result p1

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_1
    return-void

    .line 7
    :cond_2
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v0, "RotatableConstraintLayout"

    const-string v1, "onMeasure : RotatableConstraintLayout layout is not attached. return"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void

    .line 10
    :cond_3
    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    if-eqz v2, :cond_6

    instance-of v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;

    if-nez v2, :cond_6

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->getScreenPixels(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 13
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 14
    iget v2, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mWidth:I

    int-to-float v3, v2

    cmpl-float v3, v3, v1

    if-nez v3, :cond_4

    iget v3, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mHeight:I

    int-to-float v3, v3

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_5

    :cond_4
    if-ne v2, p2, :cond_5

    iget v1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mHeight:I

    if-eq v1, p1, :cond_8

    .line 15
    :cond_5
    iput p2, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mWidth:I

    .line 16
    iput p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mHeight:I

    goto :goto_0

    .line 17
    :cond_6
    iget-boolean v2, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mIsDynamicSize:Z

    if-nez v2, :cond_7

    iget v2, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mWidth:I

    int-to-float v2, v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_8

    iget v2, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mHeight:I

    int-to-float v2, v2

    cmpl-float v1, v2, v1

    if-nez v1, :cond_8

    .line 18
    :cond_7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mWidth:I

    .line 19
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mHeight:I

    .line 20
    :cond_8
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 p2, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    if-eq p1, v1, :cond_d

    if-eq p1, p2, :cond_b

    const/4 v3, 0x3

    if-eq p1, v3, :cond_a

    :cond_9
    move p1, v2

    move v3, p1

    goto :goto_3

    :cond_a
    const/16 p1, -0x5a

    goto :goto_2

    .line 21
    :cond_b
    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p1, 0xb4

    goto :goto_1

    :cond_c
    move p1, v2

    :goto_1
    move v3, v2

    goto :goto_3

    :cond_d
    const/16 p1, 0x5a

    :goto_2
    move v3, v1

    :goto_3
    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_e

    .line 22
    iget v3, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mWidth:I

    iget v5, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mHeight:I

    sub-int v6, v3, v5

    div-int/2addr v6, p2

    sub-int v3, v5, v3

    .line 23
    div-int/2addr v3, p2

    .line 24
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 25
    iget v7, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mWidth:I

    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_4

    .line 26
    :cond_e
    iget v3, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mWidth:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 27
    iget v3, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mHeight:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v3, v2

    move v6, v3

    .line 28
    :goto_4
    invoke-super {p0, v5, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    int-to-float v4, v6

    .line 29
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    int-to-float v3, v3

    .line 30
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    int-to-float v3, p1

    .line 31
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v4

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_17

    .line 32
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mRotateAction:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;

    if-eqz v4, :cond_13

    .line 33
    invoke-interface {v4}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;->prepareRotation()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 35
    :cond_f
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->checkLandscapeRotation(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mExpectedOrientation:Ljava/lang/Integer;

    goto/16 :goto_6

    .line 38
    :cond_10
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->checkPortraitRotation(I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mExpectedOrientation:Ljava/lang/Integer;

    goto :goto_6

    .line 40
    :cond_11
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mRotateAction:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result p0

    const/high16 p2, -0x3d4c0000    # -90.0f

    cmpl-float p0, p0, p2

    if-nez p0, :cond_12

    goto :goto_5

    :cond_12
    move v1, v2

    :goto_5
    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;->refreshLayout(Z)V

    goto :goto_6

    .line 41
    :cond_13
    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 42
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 43
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->checkLandscapeRotation(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mExpectedOrientation:Ljava/lang/Integer;

    .line 45
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mExpectedVisibility:Ljava/lang/Integer;

    goto :goto_6

    .line 46
    :cond_14
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->checkPortraitRotation(I)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mExpectedOrientation:Ljava/lang/Integer;

    .line 48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mExpectedVisibility:Ljava/lang/Integer;

    goto :goto_6

    .line 49
    :cond_15
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->onRotate(I)V

    .line 50
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mExpectedVisibility:Ljava/lang/Integer;

    if-eqz p1, :cond_17

    .line 51
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mExpectedVisibility:Ljava/lang/Integer;

    goto :goto_6

    .line 53
    :cond_16
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->onRotate(I)V

    :cond_17
    :goto_6
    return-void
.end method

.method public onRotate(I)V
    .locals 0

    return-void
.end method

.method public setRotatableLayout(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mIsRotatableLayout:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mIsRotatableLayout:Z

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->onRotate(I)V

    return-void
.end method

.method public setRotateAction(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;)V
    .locals 2

    const-string v0, "RotatableConstraintLayout"

    const-string v1, "setRotateAction"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->mRotateAction:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;

    return-void
.end method
