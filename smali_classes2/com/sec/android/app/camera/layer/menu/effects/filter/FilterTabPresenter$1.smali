.class Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$1;
.super Landroid/content/BroadcastReceiver;
.source "FilterTabPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FilterTabPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "camera.action.FILTER_LOADED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string p2, "camera.action.FILTER_INSTALLED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string p2, "camera.action.FILTER_ORDER_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    :sswitch_3
    const-string p2, "camera.action.FILTER_UNINSTALLED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 3
    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->e(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;Z)V

    goto :goto_1

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->access$200(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;)Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    invoke-interface {p1}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;->isItemDragging()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;

    invoke-static {p0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->c(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;Z)V

    goto :goto_1

    .line 6
    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->e(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;Z)V

    goto :goto_1

    .line 7
    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->access$300(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;

    invoke-static {p0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->access$402(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;Z)Z

    goto :goto_1

    .line 9
    :pswitch_3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->e(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;Z)V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->access$000(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;)Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    invoke-interface {p1}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;->getMode()Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$ListMode;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$ListMode;->EDIT:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$ListMode;

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->isDeletableFilterExist()Z

    move-result p1

    if-nez p1, :cond_5

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->access$100(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;)Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    sget-object p1, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$ListMode;->NORMAL:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$ListMode;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;->setMode(Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$ListMode;)V

    :cond_5
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x651b5437 -> :sswitch_3
        -0x3e247095 -> :sswitch_2
        -0x11d38bbe -> :sswitch_1
        0x7820601d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
