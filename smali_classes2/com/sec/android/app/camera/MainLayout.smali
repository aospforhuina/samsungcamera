.class public Lcom/sec/android/app/camera/MainLayout;
.super Landroid/widget/FrameLayout;
.source "MainLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MainLayout$OrientationEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainLayout"


# instance fields
.field private isActivityRunning:Z

.field private mIsResizable:Z

.field private mOrientationEventListener:Lcom/sec/android/app/camera/MainLayout$OrientationEventListener;

.field private mRotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/MainLayout;->mRotation:I

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MainLayout;->mIsResizable:Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MainLayout;->isActivityRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/sec/android/app/camera/MainLayout;->mRotation:I

    .line 7
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MainLayout;->mIsResizable:Z

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MainLayout;->isActivityRunning:Z

    return-void
.end method

.method private isPortrait(II)Z
    .locals 0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MainLayout;->mIsResizable:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/16 v1, 0x5a

    const/16 v2, -0x5a

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_4

    if-eq v0, v3, :cond_2

    const/4 v6, 0x3

    if-eq v0, v6, :cond_1

    goto :goto_3

    .line 3
    :cond_1
    iput v1, p0, Lcom/sec/android/app/camera/MainLayout;->mRotation:I

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/MainLayout;->isPortrait(II)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 5
    :cond_2
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xb4

    goto :goto_0

    :cond_3
    move v0, v4

    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/MainLayout;->mRotation:I

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/MainLayout;->isPortrait(II)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    .line 7
    :cond_4
    iput v2, p0, Lcom/sec/android/app/camera/MainLayout;->mRotation:I

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/MainLayout;->isPortrait(II)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_1
    move v0, v5

    move v5, v4

    goto :goto_4

    :cond_5
    move v0, v4

    goto :goto_4

    .line 9
    :cond_6
    iput v4, p0, Lcom/sec/android/app/camera/MainLayout;->mRotation:I

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/MainLayout;->isPortrait(II)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_2
    move v0, v5

    goto :goto_4

    :cond_7
    :goto_3
    move v0, v4

    move v5, v0

    :goto_4
    if-eqz v5, :cond_9

    .line 11
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 12
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    sub-int v6, v4, v5

    .line 13
    div-int/2addr v6, v3

    sub-int/2addr v5, v4

    .line 14
    div-int/lit8 v4, v5, 0x2

    .line 15
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v3

    if-eqz v3, :cond_8

    mul-int/lit8 v6, v6, -0x1

    :cond_8
    move v3, v4

    move v4, v6

    move v7, p2

    move p2, p1

    move p1, v7

    goto :goto_5

    :cond_9
    move v3, v4

    .line 16
    :goto_5
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    int-to-float p1, v4

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    int-to-float p1, v3

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRotation()F

    move-result p1

    float-to-int p1, p1

    .line 20
    iget p2, p0, Lcom/sec/android/app/camera/MainLayout;->mRotation:I

    if-eq p2, p1, :cond_c

    if-nez v0, :cond_c

    .line 21
    iget-boolean p1, p0, Lcom/sec/android/app/camera/MainLayout;->isActivityRunning:Z

    if-eqz p1, :cond_c

    int-to-float p1, p2

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 23
    iget-object p1, p0, Lcom/sec/android/app/camera/MainLayout;->mOrientationEventListener:Lcom/sec/android/app/camera/MainLayout$OrientationEventListener;

    if-eqz p1, :cond_c

    .line 24
    iget p0, p0, Lcom/sec/android/app/camera/MainLayout;->mRotation:I

    if-eq p0, v2, :cond_b

    if-ne p0, v1, :cond_a

    goto :goto_6

    .line 25
    :cond_a
    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/MainLayout$OrientationEventListener;->onOrientationChanged(I)V

    goto :goto_7

    :cond_b
    :goto_6
    mul-int/lit8 p0, p0, -0x1

    .line 26
    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/MainLayout$OrientationEventListener;->onOrientationChanged(I)V

    :cond_c
    :goto_7
    return-void

    .line 27
    :cond_d
    :goto_8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setActivityRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/MainLayout;->isActivityRunning:Z

    return-void
.end method

.method public setOrientationEventListener(Lcom/sec/android/app/camera/MainLayout$OrientationEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/MainLayout;->mOrientationEventListener:Lcom/sec/android/app/camera/MainLayout$OrientationEventListener;

    return-void
.end method

.method public setResizable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/MainLayout;->mIsResizable:Z

    return-void
.end method
