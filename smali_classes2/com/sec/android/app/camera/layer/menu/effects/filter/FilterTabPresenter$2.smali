.class Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2;
.super Ljava/lang/Object;
.source "FilterTabPresenter.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraDialogManager$CameraDialogListener;


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

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->REMOVE_FILTER_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    if-ne p0, p1, :cond_0

    .line 2
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FILTER_TAB_DELETE_DIALOG_CANCEL:Lcom/sec/android/app/camera/logging/SaLogEventId;

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;)V

    :cond_0
    return-void
.end method

.method public onPositiveButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->access$500(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->access$600(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;

    invoke-static {v1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->access$700(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2$1;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2$1;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2;Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->d(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V

    :cond_1
    :goto_0
    return-void
.end method
