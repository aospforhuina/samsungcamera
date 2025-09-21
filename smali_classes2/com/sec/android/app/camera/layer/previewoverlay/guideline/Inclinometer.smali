.class public Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;
.super Landroid/widget/RelativeLayout;
.source "Inclinometer.java"


# static fields
.field private static final CHANGE_THRESHOLD:I = 0x2

.field private static final LANDSCAPE_XZ_DISPLAY_RANGE_ON_INVISIBLE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LANDSCAPE_XZ_DISPLAY_RANGE_ON_VISIBLE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOW_PASS_FILTER_FACTOR:F = 0.3f

.field private static final PORTRAIT_YZ_DISPLAY_RANGE_ON_INVISIBLE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PORTRAIT_YZ_DISPLAY_RANGE_ON_VISIBLE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final REVERSE_LANDSCAPE_XZ_DISPLAY_RANGE_ON_INVISIBLE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final REVERSE_LANDSCAPE_XZ_DISPLAY_RANGE_ON_VISIBLE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Inclinometer"

.field private static final XY_DISPLAY_CONDITION_ON_INVISIBLE:I = 0x14

.field private static final XY_DISPLAY_CONDITION_ON_VISIBLE:I = 0x19


# instance fields
.field private mIsCorrect:Z

.field private mIsLayoutUpdated:Z

.field private mOrientation:I

.field private mPreAccelerationX:F

.field private mPreAccelerationY:F

.field private mPreAccelerationZ:F

.field private mViewBinding:Lo5/l4;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/util/Range;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->PORTRAIT_YZ_DISPLAY_RANGE_ON_VISIBLE:Landroid/util/Range;

    .line 2
    new-instance v0, Landroid/util/Range;

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->PORTRAIT_YZ_DISPLAY_RANGE_ON_INVISIBLE:Landroid/util/Range;

    .line 3
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->LANDSCAPE_XZ_DISPLAY_RANGE_ON_VISIBLE:Landroid/util/Range;

    .line 4
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->LANDSCAPE_XZ_DISPLAY_RANGE_ON_INVISIBLE:Landroid/util/Range;

    .line 5
    new-instance v0, Landroid/util/Range;

    const/16 v1, -0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->REVERSE_LANDSCAPE_XZ_DISPLAY_RANGE_ON_VISIBLE:Landroid/util/Range;

    .line 6
    new-instance v0, Landroid/util/Range;

    const/16 v1, -0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->REVERSE_LANDSCAPE_XZ_DISPLAY_RANGE_ON_INVISIBLE:Landroid/util/Range;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mPreAccelerationX:F

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mPreAccelerationY:F

    .line 4
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mPreAccelerationZ:F

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mIsLayoutUpdated:Z

    .line 6
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mIsCorrect:Z

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mPreAccelerationX:F

    .line 10
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mPreAccelerationY:F

    .line 11
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mPreAccelerationZ:F

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mIsLayoutUpdated:Z

    .line 13
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mIsCorrect:Z

    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->init()V

    return-void
.end method

.method private calculateAngle(FF)I
    .locals 2

    float-to-double p0, p1

    float-to-double v0, p2

    .line 1
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    .line 2
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p0, v1}, Lo5/l4;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/l4;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mViewBinding:Lo5/l4;

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    const-string v0, "Inclinometer"

    const-string v1, "hide"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mViewBinding:Lo5/l4;

    iget-object v0, v0, Lo5/l4;->a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mViewBinding:Lo5/l4;

    iget-object p0, p0, Lo5/l4;->b:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isVisibleCondition(FFF)Z
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->calculateAngle(FF)I

    move-result v0

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->calculateAngle(FF)I

    move-result p1

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->calculateAngle(FF)I

    move-result p2

    .line 4
    iget p3, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mOrientation:I

    sub-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mViewBinding:Lo5/l4;

    iget-object v0, v0, Lo5/l4;->a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x5a

    const/16 v2, -0x5a

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_7

    const/16 v0, 0x19

    if-le v0, p3, :cond_0

    move p3, v3

    goto :goto_0

    :cond_0
    move p3, v4

    .line 6
    :goto_0
    iget p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mOrientation:I

    if-eq p0, v2, :cond_5

    if-eqz p0, :cond_3

    if-eq p0, v1, :cond_1

    goto :goto_5

    :cond_1
    if-eqz p3, :cond_2

    .line 7
    sget-object p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->LANDSCAPE_XZ_DISPLAY_RANGE_ON_VISIBLE:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    return v3

    :cond_3
    if-eqz p3, :cond_4

    .line 8
    sget-object p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->PORTRAIT_YZ_DISPLAY_RANGE_ON_VISIBLE:Landroid/util/Range;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    return v3

    :cond_5
    if-eqz p3, :cond_6

    .line 9
    sget-object p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->REVERSE_LANDSCAPE_XZ_DISPLAY_RANGE_ON_VISIBLE:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    return v3

    :cond_7
    const/16 v0, 0x14

    if-le v0, p3, :cond_8

    move p3, v3

    goto :goto_4

    :cond_8
    move p3, v4

    .line 10
    :goto_4
    iget p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mOrientation:I

    if-eq p0, v2, :cond_d

    if-eqz p0, :cond_b

    if-eq p0, v1, :cond_9

    :goto_5
    return v4

    :cond_9
    if-eqz p3, :cond_a

    .line 11
    sget-object p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->LANDSCAPE_XZ_DISPLAY_RANGE_ON_INVISIBLE:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_6

    :cond_a
    move v3, v4

    :goto_6
    return v3

    :cond_b
    if-eqz p3, :cond_c

    .line 12
    sget-object p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->PORTRAIT_YZ_DISPLAY_RANGE_ON_INVISIBLE:Landroid/util/Range;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_7

    :cond_c
    move v3, v4

    :goto_7
    return v3

    :cond_d
    if-eqz p3, :cond_e

    .line 13
    sget-object p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->REVERSE_LANDSCAPE_XZ_DISPLAY_RANGE_ON_INVISIBLE:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_8

    :cond_e
    move v3, v4

    :goto_8
    return v3
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mIsLayoutUpdated:Z

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mOrientation:I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mViewBinding:Lo5/l4;

    iget-object v0, v0, Lo5/l4;->a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;->setDeviceOrientation(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mViewBinding:Lo5/l4;

    iget-object p0, p0, Lo5/l4;->b:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;->setDeviceOrientation(I)V

    return-void
.end method

.method public reset()V
    .locals 4

    const-string v0, "Inclinometer"

    const-string v1, "reset"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mIsLayoutUpdated:Z

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mIsCorrect:Z

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mViewBinding:Lo5/l4;

    iget-object v0, v0, Lo5/l4;->a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060055

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;->setColor(I)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mViewBinding:Lo5/l4;

    iget-object v0, v0, Lo5/l4;->b:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a7

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;->setColor(I)V

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->hide()V

    return-void
.end method

.method public updateAccelerationValue(FFF)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mIsLayoutUpdated:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mPreAccelerationX:F

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr p1, v2

    add-float/2addr v0, p1

    .line 3
    iget p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mPreAccelerationY:F

    mul-float/2addr p1, v1

    mul-float/2addr p2, v2

    add-float/2addr p1, p2

    .line 4
    iget p2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mPreAccelerationZ:F

    mul-float/2addr p2, v1

    mul-float/2addr p3, v2

    add-float/2addr p2, p3

    .line 5
    iput v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mPreAccelerationX:F

    .line 6
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mPreAccelerationY:F

    .line 7
    iput p2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mPreAccelerationZ:F

    .line 8
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->isVisibleCondition(FFF)Z

    move-result p2

    if-nez p2, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->hide()V

    return-void

    .line 10
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->calculateAngle(FF)I

    move-result p1

    .line 11
    iget-boolean p2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mIsCorrect:Z

    const/4 p3, 0x2

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    goto :goto_0

    :cond_2
    move p2, p3

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mViewBinding:Lo5/l4;

    iget-object v0, v0, Lo5/l4;->a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;->getRotation()F

    move-result v0

    int-to-float v1, p1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float p2, p2

    cmpg-float p2, v0, p2

    if-gez p2, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mViewBinding:Lo5/l4;

    iget-object p2, p2, Lo5/l4;->a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    return-void

    .line 13
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateAccelerationValue: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Inclinometer"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mViewBinding:Lo5/l4;

    iget-object p2, p2, Lo5/l4;->a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "1381"

    .line 15
    invoke-static {p2}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 16
    :cond_4
    iget p2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mOrientation:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-ge p1, p3, :cond_5

    .line 17
    iget-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mIsCorrect:Z

    if-nez p1, :cond_7

    const-string p1, "1382"

    .line 18
    invoke-static {p1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mIsCorrect:Z

    .line 20
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mViewBinding:Lo5/l4;

    iget-object p1, p1, Lo5/l4;->a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    iget p3, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mOrientation:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;->setRotation(F)V

    .line 21
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mViewBinding:Lo5/l4;

    iget-object p1, p1, Lo5/l4;->a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0600a6

    invoke-virtual {p3, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;->setColor(I)V

    .line 22
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mViewBinding:Lo5/l4;

    iget-object p1, p1, Lo5/l4;->b:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;->setColor(I)V

    goto :goto_1

    .line 23
    :cond_5
    iget-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mIsCorrect:Z

    if-eqz p1, :cond_6

    .line 24
    iput-boolean p2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mIsCorrect:Z

    .line 25
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mViewBinding:Lo5/l4;

    iget-object p1, p1, Lo5/l4;->a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f060055

    invoke-virtual {p3, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;->setColor(I)V

    .line 26
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mViewBinding:Lo5/l4;

    iget-object p1, p1, Lo5/l4;->b:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f0600a7

    invoke-virtual {p3, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;->setColor(I)V

    .line 27
    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mViewBinding:Lo5/l4;

    iget-object p1, p1, Lo5/l4;->a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;->setRotation(F)V

    .line 28
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mViewBinding:Lo5/l4;

    iget-object p1, p1, Lo5/l4;->b:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/Inclinometer;->mViewBinding:Lo5/l4;

    iget-object p0, p0, Lo5/l4;->a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
