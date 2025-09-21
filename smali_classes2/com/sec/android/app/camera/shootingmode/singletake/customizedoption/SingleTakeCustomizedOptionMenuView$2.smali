.class Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SingleTakeCustomizedOptionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;->startHideAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;->o(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;->n(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView$VisibilityEventListener;

    .line 5
    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView$VisibilityEventListener;->onVisibilityChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
