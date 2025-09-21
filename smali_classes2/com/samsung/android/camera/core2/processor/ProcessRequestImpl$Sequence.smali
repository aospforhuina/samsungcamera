.class public final Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;
.super Ljava/lang/Object;
.source "ProcessRequestImpl.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sequence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data_T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence<",
        "TData_T;>;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private static final sSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mCurrentProcessCount:I

.field private mCurrentSequenceCount:I

.field private final mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

.field private mError:I

.field private mErrorReason:Ljava/lang/String;

.field private final mExtraBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

.field private final mId:I

.field private mIsErrorSequence:Z

.field private final mMakerPrivateKeys:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/camera/core2/MakerPrivateKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mMode:I

.field private final mNeedDepth:Z

.field private final mProcessType:Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

.field private final mRequiredYuvProcessCount:I

.field private final mResultFormat:I

.field private final mResultSize:Landroid/util/Size;

.field private final mTotalProcessCount:I

.field private final mTotalSequenceCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "Sequence"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->sSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(ILandroid/util/Size;Ljava/io/File;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Size;",
            "Ljava/io/File;",
            "Lcom/samsung/android/camera/core2/container/DynamicShotInfo;",
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/MakerPrivateKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dynamicShotInfo"

    .line 2
    invoke-static {p4, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;->POST_PROCESS:Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;->IMMEDIATE_PROCESS:Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mProcessType:Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

    .line 4
    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->h(Ljava/lang/Integer;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mMode:I

    .line 5
    iput-object p4, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    .line 6
    iput p1, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mResultFormat:I

    .line 7
    iput-object p2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mResultSize:Landroid/util/Size;

    .line 8
    invoke-static {v0, p4}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->m(Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$SequenceCountData;

    move-result-object p4

    .line 9
    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$SequenceCountData;->b()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mTotalProcessCount:I

    .line 10
    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$SequenceCountData;->a()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mRequiredYuvProcessCount:I

    .line 11
    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$SequenceCountData;->c()I

    move-result p4

    iput p4, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mTotalSequenceCount:I

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    .line 12
    invoke-static {p4}, Lcom/samsung/android/camera/core2/ExtraBundle;->h([Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mExtraBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 13
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->getNextSequenceId()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mId:I

    .line 14
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3, p5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object v3, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mMakerPrivateKeys:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    sget-object p5, Lcom/samsung/android/camera/core2/ExtraBundle;->m:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p4, p5, v3}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    if-eqz p3, :cond_1

    .line 16
    sget-object p5, Lcom/samsung/android/camera/core2/ExtraBundle;->y:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p4, p5, p3}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 17
    :cond_1
    sget-object p3, Lcom/samsung/android/camera/core2/ExtraBundle;->v:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p3, p5}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 18
    sget-object p3, Lcom/samsung/android/camera/core2/ExtraBundle;->w:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p3, p5}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 19
    sget-object p3, Lcom/samsung/android/camera/core2/ExtraBundle;->g:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 20
    sget-object p1, Lcom/samsung/android/camera/core2/ExtraBundle;->e:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p4, p1, p2}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 21
    sget-object p1, Lcom/samsung/android/camera/core2/ExtraBundle;->F:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;->getTypeId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 22
    iput-boolean p6, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mNeedDepth:Z

    return-void
.end method

.method public static getNextSequenceId()I
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->sSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized errorRequest(ILjava/lang/String;)Lcom/samsung/android/camera/core2/processor/ProcessRequest;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "TData_T;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->isError()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mIsErrorSequence:Z

    move/from16 v2, p1

    .line 3
    iput v2, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mError:I

    move-object/from16 v9, p2

    .line 4
    iput-object v9, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mErrorReason:Ljava/lang/String;

    .line 5
    iget v3, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mCurrentSequenceCount:I

    add-int/2addr v3, v0

    iput v3, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mCurrentSequenceCount:I

    .line 6
    sget-object v3, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v4, "errorRequest - sequenceId %d, usage %s, currentSequenceCount %d, totalSequenceCount %d, errorReason %s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mId:I

    .line 7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    sget-object v7, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->ERROR:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    aput-object v7, v5, v0

    const/4 v0, 0x2

    iget v6, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mCurrentSequenceCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x3

    iget v6, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mTotalSequenceCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x4

    iget-object v6, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mErrorReason:Ljava/lang/String;

    aput-object v6, v5, v0

    .line 8
    invoke-static {v3, v4, v5}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    new-instance v0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;

    iget-object v3, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mProcessType:Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

    iget v4, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mMode:I

    iget-object v5, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c()I

    move-result v5

    iget v6, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mResultFormat:I

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mExtraBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    const/4 v12, 0x0

    iget v13, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mId:I

    iget v14, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mCurrentProcessCount:I

    iget v15, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mTotalProcessCount:I

    move-object v2, v0

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v15}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;-><init>(Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;IIILcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamCapability;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 10
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/camera/core2/ExtraBundle$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mExtraBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCurrentProcessCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mCurrentProcessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentSequenceCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mCurrentSequenceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDynamicShotInfo()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    return-object p0
.end method

.method public declared-synchronized getError()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getErrorReason()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mErrorReason:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExtraInfo()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c()I

    move-result p0

    return p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mId:I

    return p0
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mMode:I

    return p0
.end method

.method public getProcessType()Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mProcessType:Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

    return-object p0
.end method

.method public getRequiredYuvProcessCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mRequiredYuvProcessCount:I

    return p0
.end method

.method public getResultFormat()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mResultFormat:I

    return p0
.end method

.method public getResultSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mResultSize:Landroid/util/Size;

    return-object p0
.end method

.method public getTotalProcessCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mTotalProcessCount:I

    return p0
.end method

.method public getTotalSequenceCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mTotalSequenceCount:I

    return p0
.end method

.method public declared-synchronized isDone()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mCurrentSequenceCount:I

    iget v1, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mTotalSequenceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isError()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mIsErrorSequence:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInvalid()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->isError()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public needDepth()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mNeedDepth:Z

    return p0
.end method

.method public declared-synchronized nextRequest(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;Ljava/lang/Object;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/processor/ProcessRequest;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;",
            "TData_T;",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "TData_T;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->isError()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "can\'t get nextRequest, sequence got error"

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object v3

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    sget-object v0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "can\'t get nextRequest, already sequence is done"

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-object v3

    .line 7
    :cond_1
    :try_start_2
    iget v2, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mCurrentSequenceCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mCurrentSequenceCount:I

    .line 8
    sget-object v2, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->RESOURCE_IMAGE:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    if-ne v0, v2, :cond_2

    .line 9
    iget v2, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mCurrentProcessCount:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mCurrentProcessCount:I

    .line 10
    :cond_2
    iget-object v2, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mExtraBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/ExtraBundle;->g(Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/camera/core2/ExtraBundle;->b:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    move-object/from16 v12, p3

    invoke-virtual {v2, v4, v12}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v11

    .line 11
    sget-object v2, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v4, "nextRequest - sequenceId %d, usage %s, currentProcessCount %d, totalProcessCount %d, currentSequenceCount %d, totalSequenceCount %d"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mId:I

    .line 12
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v0, v5, v3

    const/4 v3, 0x2

    iget v6, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mCurrentProcessCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x3

    iget v6, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mTotalProcessCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x4

    iget v6, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mCurrentSequenceCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x5

    iget v6, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mTotalSequenceCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 13
    invoke-static {v2, v4, v5}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    new-instance v16, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;

    iget-object v3, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mProcessType:Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

    iget v4, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mMode:I

    iget-object v2, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c()I

    move-result v5

    iget v6, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mResultFormat:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v13, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mId:I

    iget v14, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mCurrentProcessCount:I

    iget v15, v1, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mTotalProcessCount:I

    move-object/from16 v2, v16

    move-object/from16 v7, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    invoke-direct/range {v2 .. v15}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;-><init>(Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;IIILcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamCapability;III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v16

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mExtraBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/ExtraBundle;->k(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Lcom/samsung/android/camera/core2/ExtraBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/camera/core2/ExtraBundle$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mExtraBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mId:I

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mResultFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mResultSize:Landroid/util/Size;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mTotalProcessCount:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mRequiredYuvProcessCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mTotalSequenceCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mProcessType:Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mNeedDepth:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mIsErrorSequence:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mError:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;->mErrorReason:Ljava/lang/String;

    const/16 v2, 0xc

    aput-object p0, v1, v2

    const-string p0, "Sequence - id %d, mode 0x%X, extraInfo 0x%X, resultFormat %d, resultSize %s, totalProcessCount %d, totalYuvProcessCount %d, totalSequenceCount %d, processType %s, needDepth %b, isErrorSequence %b, error %d, errorReason %s"

    .line 4
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
