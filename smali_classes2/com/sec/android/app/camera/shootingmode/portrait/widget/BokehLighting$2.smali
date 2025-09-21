.class Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BokehLighting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->startScaleDownAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$2;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$2;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->g(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method
