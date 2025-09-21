.class Lcom/sec/android/app/camera/widget/SceneDetectButton$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SceneDetectButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/SceneDetectButton;->E(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/sec/android/app/camera/widget/SceneDetectButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/SceneDetectButton;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$e;->c:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    iput p2, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$e;->a:I

    iput-boolean p3, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$e;->b:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$e;->c:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    iget v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$e;->a:I

    iget-boolean p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$e;->b:Z

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->l(Lcom/sec/android/app/camera/widget/SceneDetectButton;IZ)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$e;->c:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-static {p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->i(Lcom/sec/android/app/camera/widget/SceneDetectButton;)Lo5/i6;

    move-result-object p1

    iget-object p1, p1, Lo5/i6;->b:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$e;->c:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-static {p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->i(Lcom/sec/android/app/camera/widget/SceneDetectButton;)Lo5/i6;

    move-result-object p1

    iget-object p1, p1, Lo5/i6;->a:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setScaleX(F)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$e;->c:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-static {p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->i(Lcom/sec/android/app/camera/widget/SceneDetectButton;)Lo5/i6;

    move-result-object p1

    iget-object p1, p1, Lo5/i6;->a:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setScaleY(F)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$e;->c:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-static {p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->i(Lcom/sec/android/app/camera/widget/SceneDetectButton;)Lo5/i6;

    move-result-object p1

    iget-object p1, p1, Lo5/i6;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$e;->c:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-static {p0}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->i(Lcom/sec/android/app/camera/widget/SceneDetectButton;)Lo5/i6;

    move-result-object p0

    iget-object p0, p0, Lo5/i6;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$e;->c:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
