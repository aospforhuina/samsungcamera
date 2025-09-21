.class Lcom/sec/android/app/camera/widget/SceneDetectButton$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SceneDetectButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/SceneDetectButton;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sec/android/app/camera/widget/SceneDetectButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/SceneDetectButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$c;->a:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$c;->a:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-static {p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->f(Lcom/sec/android/app/camera/widget/SceneDetectButton;)Lcom/sec/android/app/camera/widget/SceneDetectButton$f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$c;->a:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-static {p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->f(Lcom/sec/android/app/camera/widget/SceneDetectButton;)Lcom/sec/android/app/camera/widget/SceneDetectButton$f;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton$f;->a()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$c;->a:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$c;->a:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-static {p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->i(Lcom/sec/android/app/camera/widget/SceneDetectButton;)Lo5/i6;

    move-result-object v0

    iget-object v0, v0, Lo5/i6;->a:Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->k(Lcom/sec/android/app/camera/widget/SceneDetectButton;Landroid/view/View;)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$c;->a:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-static {p0}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->i(Lcom/sec/android/app/camera/widget/SceneDetectButton;)Lo5/i6;

    move-result-object p1

    iget-object p1, p1, Lo5/i6;->b:Landroid/widget/ImageView;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->k(Lcom/sec/android/app/camera/widget/SceneDetectButton;Landroid/view/View;)V

    return-void
.end method
