.class Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecordingTimeIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$b;->a:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$b;->a:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$b;->a:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-static {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->g(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;)Lo5/k9;

    move-result-object p0

    iget-object p0, p0, Lo5/k9;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$b;->a:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$b;->a:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-static {p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->g(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;)Lo5/k9;

    move-result-object p1

    iget-object p1, p1, Lo5/k9;->m:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$b;->a:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-static {p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->g(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;)Lo5/k9;

    move-result-object p1

    iget-object p1, p1, Lo5/k9;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$b;->a:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-static {p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->g(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;)Lo5/k9;

    move-result-object p1

    iget-object p1, p1, Lo5/k9;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$b;->a:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-static {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->g(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;)Lo5/k9;

    move-result-object p0

    iget-object p0, p0, Lo5/k9;->a:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
