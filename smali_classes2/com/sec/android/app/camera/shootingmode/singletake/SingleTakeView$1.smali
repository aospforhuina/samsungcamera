.class Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$1;
.super Ljava/lang/Object;
.source "SingleTakeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->hideExtendRecordingDurationButton()V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->access$000(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeContract$Presenter;

    invoke-interface {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeContract$Presenter;->onExtendRecordingDurationButtonClicked()V

    .line 3
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->p()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->n(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)Lo5/c8;

    move-result-object v0

    iget-object v0, v0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->getShutterProgress()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 5
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->p()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit16 v1, v1, 0x1388

    sub-int/2addr v1, v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    .line 6
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->p()I

    move-result v0

    add-int/lit16 v0, v0, 0x1388

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->n(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)Lo5/c8;

    move-result-object p0

    iget-object p0, p0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->updateShutterProgressWheel(FI)V

    const-string p0, "8000"

    .line 8
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method
