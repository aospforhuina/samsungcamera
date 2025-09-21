.class public Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;
.super Ljava/lang/Object;
.source "ProcessRequestImpl.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/processor/ProcessRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl$Sequence;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data_T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
        "TData_T;>;"
    }
.end annotation


# instance fields
.field protected final mBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

.field protected final mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

.field protected final mCurrentProcessCount:I

.field protected final mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData_T;"
        }
    .end annotation
.end field

.field protected final mError:Ljava/lang/Integer;

.field protected final mErrorReason:Ljava/lang/String;

.field protected final mExtraInfo:I

.field protected final mMode:I

.field protected final mProcessType:Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

.field protected final mResultFormat:I

.field protected final mSequenceId:I

.field protected final mTotalProcessCount:I

.field protected mUsage:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;IIILcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamCapability;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;",
            "III",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "TData_T;",
            "Lcom/samsung/android/camera/core2/ExtraBundle;",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            "III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mProcessType:Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

    .line 3
    iput p2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mMode:I

    .line 4
    iput p3, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mExtraInfo:I

    .line 5
    iput p4, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mResultFormat:I

    .line 6
    iput-object p5, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mUsage:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    .line 7
    iput-object p6, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mError:Ljava/lang/Integer;

    .line 8
    iput-object p7, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mErrorReason:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mData:Ljava/lang/Object;

    .line 10
    iput-object p9, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 11
    iput-object p10, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 12
    iput p11, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mSequenceId:I

    .line 13
    iput p12, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mCurrentProcessCount:I

    .line 14
    iput p13, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mTotalProcessCount:I

    return-void
.end method


# virtual methods
.method public discardErrorUsage()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->ERROR:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mUsage:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->DISCARDED_ERROR:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mUsage:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    :cond_0
    return-void
.end method

.method public getCamCapability()Lcom/samsung/android/camera/core2/CamCapability;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    return-object p0
.end method

.method public getCurrentProcessCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mCurrentProcessCount:I

    return p0
.end method

.method public getData()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TData_T;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mData:Ljava/lang/Object;

    return-object p0
.end method

.method public getError()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mError:Ljava/lang/Integer;

    return-object p0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mErrorReason:Ljava/lang/String;

    return-object p0
.end method

.method public getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    return-object p0
.end method

.method public getExtraInfo()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mExtraInfo:I

    return p0
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mMode:I

    return p0
.end method

.method public getProcessType()Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mProcessType:Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

    return-object p0
.end method

.method public getResultFormat()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mResultFormat:I

    return p0
.end method

.method public getSequenceId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mSequenceId:I

    return p0
.end method

.method public getTotalProcessCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mTotalProcessCount:I

    return p0
.end method

.method public getUsage()Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mUsage:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mSequenceId:I

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mExtraInfo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mResultFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mCurrentProcessCount:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mTotalProcessCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mProcessType:Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mUsage:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->mErrorReason:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object p0, v1, v2

    const-string p0, "ProcessRequestImpl - sequenceId %d, mode 0x%X, extraInfo 0x%X, resultFormat %d, current/totalProcessCount %d/%d, processType %s, usage %s, errorReason %s"

    .line 4
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
