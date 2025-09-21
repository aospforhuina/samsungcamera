.class public Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;
.super Ljava/lang/Object;
.source "ButtonActionManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ButtonActionManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(ILcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->lambda$setKeyScreenOrientation$0(ILcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;)V

    return-void
.end method

.method private static synthetic lambda$setKeyScreenOrientation$0(ILcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;->setKeyScreenOrientation(I)V

    return-void
.end method


# virtual methods
.method public onConsume(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;->cancelTouchEvent()V

    goto :goto_0

    .line 5
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_1

    const/4 v3, 0x1

    .line 4
    iput-boolean v3, v2, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;->mEnable:Z

    .line 5
    :cond_1
    iget-boolean v3, v2, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;->mEnable:Z

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;->onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    .line 7
    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resetCenterButtonAction()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    sget-object v2, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/b;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/b;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setKeyScreenOrientation(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/a;

    invoke-direct {v1, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/a;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setLongPressListener(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction$LongPressListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction;

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction;-><init>(Landroid/content/Context;Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction$LongPressListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSwipeDownListener(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeDownAction;

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeDownAction;-><init>(Landroid/content/Context;Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSwipeLeftListener(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction$SwipeLeftListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction;

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction;-><init>(Landroid/content/Context;Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeLeftAction$SwipeLeftListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSwipeRightListener(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeRightAction$SwipeRightListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeRightAction;

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeRightAction;-><init>(Landroid/content/Context;Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeRightAction$SwipeRightListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSwipeUpListener(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeUpAction$SwipeUpListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeUpAction;

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonActionManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeUpAction;-><init>(Landroid/content/Context;Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonSwipeUpAction$SwipeUpListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
