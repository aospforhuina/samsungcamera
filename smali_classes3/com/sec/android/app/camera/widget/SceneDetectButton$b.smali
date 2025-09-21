.class Lcom/sec/android/app/camera/widget/SceneDetectButton$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SceneDetectButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/SceneDetectButton;->C(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/sec/android/app/camera/widget/SceneDetectButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/SceneDetectButton;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$b;->b:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    iput-boolean p2, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$b;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/widget/SceneDetectButton$b;ZLcom/sec/android/app/camera/widget/SceneDetectButton$h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/SceneDetectButton$b;->b(ZLcom/sec/android/app/camera/widget/SceneDetectButton$h;)V

    return-void
.end method

.method private synthetic b(ZLcom/sec/android/app/camera/widget/SceneDetectButton$h;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$b;->b:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-static {p0}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->i(Lcom/sec/android/app/camera/widget/SceneDetectButton;)Lo5/i6;

    move-result-object p0

    iget-object p0, p0, Lo5/i6;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/camera/widget/SceneDetectButton$h;->b()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/camera/widget/SceneDetectButton$h;->a()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$b;->b:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-static {p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->i(Lcom/sec/android/app/camera/widget/SceneDetectButton;)Lo5/i6;

    move-result-object p1

    iget-object p1, p1, Lo5/i6;->b:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$b;->b:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-static {p0}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->i(Lcom/sec/android/app/camera/widget/SceneDetectButton;)Lo5/i6;

    move-result-object p0

    iget-object p0, p0, Lo5/i6;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$b;->b:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-static {p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->h(Lcom/sec/android/app/camera/widget/SceneDetectButton;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$b;->b:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->j(Lcom/sec/android/app/camera/widget/SceneDetectButton;Z)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$b;->b:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-static {p0}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->g(Lcom/sec/android/app/camera/widget/SceneDetectButton;)I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->m(Lcom/sec/android/app/camera/widget/SceneDetectButton;IZ)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->n()Landroid/util/SparseArray;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$b;->b:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->g(Lcom/sec/android/app/camera/widget/SceneDetectButton;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/widget/SceneDetectButton$h;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton$b;->a:Z

    new-instance v1, Lcom/sec/android/app/camera/widget/h0;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/camera/widget/h0;-><init>(Lcom/sec/android/app/camera/widget/SceneDetectButton$b;Z)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method
