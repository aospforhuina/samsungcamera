.class public abstract Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;
.super Ljava/lang/Object;
.source "PostProcessorWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<This:",
        "Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder<",
        "**>;ExistingWorkPolicy_T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mUniqueWorkExistingWorkPolicy:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TExistingWorkPolicy_T;"
        }
    .end annotation
.end field

.field protected mUniqueWorkName:Ljava/lang/String;

.field protected final mWork:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;->mWork:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest<",
            "TExistingWorkPolicy_T;>;"
        }
    .end annotation
.end method

.method public final setUniqueWork(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TExistingWorkPolicy_T;)TThis;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;->mUniqueWorkName:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;->mUniqueWorkExistingWorkPolicy:Ljava/lang/Object;

    return-object p0
.end method
