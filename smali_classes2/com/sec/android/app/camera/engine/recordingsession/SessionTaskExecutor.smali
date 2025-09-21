.class public Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor;
.super Ljava/lang/Object;
.source "SessionTaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskBuilder;,
        Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;
    }
.end annotation


# static fields
.field private static final mTaskMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;",
            "Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor;->mTaskMap:Ljava/util/EnumMap;

    .line 2
    sget-object v1, Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;->STOP_RECORDING:Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;

    sget-object v2, Lcom/sec/android/app/camera/engine/recordingsession/u0;->a:Lcom/sec/android/app/camera/engine/recordingsession/u0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;->CANCEL_RECORDING:Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;

    sget-object v2, Lcom/sec/android/app/camera/engine/recordingsession/r0;->a:Lcom/sec/android/app/camera/engine/recordingsession/r0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;->PAUSE_RECORDING:Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;

    sget-object v2, Lcom/sec/android/app/camera/engine/recordingsession/s0;->a:Lcom/sec/android/app/camera/engine/recordingsession/s0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;->RESUME_RECORDING:Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;

    sget-object v2, Lcom/sec/android/app/camera/engine/recordingsession/t0;->a:Lcom/sec/android/app/camera/engine/recordingsession/t0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static execute(Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;",
            "Ljava/util/HashMap<",
            "Landroid/view/Surface;",
            "Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor;->mTaskMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskBuilder;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskBuilder;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskBuilder;->build(Ljava/util/HashMap;)Lcom/sec/android/app/camera/engine/recordingsession/SessionTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/SessionTask;->execute()V

    return-void
.end method
