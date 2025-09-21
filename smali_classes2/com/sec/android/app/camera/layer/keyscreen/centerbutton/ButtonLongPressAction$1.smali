.class Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction$1;
.super Landroid/os/Handler;
.source "ButtonLongPressAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction$1;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction$1;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction;

    iget-object v0, p1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;->mCurrentActionState:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->ACTIVATE:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;->CONSUME:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    iput-object v0, p1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;->mCurrentActionState:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionState;

    .line 4
    invoke-static {p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction;->a(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction;)Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction$1;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction$ActionEventListener;->onConsume(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/AbstractButtonAction;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction$1;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction;->b(Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction;)Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction$LongPressListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/ButtonLongPressAction$LongPressListener;->onLongPress()V

    :cond_1
    return-void
.end method
