.class Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager$1;
.super Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager$CaptureEventListenerAdapter;
.source "IntervalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;->makeCaptureEventListener()Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager$1;->this$0:Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager$CaptureEventListenerAdapter;-><init>(Lcom/sec/android/app/camera/shootingmode/common/manager/h;)V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager$CaptureEventListenerAdapter;->onCaptureCompleted()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager$1;->this$0:Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;

    iget-boolean v1, v0, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;->mIsInterval:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;->d(Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager$1;->this$0:Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;->mIsInterval:Z

    .line 4
    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;->e(Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;)Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager$IntervalEventListener;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/common/manager/f;->a:Lcom/sec/android/app/camera/shootingmode/common/manager/f;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCaptureRequested()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager$CaptureEventListenerAdapter;->onCaptureRequested()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager$1;->this$0:Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;->mIsInterval:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;->d(Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;->f(Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;I)V

    return-void
.end method

.method public onPostPictureProcessingCompleted()V
    .locals 0

    return-void
.end method

.method public onShutter()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager$CaptureEventListenerAdapter;->onShutter()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager$1;->this$0:Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;->mIsInterval:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;->e(Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;)Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager$IntervalEventListener;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/common/manager/g;->a:Lcom/sec/android/app/camera/shootingmode/common/manager/g;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
