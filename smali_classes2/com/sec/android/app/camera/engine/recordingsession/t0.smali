.class public final synthetic Lcom/sec/android/app/camera/engine/recordingsession/t0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskBuilder;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/engine/recordingsession/t0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/recordingsession/t0;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/recordingsession/t0;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/recordingsession/t0;->a:Lcom/sec/android/app/camera/engine/recordingsession/t0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Ljava/util/HashMap;)Lcom/sec/android/app/camera/engine/recordingsession/SessionTask;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/recordingsession/ResumeRecordingTask;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/ResumeRecordingTask;-><init>(Ljava/util/HashMap;)V

    return-object p0
.end method
