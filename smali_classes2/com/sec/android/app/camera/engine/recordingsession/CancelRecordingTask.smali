.class Lcom/sec/android/app/camera/engine/recordingsession/CancelRecordingTask;
.super Lcom/sec/android/app/camera/engine/recordingsession/SessionTask;
.source "CancelRecordingTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CancelRecordingTask"


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Landroid/view/Surface;",
            "Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/SessionTask;-><init>(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method getExceptionType()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method run(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->cancelRecording()V

    return-void
.end method
