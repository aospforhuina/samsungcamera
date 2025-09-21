.class Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView$1;
.super Ljava/lang/Object;
.source "BokehBeautyMenuView.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/Slider$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartTrackingTouch()V
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->m2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->k(Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;)Lo5/s1;

    move-result-object p0

    iget-object p0, p0, Lo5/s1;->d:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->r()V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->m2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->k(Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;)Lo5/s1;

    move-result-object v0

    iget-object v0, v0, Lo5/s1;->d:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->v()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->access$000(Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;)Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuContract$Presenter;->onStopTrackingTouch()V

    return-void
.end method
