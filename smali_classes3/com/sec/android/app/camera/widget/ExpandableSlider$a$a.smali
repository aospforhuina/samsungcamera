.class Lcom/sec/android/app/camera/widget/ExpandableSlider$a$a;
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

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider$a;

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$a;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
