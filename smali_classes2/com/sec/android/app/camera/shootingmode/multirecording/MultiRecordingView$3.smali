.class Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiRecordingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->updateStopRecordingLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;

.field final synthetic val$withAnimation:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;

    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$3;->val$withAnimation:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->F(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$3;->val$withAnimation:Z

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->updateStopRecordingLayout(Z)V

    return-void
.end method
