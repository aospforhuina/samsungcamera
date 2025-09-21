.class public Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;
.super Ljava/lang/Object;
.source "PostProcessorWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mConfiguration:Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;-><init>(Lcom/samsung/android/camera/core2/processor/work/worker/a;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;->mConfiguration:Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;->mConfiguration:Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    new-instance p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;-><init>(Lcom/samsung/android/camera/core2/processor/work/worker/a;)V

    return-object p0
.end method

.method public enablePeriodicWork(Z)Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;->mConfiguration:Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;

    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->c(Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;Z)V

    return-object p0
.end method

.method public enableSupportingBackOff(Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;->mConfiguration:Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->b(Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;Z)V

    return-void
.end method

.method public enableSyncWork(Z)Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;->mConfiguration:Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;

    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->e(Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;Z)V

    return-object p0
.end method

.method public setInputData(Landroidx/work/Data;)Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;->mConfiguration:Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;

    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->a(Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;Landroidx/work/Data;)V

    return-object p0
.end method

.method public setMaxRunAttemptCount(I)Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;->mConfiguration:Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;

    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->g(Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;I)V

    return-object p0
.end method

.method public setMaxWaitTimeForSyncWork(J)Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;->mConfiguration:Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;->h(Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;J)V

    return-object p0
.end method
