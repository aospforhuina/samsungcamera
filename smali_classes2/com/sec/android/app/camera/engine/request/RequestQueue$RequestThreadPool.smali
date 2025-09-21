.class Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/request/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestThreadPool"
.end annotation


# instance fields
.field private mBlockCondition:Ljava/util/concurrent/locks/Condition;

.field private mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mCurrentRequestId:I

.field private mIsInterrupted:Z

.field private mIsInterruptible:Z

.field private mIsSignaled:Z

.field private mLogBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/request/RequestQueue;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/request/RequestQueue;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->this$0:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    .line 2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 3
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockCondition:Ljava/util/concurrent/locks/Condition;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mLogBuilder:Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mIsSignaled:Z

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mIsInterrupted:Z

    .line 8
    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mIsInterruptible:Z

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mCurrentRequestId:I

    .line 10
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {p1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/request/RequestQueue;Lcom/sec/android/app/camera/engine/request/n4;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;-><init>(Lcom/sec/android/app/camera/engine/request/RequestQueue;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->dumpQueue(I)V

    return-void
.end method

.method private declared-synchronized dumpQueue(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mLogBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mLogBuilder:Ljava/lang/StringBuilder;

    const-string v0, "[  ] ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mLogBuilder:Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mLogBuilder:Ljava/lang/StringBuilder;

    check-cast v0, Lcom/sec/android/app/camera/engine/request/Request;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/Request;->getRequestId()Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/RequestId;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mLogBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mLogBuilder:Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "RequestQueue"

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 2
    check-cast p1, Lcom/sec/android/app/camera/engine/request/Request;

    .line 3
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->isDiscarded()Z

    move-result p2

    const-string v0, "RequestQueue"

    if-nez p2, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->isBlockingRequest()Z

    move-result p2

    const-string v1, "Interrupted : "

    if-eqz p2, :cond_3

    .line 5
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    :goto_0
    :try_start_0
    iget-boolean p2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mIsSignaled:Z

    if-nez p2, :cond_1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for a signal : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->getRequestId()Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockCondition:Ljava/util/concurrent/locks/Condition;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->getBlockingRequestTimeOut()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mIsSignaled:Z

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blocking request timeout! : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->getRequestId()Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->onTimeout()V

    goto :goto_0

    .line 12
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signaled : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->getRequestId()Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 13
    :cond_1
    iget-boolean p2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mIsInterrupted:Z

    if-eqz p2, :cond_2

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->getRequestId()Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->onInterrupt()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 17
    :catch_0
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InterruptedException : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->getRequestId()Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->onInterrupt()V

    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 20
    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    throw p1

    .line 22
    :cond_3
    iget-boolean p2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mIsInterrupted:Z

    if-eqz p2, :cond_4

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->getRequestId()Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->onInterrupt()V

    .line 25
    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->getNextState()Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 26
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->this$0:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->e(Lcom/sec/android/app/camera/engine/request/RequestQueue;)Lcom/sec/android/app/camera/interfaces/InternalEngine;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->getNextState()Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->changeState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    .line 27
    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->getNextCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 28
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->this$0:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->e(Lcom/sec/android/app/camera/engine/request/RequestQueue;)Lcom/sec/android/app/camera/interfaces/InternalEngine;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->getNextCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->changeCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V

    .line 29
    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->this$0:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->d(Lcom/sec/android/app/camera/engine/request/RequestQueue;)Lcom/sec/android/app/camera/engine/request/RequestQueue$EmptyListener;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->this$0:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->e(Lcom/sec/android/app/camera/engine/request/RequestQueue;)Lcom/sec/android/app/camera/interfaces/InternalEngine;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 30
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->this$0:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->d(Lcom/sec/android/app/camera/engine/request/RequestQueue;)Lcom/sec/android/app/camera/engine/request/RequestQueue$EmptyListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue$EmptyListener;->onEmpty()V

    :cond_7
    const/4 p2, -0x1

    .line 31
    iput p2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mCurrentRequestId:I

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterExecute : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->getRequestId()Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->getRequestId()Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/RequestId;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->dumpQueue(I)V

    .line 34
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->this$0:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->f(Lcom/sec/android/app/camera/engine/request/RequestQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 35
    :try_start_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->this$0:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->g(Lcom/sec/android/app/camera/engine/request/RequestQueue;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    const-wide/16 p1, 0x2710

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    const-string p0, "afterExecute : interrupted while waiting stop latch."

    .line 36
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->this$0:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->f(Lcom/sec/android/app/camera/engine/request/RequestQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/camera/engine/request/Request;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforeExecute : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/Request;->getRequestId()Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/Request;->getRequestId()Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/request/RequestId;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RequestQueue"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->this$0:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->e(Lcom/sec/android/app/camera/engine/request/RequestQueue;)Lcom/sec/android/app/camera/interfaces/InternalEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCurrentState()Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/Request;->isSupportedState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid request for current state("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->this$0:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-static {v4}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->e(Lcom/sec/android/app/camera/engine/request/RequestQueue;)Lcom/sec/android/app/camera/interfaces/InternalEngine;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCurrentState()Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/Request;->discard()V

    goto/16 :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->this$0:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->e(Lcom/sec/android/app/camera/engine/request/RequestQueue;)Lcom/sec/android/app/camera/interfaces/InternalEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/Request;->isSupportedCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid request for current capture state("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->this$0:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-static {v4}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->e(Lcom/sec/android/app/camera/engine/request/RequestQueue;)Lcom/sec/android/app/camera/interfaces/InternalEngine;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/Request;->discard()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/Request;->getInitialState()Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->this$0:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->e(Lcom/sec/android/app/camera/engine/request/RequestQueue;)Lcom/sec/android/app/camera/interfaces/InternalEngine;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/Request;->getInitialState()Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->changeState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    .line 12
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/Request;->getInitialCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->this$0:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->e(Lcom/sec/android/app/camera/engine/request/RequestQueue;)Lcom/sec/android/app/camera/interfaces/InternalEngine;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/Request;->getInitialCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->changeCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    .line 15
    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mIsSignaled:Z

    .line 16
    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mIsInterrupted:Z

    .line 17
    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/Request;->isInterruptibleRequest()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mIsInterruptible:Z

    .line 18
    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/Request;->getRequestId()Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/request/RequestId;->getId()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mCurrentRequestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/Request;->getRequestId()Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/RequestId;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->dumpQueue(I)V

    .line 21
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 22
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 23
    throw p1
.end method

.method interrupt(Lcom/sec/android/app/camera/engine/request/RequestId;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/RequestId;->getId()I

    move-result p1

    iget v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mCurrentRequestId:I

    if-ne p1, v0, :cond_1

    .line 3
    iget-boolean p1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mIsInterruptible:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mIsSignaled:Z

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 6
    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mIsInterrupted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8
    throw p1
.end method

.method interruptCurrentRequest()V
    .locals 3

    const-string v0, "RequestQueue"

    const-string v1, "interruptCurrentRequest"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interruptCurrentRequest : current request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mCurrentRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", interruptible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mIsInterruptible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mIsInterruptible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5
    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mIsSignaled:Z

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 7
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mIsInterrupted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 9
    throw v0
.end method

.method isWaiting(Lcom/sec/android/app/camera/engine/request/RequestId;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/RequestId;->getId()I

    move-result p1

    iget v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mCurrentRequestId:I

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mIsSignaled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4
    throw p1
.end method

.method notify(Lcom/sec/android/app/camera/engine/request/RequestId;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/RequestId;->getId()I

    move-result p1

    iget v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mCurrentRequestId:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mIsSignaled:Z

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->mBlockingRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 6
    throw p1
.end method

.method protected terminated()V
    .locals 0

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V

    return-void
.end method
