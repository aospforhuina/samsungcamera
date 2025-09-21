.class public Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;
.super Ljava/lang/Object;
.source "PostProcessorWorker.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;
    }
.end annotation


# static fields
.field public static final DATA_KEY_IS_BACKOFF_SUPPORTED:Ljava/lang/String; = "PPWorkerConfigurationKey_BackoffIsSupported"

.field public static final DATA_KEY_IS_PERIODIC_WORK:Ljava/lang/String; = "PPWorkerConfigurationKey_IsPeriodicWork"

.field public static final DATA_KEY_IS_SYNC_WORK:Ljava/lang/String; = "PPWorkerConfigurationKey_IsSyncWork"

.field public static final DATA_KEY_MAX_RUN_ATTEMPT_COUNT:Ljava/lang/String; = "PPWorkerConfigurationKey_MaxRunAttemptCount"

.field public static final DATA_KEY_MAX_WAIT_TIME_FOR_SYNC_WORK:Ljava/lang/String; = "PPWorkerConfigurationKey_MaxWaitTimeForSyncWork"

.field public static final DATA_KEY_PREFIX:Ljava/lang/String; = "PPWorkerConfigurationKey_"

.field public static final DEFAULT_MAX_RUN_ATTEMPT_COUNT:I = 0x5

.field public static final DEFAULT_MAX_WAIT_TIME_FOR_SYNC_WORK:J = 0x1388L


# instance fields
.field private mInputData:Landroidx/work/Data;

.field private mIsBackOffSupported:Z

.field private mIsPeriodicWork:Z

.field private mIsSyncWork:Z

.field private mMaxRunAttemptCount:I

.field private mMaxWaitTimeForSyncWork:J


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mInputData:Landroidx/work/Data;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mIsPeriodicWork:Z

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mIsSyncWork:Z

    const-wide/16 v1, 0x1388

    .line 5
    iput-wide v1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mMaxWaitTimeForSyncWork:J

    const/4 v1, 0x5

    .line 6
    iput v1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mMaxRunAttemptCount:I

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mIsBackOffSupported:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core2/processor/work/worker/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;Landroidx/work/Data;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mInputData:Landroidx/work/Data;

    return-void
.end method

.method static bridge synthetic b(Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mIsBackOffSupported:Z

    return-void
.end method

.method static bridge synthetic c(Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mIsPeriodicWork:Z

    return-void
.end method

.method static bridge synthetic e(Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mIsSyncWork:Z

    return-void
.end method

.method static bridge synthetic g(Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mMaxRunAttemptCount:I

    return-void
.end method

.method static bridge synthetic h(Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mMaxWaitTimeForSyncWork:J

    return-void
.end method


# virtual methods
.method public buildConfigurationData()Landroidx/work/Data;
    .locals 4

    .line 1
    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mInputData:Landroidx/work/Data;

    .line 2
    invoke-virtual {v0, v1}, Landroidx/work/Data$Builder;->putAll(Landroidx/work/Data;)Landroidx/work/Data$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mIsPeriodicWork:Z

    const-string v2, "PPWorkerConfigurationKey_IsPeriodicWork"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroidx/work/Data$Builder;->putBoolean(Ljava/lang/String;Z)Landroidx/work/Data$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mIsSyncWork:Z

    const-string v2, "PPWorkerConfigurationKey_IsSyncWork"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroidx/work/Data$Builder;->putBoolean(Ljava/lang/String;Z)Landroidx/work/Data$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mMaxWaitTimeForSyncWork:J

    const-string v3, "PPWorkerConfigurationKey_MaxWaitTimeForSyncWork"

    .line 5
    invoke-virtual {v0, v3, v1, v2}, Landroidx/work/Data$Builder;->putLong(Ljava/lang/String;J)Landroidx/work/Data$Builder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mMaxRunAttemptCount:I

    const-string v2, "PPWorkerConfigurationKey_MaxRunAttemptCount"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroidx/work/Data$Builder;->putInt(Ljava/lang/String;I)Landroidx/work/Data$Builder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mIsBackOffSupported:Z

    const-string v1, "PPWorkerConfigurationKey_BackoffIsSupported"

    .line 7
    invoke-virtual {v0, v1, p0}, Landroidx/work/Data$Builder;->putBoolean(Ljava/lang/String;Z)Landroidx/work/Data$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p0

    return-object p0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getInputData()Landroidx/work/Data;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mInputData:Landroidx/work/Data;

    return-object p0
.end method

.method public getMaxRunAttemptCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mMaxRunAttemptCount:I

    return p0
.end method

.method public getMaxWaitTimeForSyncWork()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mMaxWaitTimeForSyncWork:J

    return-wide v0
.end method

.method public isBackOffSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mIsBackOffSupported:Z

    return p0
.end method

.method public isPeriodicWork()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mIsPeriodicWork:Z

    return p0
.end method

.method public isSyncWork()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->mIsSyncWork:Z

    return p0
.end method
