.class Lcom/sec/android/app/camera/widget/Slider$a;
.super Ljava/lang/Object;
.source "Slider.java"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/Slider;->b()Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sec/android/app/camera/widget/Slider;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/Slider;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/Slider$a;->a:Lcom/sec/android/app/camera/widget/Slider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/Slider$a;->a:Lcom/sec/android/app/camera/widget/Slider;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/widget/Slider;->c(I)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/camera/widget/Slider$a;->a:Lcom/sec/android/app/camera/widget/Slider;

    iget p3, p2, Lcom/sec/android/app/camera/widget/Slider;->c:I

    div-int/2addr p1, p3

    .line 2
    invoke-virtual {p2}, Lcom/sec/android/app/camera/widget/Slider;->getLevelTextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/sec/android/app/camera/widget/Slider$a;->a:Lcom/sec/android/app/camera/widget/Slider;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/widget/Slider;->getLevelTextView()Landroid/widget/TextView;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/widget/Slider$a;->a:Lcom/sec/android/app/camera/widget/Slider;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Slider$a;->a:Lcom/sec/android/app/camera/widget/Slider;

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Slider;->k:Lcom/sec/android/app/camera/widget/Slider$b;

    if-eqz p0, :cond_1

    .line 6
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/widget/Slider$b;->a(I)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Slider$a;->a:Lcom/sec/android/app/camera/widget/Slider;

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Slider;->l:Lcom/sec/android/app/camera/widget/Slider$d;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/widget/Slider$d;->onStartTrackingTouch()V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/Slider$a;->a:Lcom/sec/android/app/camera/widget/Slider;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/Slider;->c(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/Slider$a;->a:Lcom/sec/android/app/camera/widget/Slider;

    iget v3, v2, Lcom/sec/android/app/camera/widget/Slider;->c:I

    div-int/2addr v1, v3

    iput v1, v0, Lcom/sec/android/app/camera/widget/Slider;->d:I

    .line 2
    iget v0, v2, Lcom/sec/android/app/camera/widget/Slider;->d:I

    mul-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Slider$a;->a:Lcom/sec/android/app/camera/widget/Slider;

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Slider;->l:Lcom/sec/android/app/camera/widget/Slider$d;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/sec/android/app/camera/widget/Slider$d;->onStopTrackingTouch()V

    :cond_0
    return-void
.end method
