.class Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$2;
.super Ljava/lang/Object;
.source "AeAfView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->makeDivideAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->i(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->j(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->n(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Lo5/j4;

    move-result-object p1

    iget-object p1, p1, Lo5/j4;->b:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/DivideAeAfGroup;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->n(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Lo5/j4;

    move-result-object p1

    iget-object p1, p1, Lo5/j4;->c:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/DivideAeAfGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->n(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Lo5/j4;

    move-result-object p1

    iget-object p1, p1, Lo5/j4;->c:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/DivideAeAfGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/DivideAeAfGroup;->getAeAfText()Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120190

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->n(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Lo5/j4;

    move-result-object p1

    iget-object p1, p1, Lo5/j4;->b:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/DivideAeAfGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->n(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Lo5/j4;

    move-result-object p1

    iget-object p1, p1, Lo5/j4;->c:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/DivideAeAfGroup;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->n(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Lo5/j4;

    move-result-object p1

    iget-object p1, p1, Lo5/j4;->c:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/DivideAeAfGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/DivideAeAfGroup;->getAeAfText()Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f12018f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
