.class public Lcom/samsung/android/camera/core2/processor/receiver/RecoveryDraftImageWorkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RecoveryDraftImageWorkReceiver.java"


# static fields
.field private static final ACTION_RECOVERY_DRAFT_IMAGE:Ljava/lang/String; = "com.samsung.android.camera.core2.processor.work.action.RECOVERY_DRAFT_IMAGE"

.field private static final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "RecoveryDFTImgWorkReceiver"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/receiver/RecoveryDraftImageWorkReceiver;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getRecoveryDraftImageWorkRequest()Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v1, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageWorker;

    invoke-direct {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    sget-object v1, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    .line 2
    invoke-virtual {v0, v1}, Landroidx/work/WorkRequest$Builder;->setExpedited(Landroidx/work/OutOfQuotaPolicy;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 3
    new-instance v1, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;

    invoke-direct {v1}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;-><init>()V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;->enableSyncWork(Z)Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;

    sget-object v3, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->RECOVERY_DRAFT_IMAGE:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    invoke-direct {v2, v3}, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;-><init>(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;)V

    const/4 v3, 0x0

    new-array v3, v3, [Z

    .line 6
    invoke-virtual {v2, v0, v1, v3}, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;->addOneTimeWorkRequestBuilder(Landroidx/work/OneTimeWorkRequest$Builder;Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;[Z)Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->RECOVERY_DRAFT_IMAGE_LEGACY:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;->setUniqueWork(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;->build()Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string p0, "onReceive: X (%d ms)"

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/receiver/RecoveryDraftImageWorkReceiver;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "onReceive: E, action %s"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    .line 3
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.samsung.android.camera.core2.processor.work.action.RECOVERY_DRAFT_IMAGE"

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-static {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;

    move-result-object p1

    new-array p2, v1, [Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;

    invoke-static {}, Lcom/samsung/android/camera/core2/processor/receiver/RecoveryDraftImageWorkReceiver;->getRecoveryDraftImageWorkRequest()Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;

    move-result-object v3

    aput-object v3, p2, v4

    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->enqueueWorks([Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;)V

    goto :goto_0

    :cond_0
    const-string p1, "onReceive: received unknown action(%s)"

    new-array v3, v1, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-static {v0, p1, v3}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p2

    invoke-static {v2, p2}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {v0, p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/camera/core2/processor/receiver/RecoveryDraftImageWorkReceiver;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p2, p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    throw p1
.end method
