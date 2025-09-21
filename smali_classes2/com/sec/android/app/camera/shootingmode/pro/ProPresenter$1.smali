.class Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->startLongEvShotShutterProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->j0(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->access$000(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->hideView(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->access$100(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/pro/ProContract$View;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->g0(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/lit16 v1, v1, -0x3e8

    invoke-interface {p1, v1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProContract$View;->showCountDownTimer(IZ)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->access$200(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/pro/ProContract$View;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->i0(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProContract$View;->startShutterProgressWheel(Z)V

    return-void
.end method
