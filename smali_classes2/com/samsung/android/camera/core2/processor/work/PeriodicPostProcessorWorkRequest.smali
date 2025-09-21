.class public Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest;
.super Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;
.source "PeriodicPostProcessorWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest<",
        "Landroidx/work/ExistingPeriodicWorkPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private final mPeriodicWorkRequest:Landroidx/work/PeriodicWorkRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "PeriodicPPWorkRequest"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;Landroidx/work/PeriodicWorkRequest;Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;->PERIODIC:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;-><init>(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest;->mPeriodicWorkRequest:Landroidx/work/PeriodicWorkRequest;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;Landroidx/work/PeriodicWorkRequest;Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Lcom/samsung/android/camera/core2/processor/work/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest;-><init>(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;Landroidx/work/PeriodicWorkRequest;Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;)V

    return-void
.end method


# virtual methods
.method public getPeriodicWorkRequest()Landroidx/work/PeriodicWorkRequest;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest;->mPeriodicWorkRequest:Landroidx/work/PeriodicWorkRequest;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->mWork:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%s - work: %s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
