.class Lcom/sec/android/app/camera/widget/ExpandableSlider$a;
.super Ljava/lang/Object;
.source "ExpandableSlider.java"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/ExpandableSlider;->b()Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sec/android/app/camera/widget/ExpandableSlider;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/ExpandableSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/widget/Slider;->c(I)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    iget p3, p2, Lcom/sec/android/app/camera/widget/Slider;->c:I

    div-int/2addr p1, p3

    .line 2
    invoke-virtual {p2}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getLevelTextView()Landroid/widget/TextView;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p2, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getActiveLevelTextView()Landroid/widget/TextView;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Slider;->k:Lcom/sec/android/app/camera/widget/Slider$b;

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/widget/Slider$b;->a(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-static {p1}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->n(Lcom/sec/android/app/camera/widget/ExpandableSlider;)Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    sget-object v0, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;->b:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o(Lcom/sec/android/app/camera/widget/ExpandableSlider;Lcom/sec/android/app/camera/widget/ExpandableSlider$c;)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    .line 5
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/camera/widget/ExpandableSlider$a$a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider$a$a;-><init>(Lcom/sec/android/app/camera/widget/ExpandableSlider$a;)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getLevelTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    .line 11
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a$b;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider$a$b;-><init>(Lcom/sec/android/app/camera/widget/ExpandableSlider$a;)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 15
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Slider;->l:Lcom/sec/android/app/camera/widget/Slider$d;

    if-eqz p0, :cond_1

    .line 16
    invoke-interface {p0}, Lcom/sec/android/app/camera/widget/Slider$d;->onStartTrackingTouch()V

    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/Slider;->c(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    iget v3, v2, Lcom/sec/android/app/camera/widget/Slider;->c:I

    div-int/2addr v1, v3

    iput v1, v0, Lcom/sec/android/app/camera/widget/Slider;->d:I

    .line 2
    iget v0, v2, Lcom/sec/android/app/camera/widget/Slider;->d:I

    mul-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-static {p1}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->n(Lcom/sec/android/app/camera/widget/ExpandableSlider;)Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    if-ne p1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->o(Lcom/sec/android/app/camera/widget/ExpandableSlider;Lcom/sec/android/app/camera/widget/ExpandableSlider$c;)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getActiveLevelTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    .line 7
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a$c;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider$a$c;-><init>(Lcom/sec/android/app/camera/widget/ExpandableSlider$a;)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Slider;->l:Lcom/sec/android/app/camera/widget/Slider$d;

    if-eqz p0, :cond_1

    .line 12
    invoke-interface {p0}, Lcom/sec/android/app/camera/widget/Slider$d;->onStopTrackingTouch()V

    :cond_1
    return-void
.end method
