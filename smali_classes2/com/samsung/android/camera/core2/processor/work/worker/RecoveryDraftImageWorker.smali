.class public Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageWorker;
.super Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;
.source "RecoveryDraftImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageWorker$Logic;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "RecoveryDraftImageWorker"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageWorker;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageWorker$Logic;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageWorker$Logic;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageWorker;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;Lcom/samsung/android/camera/core2/util/CLog$Tag;)V

    return-void
.end method
