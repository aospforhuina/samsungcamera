.class Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2$1;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "FilterTabPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2;->onPositiveButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2;

.field final synthetic val$id:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2;Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2$1;->this$1:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2;

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2$1;->val$id:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 2

    const-string v0, "FilterTabPresenter"

    const-string v1, "onPositiveButtonClicked : onDismissSucceeded"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2$1;->this$1:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2;

    iget-object v0, v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2$1;->val$id:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->d(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V

    return-void
.end method
