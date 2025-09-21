.class Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QrCodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->startPopupShowingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$5;->this$0:Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$5;->this$0:Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->q(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$5;->this$0:Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->m(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)Lo5/y3;

    move-result-object p1

    iget-object p1, p1, Lo5/y3;->m:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$5;->this$0:Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->access$400(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeContract$Presenter;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$5;->this$0:Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->access$300(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;->onPopupShown(Z)V

    return-void
.end method
