.class Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SingleTakeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->showTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$6;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$6;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->n(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)Lo5/c8;

    move-result-object p1

    iget-object p1, p1, Lo5/c8;->w:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->p()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$6;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->n(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)Lo5/c8;

    move-result-object p1

    iget-object p1, p1, Lo5/c8;->w:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$6;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->n(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)Lo5/c8;

    move-result-object p0

    iget-object p0, p0, Lo5/c8;->w:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
