.class Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;
.super Landroid/content/BroadcastReceiver;
.source "RotatableConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;->a:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;->b(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object p2, Lu3/b;->b:Lu3/b;

    invoke-static {p2}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;->a:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->c(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;->a:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->c(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;->a:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->g(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;Ljava/lang/Integer;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;->a:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->e(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;)Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;->a:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->d(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;->a:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->b(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    const-string v2, "orientation"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;->a:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->b(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;->a:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-static {p1}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->e(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;)Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;->a:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-static {p1}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->e(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;)Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;->a:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRotation()F

    move-result p2

    const/high16 v0, -0x3d4c0000    # -90.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;->refreshLayout(Z)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {p2}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;->a:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRotation()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->onRotate(I)V

    .line 10
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;->a:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-static {p0, v1}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->f(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;Ljava/lang/Integer;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/widget/a0;

    const-string v1, "camera.action.CONFIGURATION_ORIENTATION"

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/a0;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/widget/z;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/camera/widget/z;-><init>(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$a;Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
