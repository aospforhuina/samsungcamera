.class public Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageWorker$Logic;
.super Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;
.source "RecoveryDraftImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Logic"
.end annotation


# static fields
.field private static final GLOBAL_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "RecoveryDFTImgWorker.Logic"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageWorker$Logic;->GLOBAL_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageWorker$Logic;->GLOBAL_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Ljava/util/concurrent/locks/Lock;Lcom/samsung/android/camera/core2/util/CLog$Tag;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageWorker$Logic;->GLOBAL_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Ljava/util/concurrent/locks/Lock;Lcom/samsung/android/camera/core2/util/CLog$Tag;)V

    return-void
.end method


# virtual methods
.method protected work()Landroidx/work/ListenableWorker$Result;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->wakeupPPP(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    return-object p0
.end method
