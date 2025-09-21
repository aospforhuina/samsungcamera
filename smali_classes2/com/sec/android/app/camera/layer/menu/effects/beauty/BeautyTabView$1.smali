.class Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView$1;
.super Ljava/lang/Object;
.source "BeautyTabView.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/Slider$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartTrackingTouch()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->startAlphaAnimation(Z)V

    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->startAlphaAnimation(Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->g(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;)Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabContract$Presenter;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabContract$Presenter;->onStopTrackingTouch()V

    return-void
.end method
