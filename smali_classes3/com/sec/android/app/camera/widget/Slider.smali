.class public Lcom/sec/android/app/camera/widget/Slider;
.super Landroid/widget/FrameLayout;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/Slider$c;,
        Lcom/sec/android/app/camera/widget/Slider$d;,
        Lcom/sec/android/app/camera/widget/Slider$b;
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:I

.field protected c:I

.field protected d:I

.field protected f:Landroid/graphics/drawable/Drawable;

.field protected g:Landroid/graphics/drawable/Drawable;

.field protected k:Lcom/sec/android/app/camera/widget/Slider$b;

.field protected l:Lcom/sec/android/app/camera/widget/Slider$d;

.field private m:Lo5/m9;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/widget/Slider;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/Slider;->j()V

    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/Slider;->m:Lo5/m9;

    iget-object v1, v1, Lo5/m9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/Slider;->m:Lo5/m9;

    iget-object v2, v2, Lo5/m9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 4
    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Slider;->m:Lo5/m9;

    iget-object p0, p0, Lo5/m9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    return-void
.end method

.method private j()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 2
    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v0

    const/16 v1, 0x14

    const/16 v2, 0x15

    const v3, 0x7f0707d8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getLevelTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getLevelTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 9
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getLevelTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 18
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getLevelTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 23
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 24
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/Slider;->m:Lo5/m9;

    iget-object v0, v0, Lo5/m9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 28
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 30
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/Slider;->h()V

    return-void
.end method


# virtual methods
.method protected b()Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/widget/Slider$a;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/Slider$a;-><init>(Lcom/sec/android/app/camera/widget/Slider;)V

    return-object v0
.end method

.method protected final c(I)I
    .locals 3

    if-gez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/Slider;->c:I

    div-int/lit8 v2, v1, 0x2

    mul-int/2addr v0, v2

    add-int/2addr p1, v0

    div-int/2addr p1, v1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p0, p0, Lcom/sec/android/app/camera/widget/Slider;->c:I

    mul-int/2addr p1, p0

    return p1
.end method

.method protected d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p0, v1}, Lo5/m9;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/m9;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/Slider;->m:Lo5/m9;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080892

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/Slider;->f:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080893

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/Slider;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public e(IIZI)V
    .locals 1

    .line 1
    iput p4, p0, Lcom/sec/android/app/camera/widget/Slider;->d:I

    .line 2
    iput p2, p0, Lcom/sec/android/app/camera/widget/Slider;->b:I

    .line 3
    iput-boolean p3, p0, Lcom/sec/android/app/camera/widget/Slider;->a:Z

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getLevelTextView()Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/camera/widget/Slider$c;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/widget/Slider$c;-><init>(Lcom/sec/android/app/camera/widget/Slider;)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 8
    invoke-virtual {p0, p3}, Lcom/sec/android/app/camera/widget/Slider;->f(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->b()Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    .line 10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->k()V

    return-void
.end method

.method protected f(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080891

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/Slider;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    :goto_0
    return-void
.end method

.method public g(I)V
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getLevelTextView()Landroid/widget/TextView;

    move-result-object p0

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/sec/android/app/camera/widget/n0;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/widget/n0;-><init>(Lcom/sec/android/app/camera/widget/Slider;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method protected getLevelTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Slider;->m:Lo5/m9;

    iget-object p0, p0, Lo5/m9;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getProgress()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p0

    return p0
.end method

.method protected getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Slider;->m:Lo5/m9;

    iget-object p0, p0, Lo5/m9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    return-object p0
.end method

.method protected getTitleTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Slider;->m:Lo5/m9;

    iget-object p0, p0, Lo5/m9;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method protected i()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/Slider;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/Slider;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/Slider;->b:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/Slider;->c:I

    mul-int/2addr v2, v4

    div-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/widget/SeslProgressBar;->getMaxHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/widget/SeslProgressBar;->getMaxHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Slider;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v5, v2, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return v3

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected final k()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/widget/Slider;->b:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/Slider;->b:I

    div-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0178

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/sec/android/app/camera/widget/Slider;->c:I

    .line 3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/Slider;->a:Z

    if-eqz v0, :cond_2

    .line 4
    iget v0, p0, Lcom/sec/android/app/camera/widget/Slider;->b:I

    div-int/lit8 v0, v0, 0x2

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/Slider;->c:I

    mul-int/2addr v2, v0

    neg-int v2, v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMin(I)V

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/Slider;->c:I

    mul-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMin(I)V

    .line 8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/Slider;->b:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sec/android/app/camera/widget/Slider;->c:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 9
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/Slider;->d:I

    iget p0, p0, Lcom/sec/android/app/camera/widget/Slider;->c:I

    mul-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 6
    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/Slider;->m:Lo5/m9;

    iget-object v0, v0, Lo5/m9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/Slider;->m:Lo5/m9;

    iget-object v2, v2, Lo5/m9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/Slider;->m:Lo5/m9;

    iget-object v3, v3, Lo5/m9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/Slider;->m:Lo5/m9;

    iget-object v0, v0, Lo5/m9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/Slider;->m:Lo5/m9;

    iget-object v2, v2, Lo5/m9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/Slider;->m:Lo5/m9;

    iget-object v3, v3, Lo5/m9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/Slider;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/Slider;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 12
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    iget p1, p0, Lcom/sec/android/app/camera/widget/Slider;->b:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/sec/android/app/camera/widget/Slider;->c:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget v0, p0, Lcom/sec/android/app/camera/widget/Slider;->b:I

    div-int/2addr p2, v0

    if-ge p1, p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->k()V

    .line 4
    :cond_0
    instance-of p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;

    if-nez p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/Slider;->h()V

    :cond_1
    return-void
.end method

.method public setContentDescription(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setCustomBackground(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/Slider;->g:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Slider;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setLevelVisibility(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getLevelTextView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final setProgress(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/widget/Slider;->d:I

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/Slider;->c:I

    mul-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/Slider;->c(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    return-void
.end method

.method public final setProgressChangeListener(Lcom/sec/android/app/camera/widget/Slider$b;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/Slider;->k:Lcom/sec/android/app/camera/widget/Slider$b;

    return-void
.end method

.method public setSliderTitleVisibility(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final setTrackingTouchListener(Lcom/sec/android/app/camera/widget/Slider$d;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/Slider;->l:Lcom/sec/android/app/camera/widget/Slider$d;

    return-void
.end method
