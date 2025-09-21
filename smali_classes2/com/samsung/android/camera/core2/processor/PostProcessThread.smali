.class public Lcom/samsung/android/camera/core2/processor/PostProcessThread;
.super Ljava/lang/Thread;
.source "PostProcessThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;,
        Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;
    }
.end annotation


# static fields
.field private static final CREATE_PPP_REQUEST_LATCH_WAIT_TIMEOUT_MILLIS:I = 0x1f4

.field private static final LOGGING_SERVICE_CONNECTION:Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingServiceConnection;

.field private static final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCreatePostProcessRequestLatch:Ljava/util/concurrent/CountDownLatch;

.field private mEnableCameraLogging:Z

.field private mEnablePPPDump:Z

.field private mEndThreadRunnable:Ljava/lang/Runnable;

.field private mErrorInSequence:Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;

.field private mLatestOverHeatHint:I

.field private final mPostProcessStateManager:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

.field private final mPostProcessorThreadCallback:Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;

.field private final mPostSavingStateManagerGroup:Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;

.field private mProcessedRequestCount:I

.field private mProcessorCallback:Lcom/samsung/android/camera/core2/processor/ProcessCallback;

.field private final mSequenceStack:Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack<",
            "Lcom/samsung/android/camera/core2/processor/PostProcessRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSequenceStackCondition:Ljava/util/concurrent/locks/Condition;

.field private final mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mServiceConnection:Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;

.field private mThreadId:I

.field private mThreadIdFilePath:Ljava/nio/file/Path;

.field private mTotalRequestCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "PostProcessThread"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingServiceConnection;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingServiceConnection;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->LOGGING_SERVICE_CONNECTION:Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingServiceConnection;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mServiceConnection:Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;

    .line 3
    new-instance v1, Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;

    invoke-direct {v1}, Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStack:Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;

    .line 4
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackCondition:Ljava/util/concurrent/locks/Condition;

    .line 6
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mCreatePostProcessRequestLatch:Ljava/util/concurrent/CountDownLatch;

    .line 7
    iput-boolean v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mEnablePPPDump:Z

    .line 8
    iput-boolean v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mEnableCameraLogging:Z

    .line 9
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mContext:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mPostProcessStateManager:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    .line 11
    iput-object p3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mPostSavingStateManagerGroup:Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;

    .line 12
    iput-object p4, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mPostProcessorThreadCallback:Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;

    .line 13
    new-instance p2, Lcom/samsung/android/camera/core2/processor/u;

    invoke-direct {p2, p0}, Lcom/samsung/android/camera/core2/processor/u;-><init>(Lcom/samsung/android/camera/core2/processor/PostProcessThread;)V

    iput-object p2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mEndThreadRunnable:Ljava/lang/Runnable;

    .line 14
    sget-object p2, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p3, "bindService"

    invoke-static {p2, p3}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 15
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/samsung/android/camera/core2/processor/PostProcessService;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p3, 0x1

    invoke-virtual {p1, p2, v0, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 16
    invoke-static {}, Lcom/samsung/android/camera/core2/util/DebugUtils;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->checkEnableLogging()V

    .line 18
    :cond_0
    iget-boolean p2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mEnableCameraLogging:Z

    if-eqz p2, :cond_2

    .line 19
    new-instance p2, Landroid/content/Intent;

    const-class p4, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingService;

    invoke-direct {p2, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object p4, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->LOGGING_SERVICE_CONNECTION:Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingServiceConnection;

    invoke-virtual {p1, p2, p4, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string p1, "PostProcessor can\'t bind to PostProcessorLoggingService"

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const-string p1, "PostProcessThread"

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_3
    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string p1, "PostProcessor can\'t bind service"

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->lambda$run$1()V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/camera/core2/processor/PostProcessThread;Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->lambda$run$0(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->lambda$addPostProcessRequestAndNotify$2(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)Z

    move-result p0

    return p0
.end method

.method private cancelNotification()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mServiceConnection:Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;->sendMessage(III)V

    return-void
.end method

.method private cancelSequence(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->E(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "cancelSequence - Image is already deleted. sequenceId %d, dsMode %s"

    .line 3
    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->removeRemainingRequests(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->endRequest(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/ExtraBundle;->c()Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 7
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mPostProcessorThreadCallback:Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;->onSequenceCanceled(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V

    return-void
.end method

.method private checkEnableLogging()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/util/DebugUtils;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mEnablePPPDump:Z

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/util/DebugUtils;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mEnableCameraLogging:Z

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mEnablePPPDump:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mEnableCameraLogging:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "checkEnableLogging : mEnablePPPDump = %b, mEnableCameraLogging = %b"

    invoke-static {v0, p0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private completeNotification()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mServiceConnection:Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;->sendMessage(III)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mServiceConnection:Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;->sendMessage(III)V

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mServiceConnection:Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2, v2}, Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;->sendMessage(III)V

    return-void
.end method

.method private countProcessedRequestAndNotifyProgress()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mProcessedRequestCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mProcessedRequestCount:I

    .line 3
    iget v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mTotalRequestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5
    sget-object v3, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 6
    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->G(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "PostProcessThread - notify progress %d%%, processedRequestCount %d, totalRequestCount %d"

    .line 7
    invoke-static {v3, v1, v4}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->setProgressAndNotify(II)V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 10
    throw v0
.end method

.method public static synthetic d(Lcom/samsung/android/camera/core2/processor/PostProcessThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->endThread()V

    return-void
.end method

.method static bridge synthetic e()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object v0
.end method

.method private endRequest(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->releaseData()V

    return-void
.end method

.method private endSequence(II)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mErrorInSequence:Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "PostProcessThread - end sequence(id %d, dsMode 0x%X, errorInSequence %s)"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mPostProcessorThreadCallback:Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;

    invoke-interface {v1, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;->onSequenceEnded(I)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mErrorInSequence:Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;->ERROR:Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;

    if-ne v1, v2, :cond_0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->errorSequence(II)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;->INCOMPLETE_MERGE:Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;

    if-ne v1, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStack:Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;->setForcedCurrentSequenceComplete()V

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStack:Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;->isEmpty()Z

    move-result p1

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostProcessThread - end sequence : isRequestStackEmpty = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 10
    iput v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mProcessedRequestCount:I

    .line 11
    iput v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mTotalRequestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p1, :cond_3

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->cancelNotification()V

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->stopForegroundService()V

    .line 15
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mPostProcessorThreadCallback:Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;

    invoke-interface {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;->onRequestStackEmpty()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 16
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    throw p1
.end method

.method private endThread()V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mThreadId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "PostProcessThread - endThread thread id(%d)"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->cancelNotification()V

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->stopForegroundService()V

    .line 4
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mPostProcessorThreadCallback:Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;

    invoke-interface {v2}, Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;->onThreadEnded()V

    .line 5
    iput v4, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mThreadId:I

    :try_start_0
    new-array v2, v1, [Ljava/nio/file/Path;

    .line 6
    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mThreadIdFilePath:Ljava/nio/file/Path;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/samsung/android/camera/core2/util/FileUtils;->l([Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v1, "unbindService"

    .line 7
    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mServiceConnection:Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 9
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mEnableCameraLogging:Z

    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->LOGGING_SERVICE_CONNECTION:Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 11
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "PostProcessThread - endThread failed (%s)"

    invoke-static {v0, p0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private errorSequence(II)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string p2, "PostProcessThread - error sequence(id %d, dsMode 0x%X)"

    invoke-static {v0, p2, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mPostProcessorThreadCallback:Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;

    invoke-interface {p2, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;->onSequenceError(I)V

    .line 3
    iget-object p2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStack:Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;->setForcedCurrentSequenceComplete()V

    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->sendProcessErrorCallback(I)V

    return-void
.end method

.method private getRequest()Lcom/samsung/android/camera/core2/processor/PostProcessRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStack:Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;->pollProcessRequest()Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4
    throw v0
.end method

.method private initThread()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v2, Lcom/samsung/android/camera/core2/util/FileUtils;->g:Ljava/nio/file/Path;

    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "PostProcessThread - initThread is skipped : VENDOR_PPP_TID_DIRECTORY does not exist."

    invoke-static {p0, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    new-array v3, v0, [Ljava/lang/Boolean;

    .line 3
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/util/FileUtils;->k(Ljava/nio/file/Path;[Ljava/lang/Boolean;)V

    .line 4
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mThreadId:I

    .line 5
    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v5, "PPP_%d"

    new-array v6, v0, [Ljava/lang/Object;

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-interface {v2, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mThreadIdFilePath:Ljava/nio/file/Path;

    new-array v3, v1, [Ljava/lang/String;

    .line 8
    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/util/FileUtils;->j(Ljava/nio/file/Path;[Ljava/lang/String;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    sget-object v2, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v0, v0, [Ljava/lang/Object;

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mThreadId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "PostProcessThread - initThread thread id(%d)"

    invoke-static {v2, p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    .line 10
    sget-object v2, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "PostProcessThread - initThread failed (%s)"

    invoke-static {v2, p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$addPostProcessRequestAndNotify$2(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->s(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$run$0(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->endSequence(II)V

    return-void
.end method

.method private static synthetic lambda$run$1()V
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "EndThread has already been called."

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private printPostProcessState()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v0, v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStack:Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "============================================================ [PPP STATE] ============================================================"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;->getSequenceIterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack$Sequence;

    .line 5
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-gtz v10, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;

    .line 7
    invoke-virtual {v11}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result v12

    .line 8
    invoke-virtual {v11}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result v13

    .line 9
    invoke-virtual {v11}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getExtraInfo()I

    move-result v14

    .line 10
    invoke-virtual {v11}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getImageInfo()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v15

    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, v3, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v15, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    .line 11
    invoke-virtual {v11}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getImageInfo()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v15

    sget-object v7, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->b1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v15, v7}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 13
    iget v11, v11, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mTotalProcessCount:I

    move v15, v3

    move/from16 v16, v15

    move/from16 v17, v16

    :goto_1
    if-ge v15, v10, :cond_3

    .line 14
    invoke-virtual {v6, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getSavingType()Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    move-result-object v9

    sget-object v3, Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;->MEMORY:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    if-ne v9, v3, :cond_1

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual {v6, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getSavingType()Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    move-result-object v3

    sget-object v9, Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;->FILE:Lcom/samsung/android/camera/core2/processor/PostProcessRequest$SavingType;

    if-ne v3, v9, :cond_2

    add-int/lit8 v17, v17, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    add-int/2addr v5, v11

    add-int/2addr v4, v10

    .line 16
    sget-object v3, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/Object;

    .line 17
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v6, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-static {v13}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->E(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v6, v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x3

    aput-object v7, v6, v9

    const/4 v7, 0x4

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x5

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x9

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "[PPP STATE] process(sequence id %d) - shootingMode: %d, dsMode: %s, extra info: 0x%X, size: %d X %d, remained frames count: %d, total frames count: %d, memory frames: %d, file frames: %d"

    .line 18
    invoke-static {v3, v7, v6}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 19
    :cond_4
    sget-object v1, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;->sequenceSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const-string v0, "[PPP STATE] Stacked sequences: %d, remained frames count: %d, total frames count: %d"

    .line 21
    invoke-static {v1, v0, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private processInComplete(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;Lcom/samsung/android/camera/core2/processor/ProcessResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/PostProcessRequest;",
            "Lcom/samsung/android/camera/core2/processor/ProcessResult<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->isErrorRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getTotalProcessCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getTotalProcessCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->G(II)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->sendProcessProgressCallback(Lcom/samsung/android/camera/core2/processor/ProcessResult;I)V

    .line 3
    iget v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mTotalRequestCount:I

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->setProgressAndNotify(II)V

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;->INCOMPLETE_MERGE:Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mErrorInSequence:Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->r:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mPostProcessorThreadCallback:Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getResultFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getCamCapability()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object p1

    invoke-interface {p0, v1, p1, p2, v0}, Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;->onSequenceCompleted(Ljava/io/File;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/processor/ProcessResult;I)V

    return-void
.end method

.method private processInError(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;->ERROR:Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mErrorInSequence:Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getCurrentProcessCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getTotalProcessCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mProcessorCallback:Lcom/samsung/android/camera/core2/processor/ProcessCallback;

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "PostProcessThread - onProcessCompleted : exception during super night processing (sequence id %d)"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    new-instance v1, Lcom/samsung/android/camera/core2/processor/ProcessResult;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getNodeChainKey()Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    iget v8, p1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mSequenceId:I

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getCurrentProcessCount()I

    move-result v9

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getTotalProcessCount()I

    move-result v10

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/camera/core2/processor/ProcessResult;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;III)V

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getResultFile()Ljava/io/File;

    move-result-object v2

    .line 7
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/camera/core2/processor/ProcessCallback;->onProcessCompleted(Lcom/samsung/android/camera/core2/processor/ProcessResult;Ljava/io/File;)V

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->removeRemainingRequests(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V

    return-void
.end method

.method private removeRemainingRequests(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->isErrorRequest()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "removeRemainingRequests - exception during processing error request(sequence id %d)"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getTotalProcessCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getCurrentProcessCount()I

    move-result v3

    sub-int/2addr v0, v3

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 4
    sget-object v4, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "removeRemainingRequests - leftRequestCount = %d/%d"

    invoke-static {v4, v7, v6}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->waitAndGetRequest()Lcom/samsung/android/camera/core2/processor/PostProcessRequest;

    move-result-object v6

    if-nez v6, :cond_1

    const-string p0, "removeRemainingRequests - abnormal case : flushRequest is null"

    .line 6
    invoke-static {v4, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-direct {p0, v6}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->endRequest(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V

    .line 8
    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->isErrorRequest()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->E(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getErrorReason()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v5

    const-string p1, "removeRemainingRequests - detect error request(sequence id %d, dsMode %s, reason %s) during internal error"

    .line 10
    invoke-static {v4, p1, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static sendLoggingMessage(IIILjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->LOGGING_SERVICE_CONNECTION:Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingServiceConnection;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/processor/util/PostProcessorLoggingServiceConnection;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private sendProcessErrorCallback(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mProcessorCallback:Lcom/samsung/android/camera/core2/processor/ProcessCallback;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/samsung/android/camera/core2/processor/ProcessCallback;->onProcessError(I)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "can\'t invoke onProcessError, callback is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendProcessProgressCallback(Lcom/samsung/android/camera/core2/processor/ProcessResult;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/ProcessResult<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mProcessorCallback:Lcom/samsung/android/camera/core2/processor/ProcessCallback;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/camera/core2/processor/ProcessCallback;->onProcessProgress(Lcom/samsung/android/camera/core2/processor/ProcessResult;I)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "can\'t invoke onProcessProgress, callback is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setProgressAndNotify(II)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mServiceConnection:Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;->sendMessage(III)V

    return-void
.end method

.method private startForegroundService()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mServiceConnection:Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;->sendMessage(III)V

    return-void
.end method

.method private stopForegroundService()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mServiceConnection:Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/camera/core2/processor/PostProcessThread$PostProcessorServiceConnection;->sendMessage(III)V

    return-void
.end method

.method private updateGppmStateToReady()V
    .locals 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;->READY:Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->updateStateTo(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;Landroid/os/Bundle;)Z

    const-string v1, "sec_mp_id"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "updateGppmStateToReady - sec_mp_id is null"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/camera/core2/processor/util/DBLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mPostSavingStateManagerGroup:Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;

    invoke-virtual {v2, v0}, Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;->getSequenceIdFromSecMpId(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    .line 6
    sget-object p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGppmStateToReady - not found sequence id from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/camera/core2/processor/util/DBLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    sget-object v3, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateGppmStateToReady - sequenceId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", secMpId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/samsung/android/camera/core2/processor/util/DBLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStack:Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;

    invoke-virtual {p0, v2}, Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;->moveSequenceToLast(I)Z

    return-void
.end method

.method private updateTotalRequest(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->isErrorRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->isSupportIncompleteMerge(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getCurrentProcessCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mTotalRequestCount:I

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getTotalProcessCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getCurrentProcessCount()I

    move-result p1

    sub-int/2addr v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mTotalRequestCount:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getCurrentProcessCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5
    iget v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mTotalRequestCount:I

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getTotalProcessCount()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mTotalRequestCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method private verifyProcessResult(Lcom/samsung/android/camera/core2/processor/ProcessResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/ProcessResult<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessResult;->getCurrentProcessCount()I

    move-result p0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessResult;->getTotalProcessCount()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessResult;->getData()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "processResult data must be null when currentProcessCount is less than totalProcessCount"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessResult;->getData()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    :goto_0
    return-void

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "processResult data must not be null when currentProcessCount is equal with totalProcessCount"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private waitAndGetFirstRequest()Lcom/samsung/android/camera/core2/processor/PostProcessRequest;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->waitRequest()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->updateGppmStateToReady()V

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->getRequest()Lcom/samsung/android/camera/core2/processor/PostProcessRequest;

    move-result-object p0

    return-object p0
.end method

.method private waitAndGetRequest()Lcom/samsung/android/camera/core2/processor/PostProcessRequest;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStack:Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;->pollProcessRequest()Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mPostProcessStateManager:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;->checkExitRequested()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 5
    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "PostProcessThread - waitAndGetRequest await"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8
    throw v0
.end method

.method private waitForNextRequest()V
    .locals 4

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mCreatePostProcessRequestLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0x1f4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/camera/core2/util/CLog;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "PostProcessThread - can\'t wait for creating Post Process Request is done for %d ms"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->r(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object p0, Lcom/samsung/android/camera/core2/util/CLog;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "Interrupted while waiting Create PostProcessRequest latch."

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private waitRequest()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStack:Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mPostProcessStateManager:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;->checkExitRequested()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 5
    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "PostProcessThread - waitAndGetFirstRequest await : stack is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mPostProcessStateManager:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;->isExitRequested()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStack:Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;->peekProcessRequest()Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStack:Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;->peekProcessRequest()Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->s(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "PostProcessThread - waitAndGetFirstRequest await and cancel notification : specific ds mode"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->completeNotification()V

    .line 12
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 13
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 14
    throw v0
.end method


# virtual methods
.method public addPostProcessRequestAndNotify(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->s(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStack:Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;

    sget-object v1, Lcom/samsung/android/camera/core2/processor/x;->a:Lcom/samsung/android/camera/core2/processor/x;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;->addFirstProcessRequest(Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;Ljava/util/function/Predicate;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStack:Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/processor/ProcessSequenceStack;->addProcessRequest(Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 6
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->updateTotalRequest(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8
    throw p1
.end method

.method asPostProcessFileRequest(Lcom/samsung/android/camera/core2/node/NodeChain$Key;Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/util/DirectBufferPool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/camera/core2/util/ImageFile;",
            ">;",
            "Lcom/samsung/android/camera/core2/util/DirectBufferPool;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mCreatePostProcessRequestLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2
    invoke-static {p1, p2, p3}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->asPostProcessFileRequest(Lcom/samsung/android/camera/core2/node/NodeChain$Key;Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/util/DirectBufferPool;)Lcom/samsung/android/camera/core2/processor/PostProcessRequest;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mCreatePostProcessRequestLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->addPostProcessRequestAndNotify(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mCreatePostProcessRequestLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    throw p1
.end method

.method asPostProcessRequest(Lcom/samsung/android/camera/core2/node/NodeChain$Key;Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/util/DirectBufferPool;Lcom/samsung/android/camera/core2/util/DirectBufferPool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;",
            "Lcom/samsung/android/camera/core2/util/DirectBufferPool;",
            "Lcom/samsung/android/camera/core2/util/DirectBufferPool;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mCreatePostProcessRequestLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->asPostProcessRequest(Lcom/samsung/android/camera/core2/node/NodeChain$Key;Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/util/DirectBufferPool;Lcom/samsung/android/camera/core2/util/DirectBufferPool;Ljava/io/File;)Lcom/samsung/android/camera/core2/processor/PostProcessRequest;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mCreatePostProcessRequestLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->addPostProcessRequestAndNotify(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mCreatePostProcessRequestLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    throw p1
.end method

.method protected finalize()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "PostProcessThread - finalize"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mEndThreadRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method getThreadId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mThreadId:I

    return p0
.end method

.method public isEnableCameraLogging()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mEnableCameraLogging:Z

    return p0
.end method

.method requestExit()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "PostProcessThread - requestExit"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mPostProcessStateManager:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;->exit()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mSequenceStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 6
    throw v0
.end method

.method public run()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->initThread()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mPostProcessorThreadCallback:Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;

    invoke-interface {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;->onThreadStarted()V

    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->waitAndGetFirstRequest()Lcom/samsung/android/camera/core2/processor/PostProcessRequest;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mEndThreadRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5
    sget-object v0, Lcom/samsung/android/camera/core2/processor/v;->a:Lcom/samsung/android/camera/core2/processor/v;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mEndThreadRunnable:Ljava/lang/Runnable;

    .line 6
    sget-object p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "PostProcessThread - exit thread"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->isErrorRequest()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 8
    sget-object v1, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v3, v3, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->E(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getErrorReason()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "PostProcessThread - detect error request(sequence id %d, dsMode %s, reason %s), when start Sequence"

    .line 10
    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->errorSequence(II)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mPostSavingStateManagerGroup:Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;->getSecMpUriFromSequenceId(I)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/camera/core2/processor/PostProcessDBHelper;->isDeletedCompletely(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->cancelSequence(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mPostProcessStateManager:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;->processSequence()V

    .line 15
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;->STARTED:Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;

    invoke-static {v1, v6}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->updateStateTo(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;)Z

    .line 16
    sget-object v1, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v6, v3, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->E(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getExtraInfo()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->b(I)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "PostProcessThread - start sequence(id %d, mode %s, extraInfo %s)"

    .line 19
    invoke-static {v1, v7, v6}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->startForegroundService()V

    .line 21
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mPostProcessorThreadCallback:Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;

    invoke-interface {v1, v0}, Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;->onSequencePrepared(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V

    .line 22
    sget-object v1, Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;->NONE:Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;

    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mErrorInSequence:Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;

    :cond_3
    const/4 v1, 0x4

    const/4 v6, 0x5

    .line 23
    :try_start_0
    sget-object v7, Lcom/samsung/android/camera/core2/util/CLog;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v8, "Capture - PostProcessor Process(sequenceId %d, processCount %d/%d, mode %s) : Start[%d]"

    new-array v9, v6, [Ljava/lang/Object;

    .line 24
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getCurrentProcessCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getTotalProcessCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result v10

    invoke-static {v10}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->E(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v1

    .line 26
    invoke-static {v7, v8, v9}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->waitForNextRequest()V

    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/camera/core2/ExtraBundle;->q:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    iget v10, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mLatestOverHeatHint:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 29
    iget-object v8, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mPostProcessorThreadCallback:Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;

    invoke-interface {v8, v0}, Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;->onSequenceProcessing(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)Lcom/samsung/android/camera/core2/processor/ProcessResult;

    move-result-object v8

    const-string v9, "Capture - PostProcessor Process : End[%d]"

    new-array v10, v4, [Ljava/lang/Object;

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v7, v9, v10}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->isErrorRequest()Z

    move-result v7

    if-nez v7, :cond_4

    .line 32
    invoke-direct {p0, v8}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->verifyProcessResult(Lcom/samsung/android/camera/core2/processor/ProcessResult;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_4
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->endRequest(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V

    .line 34
    iget-boolean v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mEnablePPPDump:Z

    if-eqz v1, :cond_5

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->printPostProcessState()V

    .line 36
    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mEnableCameraLogging:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->isErrorRequest()Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0xc

    .line 37
    invoke-static {v1, v5, v5, v0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->sendLoggingMessage(IIILjava/lang/Object;)V

    .line 38
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getCurrentProcessCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getTotalProcessCount()I

    move-result v6

    invoke-static {v1, v6}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->G(II)I

    move-result v1

    invoke-direct {p0, v8, v1}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->sendProcessProgressCallback(Lcom/samsung/android/camera/core2/processor/ProcessResult;I)V

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->countProcessedRequestAndNotifyProgress()V

    .line 40
    invoke-virtual {v8}, Lcom/samsung/android/camera/core2/processor/ProcessResult;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 41
    invoke-direct {p0, v0, v8}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->processInComplete(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;Lcom/samsung/android/camera/core2/processor/ProcessResult;)V

    goto/16 :goto_1

    .line 42
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->waitAndGetRequest()Lcom/samsung/android/camera/core2/processor/PostProcessRequest;

    move-result-object v0

    if-nez v0, :cond_8

    .line 43
    sget-object v1, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "PostProcessThread - abnormal case : request is null"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 44
    :cond_8
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->isErrorRequest()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    sget-object v1, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v6, v3, [Ljava/lang/Object;

    .line 46
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->E(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getErrorReason()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "PostProcessThread - detect error request(sequence id %d, dsMode %s, reason %s) in sequence"

    .line 47
    invoke-static {v1, v7, v6}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->isSupportIncompleteMerge(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 49
    sget-object v1, Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;->ERROR:Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;

    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mErrorInSequence:Lcom/samsung/android/camera/core2/processor/PostProcessThread$ErrorInSequence;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v7

    .line 50
    :try_start_1
    sget-object v8, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v9, "PostProcessThread - error occurred during sequenceId %d, processCount %d/%d, dsMode %s : %s"

    new-array v6, v6, [Ljava/lang/Object;

    .line 51
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v5

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getCurrentProcessCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getTotalProcessCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->E(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    aput-object v7, v6, v1

    .line 52
    invoke-static {v8, v9, v6}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->processInError(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V

    .line 54
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->c()Lcom/samsung/android/camera/core2/ExtraBundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->endRequest(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V

    .line 56
    :goto_1
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/processor/w;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/processor/w;-><init>(Lcom/samsung/android/camera/core2/processor/PostProcessThread;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;->STOPPED:Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->updateStateTo(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;)Z

    goto/16 :goto_0

    .line 58
    :goto_2
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->endRequest(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V

    .line 59
    throw v1
.end method

.method public setOverHeatHint(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOverHeatHint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mLatestOverHeatHint:I

    .line 3
    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mEnableCameraLogging:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    .line 4
    invoke-static {p1}, Lcom/samsung/android/camera/core2/container/LowPowerMode;->k(I)Lcom/samsung/android/camera/core2/container/LowPowerMode;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->sendLoggingMessage(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setProcessorCallback(Lcom/samsung/android/camera/core2/processor/ProcessCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->mProcessorCallback:Lcom/samsung/android/camera/core2/processor/ProcessCallback;

    return-void
.end method
