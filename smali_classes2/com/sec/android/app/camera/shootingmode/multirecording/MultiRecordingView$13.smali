.class Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiRecordingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startSlideUpAnimationMultiPreviewList(ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;

.field final synthetic val$inputType:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;

.field final synthetic val$needQuickAnimation:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$13;->this$0:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;

    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$13;->val$needQuickAnimation:Z

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$13;->val$inputType:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$13;->this$0:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->F(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$13;->this$0:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$13;->val$needQuickAnimation:Z

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$13;->val$inputType:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->M(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V

    return-void
.end method
