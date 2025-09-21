.class Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$1;
.super Ljava/lang/Object;
.source "EffectsMenuView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->p(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->r(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;Z)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->access$000(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;->onPreviewLongPressStart()V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 p3, 0x1

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p4

    if-le p4, p3, :cond_1

    return p3

    .line 2
    :cond_1
    iget-object p4, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f0705da

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    .line 5
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p4

    if-lez v1, :cond_3

    cmpl-float p1, v0, v3

    if-gtz p1, :cond_2

    move v2, p3

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->o(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->q(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)Lo5/g2;

    move-result-object p1

    iget-object p1, p1, Lo5/g2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->q(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)Lo5/g2;

    move-result-object p1

    iget-object p1, p1, Lo5/g2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->handlePreviewSwipeEvent(Z)V

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;

    invoke-static {p0, p3}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->s(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;Z)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p4

    if-lez p1, :cond_5

    cmpl-float p1, p2, v3

    if-gtz p1, :cond_4

    move v2, p3

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->o(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->q(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)Lo5/g2;

    move-result-object p1

    iget-object p1, p1, Lo5/g2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->q(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)Lo5/g2;

    move-result-object p1

    iget-object p1, p1, Lo5/g2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->handlePreviewSwipeEvent(Z)V

    .line 14
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;

    invoke-static {p0, p3}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->s(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;Z)V

    :cond_5
    :goto_0
    return p3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
