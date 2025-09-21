.class Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SingleTakeCustomizedOptionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->startTouchUpAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder$1;->this$1:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder$1;->this$1:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->c(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;)Lo5/e8;

    move-result-object p1

    iget-object p1, p1, Lo5/e8;->f:Landroid/widget/RelativeLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder$1;->this$1:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->c(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;)Lo5/e8;

    move-result-object v1

    iget-object v1, v1, Lo5/e8;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder$1;->this$1:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;->a(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder$1;->this$1:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->b(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;)Ln5/y;

    move-result-object v2

    invoke-virtual {v2}, Ln5/y;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f12060f

    goto :goto_0

    :cond_0
    const v2, 0x7f12060e

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder$1;->this$1:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;->a(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;)Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1201f8

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder$1;->this$1:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder$1;->this$1:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;->b(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;)Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ItemEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder$1;->this$1:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;->b(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter;)Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ItemEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ItemEventListener;->onItemClick(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder$1;->this$1:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->c(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;)Lo5/e8;

    move-result-object p1

    iget-object p1, p1, Lo5/e8;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder$1;->this$1:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->b(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;)Ln5/y;

    move-result-object v0

    invoke-virtual {v0}, Ln5/y;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder$1;->this$1:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;->c(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionListAdapter$ViewHolder;)Lo5/e8;

    move-result-object p0

    iget-object p0, p0, Lo5/e8;->f:Landroid/widget/RelativeLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->playSoundEffect(I)V

    return-void
.end method
