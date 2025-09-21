.class public Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;
.super Landroid/widget/RelativeLayout;
.source "RecordingProgressBar.java"


# static fields
.field private static final PROGRESS_MAX_RATIO:I = 0x64

.field private static final TAG:Ljava/lang/String; = "RecordingProgressBar"


# instance fields
.field private mProgressRequestedSizeInKb:J

.field private mScaleRatio:F

.field private mViewBinding:Lo5/y8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mProgressRequestedSizeInKb:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mScaleRatio:F

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    .line 6
    iput-wide p1, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mProgressRequestedSizeInKb:J

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mScaleRatio:F

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->initView()V

    return-void
.end method

.method private getProgressSizeText(J)Ljava/lang/String;
    .locals 9

    const-wide/16 v0, 0x400

    .line 1
    div-long v0, p1, v0

    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    const v3, 0x7f1203ca

    const-string v4, "%d"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v2, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {p2, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-lez v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v6, [Ljava/lang/Object;

    long-to-float p1, p1

    const/high16 p2, 0x44800000    # 1024.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "%.1f"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f12034c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p0, v1}, Lo5/y8;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/y8;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mViewBinding:Lo5/y8;

    return-void
.end method

.method private setProgressBarFontSize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mViewBinding:Lo5/y8;

    iget-object v0, v0, Lo5/y8;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mScaleRatio:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mViewBinding:Lo5/y8;

    iget-object v0, v0, Lo5/y8;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mScaleRatio:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mViewBinding:Lo5/y8;

    iget-object v0, v0, Lo5/y8;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mScaleRatio:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mViewBinding:Lo5/y8;

    iget-object v0, v0, Lo5/y8;->b:Landroid/widget/TextView;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mScaleRatio:F

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setScaleY(F)V

    return-void
.end method

.method private updateCurrentFileSize(J)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mViewBinding:Lo5/y8;

    iget-object v0, v0, Lo5/y8;->a:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->getProgressSizeText(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateMaxFileSize(J)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mViewBinding:Lo5/y8;

    iget-object v0, v0, Lo5/y8;->b:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->getProgressSizeText(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public initProgressBar()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    .line 4
    invoke-static {v2}, Lcom/sec/android/app/camera/util/RecordingUtil;->getByteNumericStringWidth(F)F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12034c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/util/TextUtil;->getStringWidth(Ljava/lang/String;F)F

    move-result v4

    add-float/2addr v3, v4

    .line 5
    invoke-static {v2}, Lcom/sec/android/app/camera/util/RecordingUtil;->getByteNumericStringWidth(F)F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1203ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/sec/android/app/camera/util/TextUtil;->getStringWidth(Ljava/lang/String;F)F

    move-result v2

    add-float/2addr v4, v2

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 7
    sget-object v1, Lu3/b;->b:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mScaleRatio:F

    :goto_0
    mul-float/2addr v0, v2

    .line 8
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mViewBinding:Lo5/y8;

    iget-object v2, v2, Lo5/y8;->c:Landroid/widget/ProgressBar;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 9
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mViewBinding:Lo5/y8;

    iget-object v2, v2, Lo5/y8;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v0, v0

    .line 10
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mViewBinding:Lo5/y8;

    iget-object v0, v0, Lo5/y8;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mScaleRatio:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const v2, 0x3f99999a    # 1.2f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    move v1, v2

    :cond_1
    const v2, 0x3f8ccccd    # 1.1f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 15
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mViewBinding:Lo5/y8;

    iget-object v1, v1, Lo5/y8;->a:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 17
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mViewBinding:Lo5/y8;

    iget-object v1, v1, Lo5/y8;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 18
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mViewBinding:Lo5/y8;

    iget-object v1, v1, Lo5/y8;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mViewBinding:Lo5/y8;

    iget-object v0, v0, Lo5/y8;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 20
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 21
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0705c0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mScaleRatio:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->initProgressBar()V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public start(JF)V
    .locals 2

    .line 1
    iput p3, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mScaleRatio:F

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->initProgressBar()V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->setProgressBarFontSize()V

    const-wide/16 v0, 0x400

    .line 4
    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mProgressRequestedSizeInKb:J

    const-wide/16 p1, 0x0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->updateCurrentFileSize(J)V

    .line 6
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mProgressRequestedSizeInKb:J

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->updateMaxFileSize(J)V

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->update(J)Z

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public update(J)Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mProgressRequestedSizeInKb:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    move-wide p1, v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mViewBinding:Lo5/y8;

    iget-object v0, v0, Lo5/y8;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mViewBinding:Lo5/y8;

    iget-object v2, v2, Lo5/y8;->c:Landroid/widget/ProgressBar;

    const-wide/16 v3, 0x64

    mul-long/2addr v3, p1

    div-long/2addr v3, v0

    long-to-int v0, v3

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->updateCurrentFileSize(J)V

    .line 5
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;->mProgressRequestedSizeInKb:J

    cmp-long p0, p1, v0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
