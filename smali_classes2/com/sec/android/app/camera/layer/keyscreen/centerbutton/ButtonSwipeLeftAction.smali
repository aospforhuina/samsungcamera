.class public Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction;
.super Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;
.source "ButtonSwipeLeftAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction$SwipeLeftListener;
    }
.end annotation


# instance fields
.field private final mActionEventListener:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;

.field private mDownPoint:Landroid/graphics/PointF;

.field private final mSwipeLeftListener:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction$SwipeLeftListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction$SwipeLeftListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction;->mActionEventListener:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;

    .line 3
    iput-object p3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction;->mSwipeLeftListener:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction$SwipeLeftListener;

    return-void
.end method

.method private isSwipeLeftStartCondition(Landroid/view/MotionEvent;Landroid/graphics/PointF;F)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    iget p1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p3

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    iget p1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, p3

    cmpl-float p0, p0, p1

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method


# virtual methods
.method public cancelTouchEvent()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;->cancelTouchEvent()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    if-nez p2, :cond_1

    return v0

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070047

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction;->isSwipeLeftStartCondition(Landroid/view/MotionEvent;Landroid/graphics/PointF;F)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;->mCurrentActionState:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->ACTIVATE:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction;->mSwipeLeftListener:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction$SwipeLeftListener;

    invoke-interface {p2}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction$SwipeLeftListener;->onSwipeLeft()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    sget-object p2, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->CONSUME:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;->mCurrentActionState:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    .line 7
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction;->mActionEventListener:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;

    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;->onConsume(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;)V

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;->mCurrentActionState:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->CONSUME:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    if-ne p2, v1, :cond_6

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction;->mSwipeLeftListener:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction$SwipeLeftListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {p0, p2, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction$SwipeLeftListener;->onMoveAfterSwipeLeft(II)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;->mCurrentActionState:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    sget-object p2, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->CONSUME:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    if-ne p1, p2, :cond_4

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction;->mSwipeLeftListener:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction$SwipeLeftListener;

    invoke-interface {p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction$SwipeLeftListener;->onUpAfterSwipeLeft()V

    .line 12
    :cond_4
    sget-object p1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->IDLE:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;->mCurrentActionState:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    goto :goto_0

    .line 14
    :cond_5
    sget-object p2, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->ACTIVATE:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;->mCurrentActionState:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    .line 15
    new-instance p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p2, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    :cond_6
    :goto_0
    return v0
.end method
