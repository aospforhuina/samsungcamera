.class Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$1;
.super Ljava/util/TimerTask;
.source "RecoveryDraftImageLegacyWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->removeRealDraftImage(Ljava/nio/file/Path;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;

.field final synthetic val$realDraftImageFilePath:Ljava/nio/file/Path;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;Ljava/nio/file/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$1;->this$0:Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$1;->val$realDraftImageFilePath:Ljava/nio/file/Path;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/Path;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic$1;->val$realDraftImageFilePath:Ljava/nio/file/Path;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/FileUtils;->l([Ljava/nio/file/Path;)V

    return-void
.end method
