.class public Lcom/sec/android/app/camera/widget/Slider$c;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/Slider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/sec/android/app/camera/widget/Slider;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/widget/Slider;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/Slider$c;->a:Lcom/sec/android/app/camera/widget/Slider;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2
    const-class p0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 3
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    const/16 p0, 0x1000

    .line 4
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/16 p0, 0x2000

    .line 5
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    const/16 v0, 0x1000

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/Slider$c;->a:Lcom/sec/android/app/camera/widget/Slider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/widget/Slider;->c(I)I

    move-result p2

    iget-object p3, p0, Lcom/sec/android/app/camera/widget/Slider$c;->a:Lcom/sec/android/app/camera/widget/Slider;

    iget v0, p3, Lcom/sec/android/app/camera/widget/Slider;->c:I

    div-int/2addr p2, v0

    iput p2, p1, Lcom/sec/android/app/camera/widget/Slider;->d:I

    .line 3
    invoke-virtual {p3}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Slider$c;->a:Lcom/sec/android/app/camera/widget/Slider;

    iget p2, p0, Lcom/sec/android/app/camera/widget/Slider;->d:I

    sub-int/2addr p2, v1

    iget p0, p0, Lcom/sec/android/app/camera/widget/Slider;->c:I

    mul-int/2addr p2, p0

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    return v1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/Slider$c;->a:Lcom/sec/android/app/camera/widget/Slider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/widget/Slider;->c(I)I

    move-result p2

    iget-object p3, p0, Lcom/sec/android/app/camera/widget/Slider$c;->a:Lcom/sec/android/app/camera/widget/Slider;

    iget v0, p3, Lcom/sec/android/app/camera/widget/Slider;->c:I

    div-int/2addr p2, v0

    iput p2, p1, Lcom/sec/android/app/camera/widget/Slider;->d:I

    .line 5
    invoke-virtual {p3}, Lcom/sec/android/app/camera/widget/Slider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Slider$c;->a:Lcom/sec/android/app/camera/widget/Slider;

    iget p2, p0, Lcom/sec/android/app/camera/widget/Slider;->d:I

    add-int/2addr p2, v1

    iget p0, p0, Lcom/sec/android/app/camera/widget/Slider;->c:I

    mul-int/2addr p2, p0

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    return v1
.end method
