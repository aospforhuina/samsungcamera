.class Lv3/a;
.super Ljava/lang/Object;
.source "STPAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/a$b;
    }
.end annotation


# static fields
.field private static volatile e:Lv3/a;


# instance fields
.field private a:Landroid/media/ImageWriter;

.field private b:Ljava/lang/Thread;

.field private final c:Ljava/lang/Object;

.field private volatile d:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lv3/a;->a:Landroid/media/ImageWriter;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lv3/a;->d:Z

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lv3/a;->c:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lv3/a;I)J
    .locals 0

    invoke-direct {p0, p1}, Lv3/a;->i(I)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic b(Lv3/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lv3/a;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lv3/a;)Landroid/media/ImageWriter;
    .locals 0

    iget-object p0, p0, Lv3/a;->a:Landroid/media/ImageWriter;

    return-object p0
.end method

.method static synthetic d(Lv3/a;[SJLandroid/media/ImageWriter;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lv3/a;->s([SJLandroid/media/ImageWriter;I)V

    return-void
.end method

.method private i(I)J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    int-to-float p1, p1

    const/16 v2, 0xc

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    const v3, 0xbb80

    mul-int/2addr v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lv3/a;->l(I)I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 3
    invoke-direct {p0, p1}, Lv3/a;->p(F)J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method private l(I)I
    .locals 2

    const/4 p0, 0x2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    if-eq p1, p0, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad audio format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return p0
.end method

.method static m()Lv3/a;
    .locals 1

    .line 1
    sget-object v0, Lv3/a;->e:Lv3/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lv3/a;

    invoke-direct {v0}, Lv3/a;-><init>()V

    sput-object v0, Lv3/a;->e:Lv3/a;

    .line 3
    :cond_0
    sget-object v0, Lv3/a;->e:Lv3/a;

    return-object v0
.end method

.method private o(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv3/a;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    const-string v0, "STPAudioRecorder"

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": stopRecording has not been called! Quitting existing thread"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p2, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lv3/a;->b:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    iput-object p2, p0, Lv3/a;->b:Ljava/lang/Thread;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 5
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Exception in interrupting thread: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :goto_1
    iput-object p2, p0, Lv3/a;->b:Ljava/lang/Thread;

    .line 7
    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method private p(F)J
    .locals 0

    const p0, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr p1, p0

    float-to-long p0, p1

    return-wide p0
.end method

.method private s([SJLandroid/media/ImageWriter;I)V
    .locals 3

    .line 1
    invoke-virtual {p4}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "audio data size "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " greater than image can carry "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Increase Image size"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "STPAudioRecorder"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p5

    .line 8
    invoke-virtual {p5, p1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 9
    invoke-virtual {p0, p2, p3}, Landroid/media/Image;->setTimestamp(J)V

    .line 10
    invoke-virtual {p4, p0}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    return-void
.end method


# virtual methods
.method e()V
    .locals 0

    invoke-virtual {p0}, Lv3/a;->r()V

    return-void
.end method

.method f()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lv3/a;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "STPAudioRecorder"

    const-string v1, "deinitialize"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "deinitialize"

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lv3/a;->o(Ljava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Lv3/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lv3/a;->a:Landroid/media/ImageWriter;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/media/ImageWriter;->close()V

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lv3/a;->a:Landroid/media/ImageWriter;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv3/a;->d:Z

    return-void
.end method

.method h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv3/a;->d:Z

    return-void
.end method

.method j(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lv3/a;->d:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x4000

    const-string v0, "audio_data_size"

    .line 2
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method k(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lv3/a;->d:Z

    if-eqz p0, :cond_0

    const p0, 0xbb80

    const-string v0, "audio_bitrate"

    .line 2
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p0, 0x2

    const-string v0, "audio_data_format"

    .line 3
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p0, 0xc

    const-string v0, "audio_channel_config"

    .line 4
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method n(Landroid/view/Surface;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lv3/a;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "STPAudioRecorder"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize: audioSurface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lv3/a;->c:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    const v2, 0x20203859

    .line 4
    :try_start_0
    invoke-static {p1, v1, v2}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object p1

    iput-object p1, p0, Lv3/a;->a:Landroid/media/ImageWriter;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method q()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lv3/a;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "STPAudioRecorder"

    const-string/jumbo v1, "startRecording"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v1, v0}, Lv3/a;->o(Ljava/lang/String;Z)V

    .line 4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lv3/a$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lv3/a$b;-><init>(Lv3/a;Lv3/a$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lv3/a;->b:Ljava/lang/Thread;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method r()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lv3/a;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "STPAudioRecorder"

    const-string/jumbo v1, "stopRecording"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v1, v0}, Lv3/a;->o(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
