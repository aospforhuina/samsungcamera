.class Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BokehLightingSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->startSeekBarExpandAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$2;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$2;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->i(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;Z)V

    return-void
.end method
