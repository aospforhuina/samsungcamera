.class public Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest$Builder;
.super Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;
.source "PeriodicPostProcessorWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder<",
        "Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest$Builder;",
        "Landroidx/work/ExistingPeriodicWorkPolicy;",
        ">;"
    }
.end annotation


# instance fields
.field private mPeriodicWorkRequestBuilder:Landroidx/work/PeriodicWorkRequest$Builder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;-><init>(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest;
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest$Builder;->mPeriodicWorkRequestBuilder:Landroidx/work/PeriodicWorkRequest$Builder;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;->mUniqueWorkName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;->mUniqueWorkExistingWorkPolicy:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;->mWork:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest$Builder;->mPeriodicWorkRequestBuilder:Landroidx/work/PeriodicWorkRequest$Builder;

    invoke-virtual {v1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/work/PeriodicWorkRequest;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;->mUniqueWorkName:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;->mUniqueWorkExistingWorkPolicy:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Landroidx/work/ExistingPeriodicWorkPolicy;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest;-><init>(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;Landroidx/work/PeriodicWorkRequest;Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Lcom/samsung/android/camera/core2/processor/work/d;)V

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v0, "PeriodicWork must have unique name and existing work policy"

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v0, "WorkRequestBuilder was not set"

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic build()Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest$Builder;->build()Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest;

    move-result-object p0

    return-object p0
.end method

.method public setPeriodicWorkRequestBuilder(Landroidx/work/PeriodicWorkRequest$Builder;Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;)Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;

    invoke-direct {p2}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;-><init>()V

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;->enablePeriodicWork(Z)Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;

    .line 3
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;->build()Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->buildConfigurationData()Landroidx/work/Data;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, v0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;->enablePeriodicWork(Z)Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest$Builder;->mPeriodicWorkRequestBuilder:Landroidx/work/PeriodicWorkRequest$Builder;

    return-object p0
.end method
