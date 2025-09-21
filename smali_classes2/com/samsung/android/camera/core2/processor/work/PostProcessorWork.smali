.class public final enum Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;
.super Ljava/lang/Enum;
.source "PostProcessorWork.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

.field public static final enum RECOVERY_DRAFT_IMAGE:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

.field public static final enum RECOVERY_DRAFT_IMAGE_LEGACY:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

.field public static final enum REMOVE_EXCEEDED_P_LOG_FILE:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

.field public static final enum REMOVE_EXPIRED_CORE2_DB_DATA:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

.field public static final enum REMOVE_PROCESS_TEMP_FILE:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;


# instance fields
.field private final mDefaultOperationType:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;

.field private final mDefaultWorkRequestBuilder:Landroidx/work/WorkRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/WorkRequest$Builder<",
            "**>;"
        }
    .end annotation
.end field

.field private final mEntryWorkerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v6, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    const-class v4, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageWorker;

    new-instance v5, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v0, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageWorker;

    invoke-direct {v5, v0}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    const-string v1, "RECOVERY_DRAFT_IMAGE"

    const/4 v2, 0x0

    const-string v3, "Camera.PostProcessor.RecoveryDraftImageWork"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Landroidx/work/WorkRequest$Builder;)V

    sput-object v6, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->RECOVERY_DRAFT_IMAGE:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    const-class v11, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker;

    new-instance v12, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v1, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker;

    invoke-direct {v12, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    const-string v8, "RECOVERY_DRAFT_IMAGE_LEGACY"

    const/4 v9, 0x1

    const-string v10, "Camera.PostProcessor.RecoveryDraftImageLegacyWork"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Landroidx/work/WorkRequest$Builder;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->RECOVERY_DRAFT_IMAGE_LEGACY:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    .line 3
    new-instance v1, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    const-class v17, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveProcessTempFileWorker;

    new-instance v2, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v3, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveProcessTempFileWorker;

    invoke-direct {v2, v3}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    const-string v14, "REMOVE_PROCESS_TEMP_FILE"

    const/4 v15, 0x2

    const-string v16, "Camera.PostProcessor.RemoveProcessTempFileWork"

    move-object v13, v1

    move-object/from16 v18, v2

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Landroidx/work/WorkRequest$Builder;)V

    sput-object v1, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->REMOVE_PROCESS_TEMP_FILE:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    .line 4
    new-instance v2, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    const-class v11, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExceededPLogFileWorker;

    new-instance v12, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v3, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExceededPLogFileWorker;

    invoke-direct {v12, v3}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    const-string v8, "REMOVE_EXCEEDED_P_LOG_FILE"

    const/4 v9, 0x3

    const-string v10, "Camera.PostProcessor.RemoveExceededPLogFileWork"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Landroidx/work/WorkRequest$Builder;)V

    sput-object v2, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->REMOVE_EXCEEDED_P_LOG_FILE:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    .line 5
    new-instance v3, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    const-class v17, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExpiredCore2DBDataWorker;

    new-instance v4, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v5, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExpiredCore2DBDataWorker;

    invoke-direct {v4, v5}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    const-string v14, "REMOVE_EXPIRED_CORE2_DB_DATA"

    const/4 v15, 0x4

    const-string v16, "Camera.PostProcessor.RemoveExpiredCore2DBDataWork"

    move-object v13, v3

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Landroidx/work/WorkRequest$Builder;)V

    sput-object v3, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->REMOVE_EXPIRED_CORE2_DB_DATA:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    .line 6
    sput-object v4, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->$VALUES:[Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Landroidx/work/WorkRequest$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;",
            "Landroidx/work/WorkRequest$Builder<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->mName:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->mEntryWorkerClass:Ljava/lang/Class;

    .line 4
    iput-object p5, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->mDefaultWorkRequestBuilder:Landroidx/work/WorkRequest$Builder;

    .line 5
    instance-of p1, p5, Landroidx/work/PeriodicWorkRequest$Builder;

    if-eqz p1, :cond_0

    .line 6
    sget-object p1, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;->PERIODIC:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;->ONE_TIME:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->mDefaultOperationType:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->$VALUES:[Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    return-object v0
.end method


# virtual methods
.method public getDefaultOperationType()Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->mDefaultOperationType:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;

    return-object p0
.end method

.method public getDefaultWorkRequestBuilder()Landroidx/work/WorkRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/work/WorkRequest$Builder<",
            "**>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->mDefaultWorkRequestBuilder:Landroidx/work/WorkRequest$Builder;

    return-object p0
.end method

.method public getEntryWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->mEntryWorkerClass:Ljava/lang/Class;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->mName:Ljava/lang/String;

    return-object p0
.end method
