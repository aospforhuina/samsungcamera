.class Lcom/samsung/android/camera/core2/node/Node$12;
.super Ljava/util/TimerTask;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/core2/node/Node;->initialize(ZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:Lcom/samsung/android/camera/core2/node/Node;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/Node;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/Node$12;->c:Lcom/samsung/android/camera/core2/node/Node;

    iput-boolean p2, p0, Lcom/samsung/android/camera/core2/node/Node$12;->a:Z

    iput-wide p3, p0, Lcom/samsung/android/camera/core2/node/Node$12;->b:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/Node$12;->c:Lcom/samsung/android/camera/core2/node/Node;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/camera/core2/node/Node;->mInitializingThreadId:J

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/Node$12;->c:Lcom/samsung/android/camera/core2/node/Node;

    iget-boolean v1, p0, Lcom/samsung/android/camera/core2/node/Node$12;->a:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->initializeInternal(Z)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/Node$12;->c:Lcom/samsung/android/camera/core2/node/Node;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/Node$12;->c:Lcom/samsung/android/camera/core2/node/Node;

    iget-boolean v1, p0, Lcom/samsung/android/camera/core2/node/Node$12;->a:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->setActivate(Z)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/Node$12;->c:Lcom/samsung/android/camera/core2/node/Node;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/node/Node;->mInitializedCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/Node$12;->c:Lcom/samsung/android/camera/core2/node/Node;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/Node$12;->c:Lcom/samsung/android/camera/core2/node/Node;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-initializingThread - delay("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/camera/core2/node/Node$12;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/Node$12;->c:Lcom/samsung/android/camera/core2/node/Node;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 9
    throw v0
.end method
