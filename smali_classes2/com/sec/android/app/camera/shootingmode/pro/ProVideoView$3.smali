.class Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$3;
.super Ljava/lang/Object;
.source "ProVideoView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->refreshAudioGuidePosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704c6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0704c5

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    .line 3
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->o(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)Lo5/u7;

    move-result-object p2

    iget-object p2, p2, Lo5/u7;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getHeight()I

    move-result p2

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;

    invoke-static {p3}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->o(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)Lo5/u7;

    move-result-object p3

    iget-object p3, p3, Lo5/u7;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f0704be

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    add-float/2addr p2, p4

    .line 4
    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;

    invoke-static {p4}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->o(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)Lo5/u7;

    move-result-object p4

    iget-object p4, p4, Lo5/u7;->k:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;

    invoke-virtual {p4}, Landroid/widget/RelativeLayout;->getY()F

    move-result p4

    iget-object p5, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;

    invoke-static {p5}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->o(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)Lo5/u7;

    move-result-object p5

    iget-object p5, p5, Lo5/u7;->u:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p5}, Landroid/view/View;->getY()F

    move-result p5

    add-float/2addr p4, p5

    add-float/2addr p4, p1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->o(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)Lo5/u7;

    move-result-object p1

    iget-object p1, p1, Lo5/u7;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p4, p1

    div-float/2addr p4, p3

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->n(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->access$000(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)I

    move-result p1

    const/16 p3, -0x5a

    if-ne p1, p3, :cond_0

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0704bf

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    add-float/2addr p2, p1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->o(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)Lo5/u7;

    move-result-object p1

    iget-object p1, p1, Lo5/u7;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setX(F)V

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$3;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->o(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)Lo5/u7;

    move-result-object p0

    iget-object p0, p0, Lo5/u7;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setY(F)V

    return-void
.end method
