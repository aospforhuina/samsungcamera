.class Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProTipsButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->getOnClickAnimatorSet()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setScaleX(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setScaleY(F)V

    return-void
.end method
