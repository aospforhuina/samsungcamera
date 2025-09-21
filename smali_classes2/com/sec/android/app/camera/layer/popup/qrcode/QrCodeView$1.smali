.class Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$1;
.super Ljava/lang/Object;
.source "QrCodeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;
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

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$1;->this$0:Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$7;->$SwitchMap$com$sec$android$app$camera$layer$popup$qrcode$QrActionButton$Type:[I

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$1;->this$0:Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->m(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)Lo5/y3;

    move-result-object v0

    iget-object v0, v0, Lo5/y3;->a:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;->getType()Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$1;->this$0:Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->access$100(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeContract$Presenter;

    invoke-interface {p1}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeContract$Presenter;->onViewOptionClick()V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$1;->this$0:Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->m(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)Lo5/y3;

    move-result-object p1

    iget-object p1, p1, Lo5/y3;->a:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;

    const v0, 0x7f120203

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$1;->this$0:Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->m(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)Lo5/y3;

    move-result-object p1

    iget-object p1, p1, Lo5/y3;->a:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;

    sget-object v0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;->CANCEL:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;->setType(Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$1;->this$0:Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->r(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$1;->this$0:Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->p(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$1;->this$0:Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->access$000(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeContract$Presenter;->onQrPopupClick()V

    :goto_0
    return-void
.end method
