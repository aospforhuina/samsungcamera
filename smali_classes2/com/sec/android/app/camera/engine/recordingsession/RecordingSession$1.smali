.class Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;
.super Ljava/lang/Object;
.source "RecordingSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;->this$0:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$MediaRecorderEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;->lambda$run$0(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$MediaRecorderEventListener;)V

    return-void
.end method

.method private synthetic lambda$run$0(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$MediaRecorderEventListener;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;->this$0:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->k(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->getTotalDurationInMs()J

    move-result-wide v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;->this$0:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->k(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->getCurrentFileSizeInKb()J

    move-result-wide v2

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$MediaRecorderEventListener;->onRecordingTick(JJ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;->this$0:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->k(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->getPreviousDurationInMs()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;->this$0:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-static {v2}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->k(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->getCurrentFileDurationInMs()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;->this$0:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-static {v2}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->k(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->getTotalDurationInMs()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    div-long v2, v0, v4

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;->this$0:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-static {v6}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->k(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;

    move-result-object v6

    .line 3
    invoke-virtual {v6}, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->getTotalDurationInMs()J

    move-result-wide v6

    div-long/2addr v6, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;->this$0:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-static {v2}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->k(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/camera/engine/recordingsession/FileInfo;->setTotalDurationInMs(J)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;->this$0:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->isMainSession()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;->this$0:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->m(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$MediaRecorderEventListener;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/recordingsession/y;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/recordingsession/y;-><init>(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;->this$0:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->o(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "RecordingSession"

    const-string v1, "No more space : stop recording"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;->this$0:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->m(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$MediaRecorderEventListener;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/recordingsession/m;->a:Lcom/sec/android/app/camera/engine/recordingsession/m;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;->this$0:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->l(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$1;->this$0:Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->n(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
