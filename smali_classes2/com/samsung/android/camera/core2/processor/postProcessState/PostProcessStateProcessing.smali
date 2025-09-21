.class Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateProcessing;
.super Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState;
.source "PostProcessStateProcessing.java"


# instance fields
.field private mIsWaitSignal:Z

.field private final mProcessingCond:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState;-><init>(Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateProcessing;->mIsWaitSignal:Z

    .line 3
    iput-object p2, p0, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateProcessing;->mProcessingCond:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateProcessing;->mIsWaitSignal:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState;->mPostProcessorStateManager:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    sget-object v1, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState$PostProcessStateName;->PAUSED:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState$PostProcessStateName;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;->setState(Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState$PostProcessStateName;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState;->mPostProcessorStateManager:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;->deinitializeNodeController()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState;->mPostProcessorStateManager:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    sget-object v1, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState$PostProcessStateName;->IDLE:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState$PostProcessStateName;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;->setState(Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState$PostProcessStateName;)V

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateProcessing;->mProcessingCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    return-void
.end method

.method public exit()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState;->exit()V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateProcessing;->mProcessingCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    return-void
.end method

.method public getStateName()Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState$PostProcessStateName;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState$PostProcessStateName;->PROCESSING:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState$PostProcessStateName;

    return-object p0
.end method

.method public pause()V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string v4, "[PostProcessState] wait in state [%s].pause() E"

    invoke-static {v0, v4, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iput-boolean v1, p0, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateProcessing;->mIsWaitSignal:Z

    .line 3
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateProcessing;->mProcessingCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 4
    iput-boolean v3, p0, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateProcessing;->mIsWaitSignal:Z

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const-string p0, "[PostProcessState] wait in state [%s].pause() X"

    .line 5
    invoke-static {v0, p0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState;->reset()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateProcessing;->mIsWaitSignal:Z

    return-void
.end method

.method public resume(J)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateProcessing;->mProcessingCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    return-void
.end method
