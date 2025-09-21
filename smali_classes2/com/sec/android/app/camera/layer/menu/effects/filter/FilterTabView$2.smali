.class Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;
.super Ljava/lang/Object;
.source "FilterTabView.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->getAddingFiltersMenu()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public prepareRotation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public refreshLayout(Z)V
    .locals 9

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {v1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->v(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)Lo5/a;

    move-result-object v1

    iget-object v1, v1, Lo5/a;->a:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {v1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->v(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)Lo5/a;

    move-result-object v1

    iget-object v1, v1, Lo5/a;->a:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRotation()F

    move-result v1

    float-to-int v1, v1

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070155

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {v3}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->v(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)Lo5/a;

    move-result-object v3

    iget-object v3, v3, Lo5/a;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    const/4 v4, 0x6

    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {v3}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->v(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)Lo5/a;

    move-result-object v3

    iget-object v3, v3, Lo5/a;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    const/4 v5, 0x7

    invoke-virtual {v0, v3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 7
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {v3}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->v(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)Lo5/a;

    move-result-object v3

    iget-object v3, v3, Lo5/a;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    const/4 v6, 0x4

    invoke-virtual {v0, v3, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 8
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {v3}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->v(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)Lo5/a;

    move-result-object v3

    iget-object v3, v3, Lo5/a;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    const/4 v7, 0x3

    invoke-virtual {v0, v3, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 9
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {v3}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->v(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)Lo5/a;

    move-result-object v3

    iget-object v3, v3, Lo5/a;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v6, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 10
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {v3}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->v(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)Lo5/a;

    move-result-object v3

    iget-object v3, v3, Lo5/a;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {v0, v3, v7, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->v(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)Lo5/a;

    move-result-object p1

    iget-object p1, p1, Lo5/a;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v0, p1, v4, v8, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->v(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)Lo5/a;

    move-result-object p1

    iget-object p1, p1, Lo5/a;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v0, p1, v7, v8, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 13
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->v(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)Lo5/a;

    move-result-object p1

    iget-object p1, p1, Lo5/a;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v0, p1, v7, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    goto :goto_1

    :cond_0
    const/16 p1, 0x5a

    if-ne v1, p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->v(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)Lo5/a;

    move-result-object p1

    iget-object p1, p1, Lo5/a;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v0, p1, v5, v8, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->v(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)Lo5/a;

    move-result-object p1

    iget-object p1, p1, Lo5/a;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v0, p1, v4, v8, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 16
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->v(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)Lo5/a;

    move-result-object p1

    iget-object p1, p1, Lo5/a;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v0, p1, v6, v8, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 17
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->v(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)Lo5/a;

    move-result-object p1

    iget-object p1, p1, Lo5/a;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v0, p1, v6, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 18
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->v(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)Lo5/a;

    move-result-object p0

    iget-object p0, p0, Lo5/a;->a:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method
