.class public Lcom/sec/android/app/camera/widget/ExpandableSlider;
.super Lcom/sec/android/app/camera/widget/Slider;
.source "ExpandableSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/ExpandableSlider$b;,
        Lcom/sec/android/app/camera/widget/ExpandableSlider$d;,
        Lcom/sec/android/app/camera/widget/ExpandableSlider$c;
    }
.end annotation


# instance fields
.field private n:Landroid/graphics/Rect;

.field private o:Lo5/c9;

.field private p:Lcom/sec/android/app/camera/widget/ExpandableSlider$d;

.field private q:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

.field protected r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/Slider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->n:Landroid/graphics/Rect;

    .line 3
    sget-object p1, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->q:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/widget/ExpandableSlider;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->t()V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/widget/ExpandableSlider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->u(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic n(Lcom/sec/android/app/camera/widget/ExpandableSlider;)Lcom/sec/android/app/camera/widget/ExpandableSlider$c;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->q:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/sec/android/app/camera/widget/ExpandableSlider;Lcom/sec/android/app/camera/widget/ExpandableSlider$c;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->q:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    return-void
.end method

.method static bridge synthetic p(Lcom/sec/android/app/camera/widget/ExpandableSlider;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->w(Landroid/widget/TextView;)V

    return-void
.end method

.method private q(I)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 p0, 0x1

    new-array v0, p0, [[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    aput-object v2, v0, v1

    new-instance v2, Landroid/content/res/ColorStateList;

    new-array p0, p0, [I

    aput p1, p0, v1

    invoke-direct {v2, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private synthetic t()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic u(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->p:Lcom/sec/android/app/camera/widget/ExpandableSlider$d;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/widget/ExpandableSlider$d;->onSliderTouch()Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->q:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    sget-object p2, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;->c:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    if-ne p1, p2, :cond_3

    .line 4
    sget-object p1, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->q:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->q:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    sget-object p2, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    if-ne p1, p2, :cond_3

    .line 6
    sget-object p1, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;->c:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->q:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private w(Landroid/widget/TextView;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method protected b()Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;-><init>(Lcom/sec/android/app/camera/widget/ExpandableSlider;)V

    return-object v0
.end method

.method protected d()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->s()V

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/widget/SeslProgressBar;->getMaxHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060436

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->q(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;-><init>(Lcom/sec/android/app/camera/widget/ExpandableSlider;FFLandroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/Slider;->f:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->q(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->q(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060434

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->q(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/widget/c;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/c;-><init>(Lcom/sec/android/app/camera/widget/ExpandableSlider;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/Slider;->a:Z

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v2, v2, Lo5/c9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sget-object v3, Lu3/b;->b:Lu3/b;

    invoke-static {v3}, Lu3/d;->e(Lu3/b;)Z

    move-result v4

    const v5, 0x7f0707da

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    .line 5
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v4, v4, Lo5/c9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v6, v6, Lo5/c9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-static {v3}, Lu3/d;->e(Lu3/b;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v6, v0

    mul-int/2addr v4, v6

    iget v0, p0, Lcom/sec/android/app/camera/widget/Slider;->b:I

    add-int/lit8 v0, v0, -0x1

    iget v6, p0, Lcom/sec/android/app/camera/widget/Slider;->c:I

    mul-int/2addr v0, v6

    div-int/2addr v4, v0

    add-int/2addr v4, v2

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/Slider;->f:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v6, v6, Lo5/c9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v6}, Landroidx/appcompat/widget/SeslProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7
    invoke-static {v3}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 11
    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v0, v0, Lo5/c9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v1, v1, Lo5/c9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v5, v5, Lo5/c9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v1, v5

    neg-int v1, v1

    int-to-float v1, v1

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v0, v0, Lo5/c9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16
    :goto_1
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 17
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Slider;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v0, v0, Lo5/c9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v1, v1, Lo5/c9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 20
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 21
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Slider;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public e(IIZI)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/widget/Slider;->e(IIZI)V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getActiveLevelTextView()Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-boolean p1, p0, Lcom/sec/android/app/camera/widget/Slider;->a:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->q(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SeslProgressBar;->setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->q(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p1

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 7
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060436

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->q(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    :goto_0
    return-void
.end method

.method protected f(Z)V
    .locals 0

    return-void
.end method

.method public g(I)V
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getLevelTextView()Landroid/widget/TextView;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getActiveLevelTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getLevelTextView()Landroid/widget/TextView;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getActiveLevelTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRotation(F)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lcom/sec/android/app/camera/widget/d;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/widget/d;-><init>(Lcom/sec/android/app/camera/widget/ExpandableSlider;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method protected getActiveLevelTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object p0, p0, Lo5/c9;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method protected getLevelTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object p0, p0, Lo5/c9;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method protected getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object p0, p0, Lo5/c9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    return-object p0
.end method

.method protected getTitleTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object p0, p0, Lo5/c9;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method protected h()V
    .locals 4

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->r:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 5
    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    :cond_1
    int-to-float v0, v1

    mul-float/2addr v0, v2

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v2

    add-float v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getLevelTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getActiveLevelTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    :cond_2
    return-void
.end method

.method protected i()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->n:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/Slider;->f:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->n:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/widget/Slider;->onMeasure(II)V

    .line 2
    iget-boolean p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->r:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->h()V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/widget/e;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/e;-><init>(Lcom/sec/android/app/camera/widget/ExpandableSlider;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method protected s()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p0, v1}, Lo5/c9;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/c9;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    return-void
.end method

.method public setSliderTouchListener(Lcom/sec/android/app/camera/widget/ExpandableSlider$d;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->p:Lcom/sec/android/app/camera/widget/ExpandableSlider$d;

    return-void
.end method

.method public v()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b006a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method protected x()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070141

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 4
    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v0, v0, Lo5/c9;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x800035

    .line 6
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 7
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 8
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v3, v3, Lo5/c9;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v0, v0, Lo5/c9;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x800015

    .line 10
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 11
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 12
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v1, v1, Lo5/c9;->b:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 13
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v1, v1, Lo5/c9;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v0, v0, Lo5/c9;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800055

    .line 15
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 16
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 17
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v1, v1, Lo5/c9;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v0, v0, Lo5/c9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800005

    .line 19
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 20
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v1, v1, Lo5/c9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v0, v0, Lo5/c9;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x800033

    .line 22
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 23
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 24
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v3, v3, Lo5/c9;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v0, v0, Lo5/c9;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x800013

    .line 26
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 27
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 28
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v1, v1, Lo5/c9;->b:Landroid/widget/TextView;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 29
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v1, v1, Lo5/c9;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v0, v0, Lo5/c9;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800053

    .line 31
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 32
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 33
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v1, v1, Lo5/c9;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v0, v0, Lo5/c9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800003

    .line 35
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 36
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o:Lo5/c9;

    iget-object v1, v1, Lo5/c9;->a:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->h()V

    return-void
.end method
