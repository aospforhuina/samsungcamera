.class Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView$1;
.super Ljava/lang/Object;
.source "SelfieToneMenuView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_3

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->getSliderProgress()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->access$200(Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;)Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;->onWarmButtonClick()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->access$100(Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;)Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;->onOriginalButtonClick()V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->access$000(Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;)Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;->onCoolButtonClick()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->getSliderProgress()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView$1;->this$0:Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->i(Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;)I

    move-result p0

    mul-int/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
