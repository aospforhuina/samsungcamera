.class public Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerTextView;
.super Landroid/widget/LinearLayout;
.source "ZoomRockerTextView.java"


# instance fields
.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getBottomPivotTranslateX(F)F
    .locals 2

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerTextView;->mOrientation:I

    const/16 v0, -0x5a

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    neg-float p0, p1

    div-float/2addr p0, v1

    return p0

    :cond_1
    div-float/2addr p1, v1

    return p1
.end method

.method private getBottomPivotTranslateY(F)F
    .locals 1

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerTextView;->mOrientation:I

    const/16 v0, -0x5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    return p1
.end method

.method private getBottomPivotX(F)F
    .locals 1

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerTextView;->mOrientation:I

    const/16 v0, -0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    :cond_0
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public setRotation(F)V
    .locals 2

    float-to-int v0, p1

    .line 1
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerTextView;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRotation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerTextView;->updatePosition(FF)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setRotation(F)V

    return-void
.end method

.method public updatePosition(FF)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerTextView;->getBottomPivotTranslateX(F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 2
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerTextView;->getBottomPivotTranslateY(F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerTextView;->getBottomPivotX(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setPivotY(F)V

    return-void
.end method
