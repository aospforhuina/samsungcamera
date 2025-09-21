.class public abstract Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;
.super Ljava/lang/Object;
.source "PostProcessorWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;,
        Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ExistingWorkPolicy_T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mOperationType:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;

.field protected final mUniqueWorkExistingWorkPolicy:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TExistingWorkPolicy_T;"
        }
    .end annotation
.end field

.field protected final mUniqueWorkName:Ljava/lang/String;

.field protected final mWork:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;",
            "Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;",
            "Ljava/lang/String;",
            "TExistingWorkPolicy_T;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->mWork:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->mOperationType:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->mUniqueWorkName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->mUniqueWorkExistingWorkPolicy:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getOperationType()Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->mOperationType:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;

    return-object p0
.end method

.method public final getUniqueWorkExistingWorkPolicy()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TExistingWorkPolicy_T;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->mUniqueWorkExistingWorkPolicy:Ljava/lang/Object;

    return-object p0
.end method

.method public final getUniqueWorkName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->mUniqueWorkName:Ljava/lang/String;

    return-object p0
.end method

.method public final getWork()Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->mWork:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    return-object p0
.end method

.method public final isUniqueWork()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->mUniqueWorkName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->mUniqueWorkExistingWorkPolicy:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
