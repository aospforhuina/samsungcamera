.class Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;
.super Ljava/lang/Object;
.source "AeAfView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field private mIsTouchDownInDeadZone:Z

.field private final mSwipeIgnoreArea:I

.field final synthetic this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070858

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->mSwipeIgnoreArea:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->mIsTouchDownInDeadZone:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)V

    return-void
.end method

.method private checkDeadZone(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->l(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->l(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 3
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->mSwipeIgnoreArea:I

    int-to-float v2, v1

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->mIsTouchDownInDeadZone:Z

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->q(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;Z)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->o(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;Z)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->p(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;Z)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->r(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;Z)V

    .line 5
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->checkDeadZone(Landroid/view/MotionEvent;)V

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->mIsTouchDownInDeadZone:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->mIsTouchDownInDeadZone:Z

    if-eqz p1, :cond_8

    if-nez p2, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->k(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string p0, "AeAfView"

    const-string p1, "onFling : Returned because touch event is consumed."

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0705da

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v0

    if-gez v3, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    return v1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->l(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_5

    .line 8
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p1, p1, p3

    if-gez p1, :cond_7

    cmpg-float p1, p4, p2

    if-gez p1, :cond_4

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->m(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    move-result-object p0

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onFlingVertical(I)Z

    move-result p0

    return p0

    .line 10
    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->m(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onFlingVertical(I)Z

    move-result p0

    return p0

    .line 11
    :cond_5
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpl-float p1, p1, p4

    if-lez p1, :cond_7

    cmpl-float p1, p3, p2

    if-lez p1, :cond_6

    .line 12
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->m(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    move-result-object p0

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onFlingHorizontal(I)Z

    move-result p0

    return p0

    .line 13
    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->m(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    move-result-object p0

    const/4 p1, 0x4

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onFlingHorizontal(I)Z

    move-result p0

    return p0

    :cond_7
    return v2

    :cond_8
    :goto_0
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->g(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AeAfView"

    const-string p1, "onLongPress : Returned because it is not in touch boundary."

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->h(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->m(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onLongPressEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->p(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;Z)V

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->o(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;Z)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
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
