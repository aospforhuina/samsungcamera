.class Lcom/sec/android/app/camera/widget/ExpandableSlider$a$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandableSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sec/android/app/camera/widget/ExpandableSlider$a;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/ExpandableSlider$a;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a$b;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a$b;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider$a;

    iget-object p1, p1, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getLevelTextView()Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a$b;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider$a;

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getActiveLevelTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->p(Lcom/sec/android/app/camera/widget/ExpandableSlider;Landroid/widget/TextView;)V

    return-void
.end method
