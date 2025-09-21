.class public Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;
.super Ljava/lang/Object;
.source "BufferForwarder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForwardData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData$Usage;
    }
.end annotation


# instance fields
.field public final a:I

.field public b:Ljava/nio/ByteBuffer;

.field public c:Landroid/util/Size;

.field public d:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public e:J

.field public f:Landroid/hardware/camera2/CaptureResult;

.field public g:Lcom/samsung/android/camera/core2/CamDevice;

.field public h:Ljava/lang/Object;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->a:I

    .line 5
    iput-object p1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->h:Ljava/lang/Object;

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->i:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/nio/ByteBuffer;Landroid/util/Size;Lcom/samsung/android/camera/core2/util/ImgFormat;JLandroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->b:Ljava/nio/ByteBuffer;

    .line 2
    iput-object p2, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->c:Landroid/util/Size;

    .line 3
    iput-object p3, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->d:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 4
    iput-wide p4, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->e:J

    .line 5
    iput-object p6, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->f:Landroid/hardware/camera2/CaptureResult;

    .line 6
    iput-object p7, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->g:Lcom/samsung/android/camera/core2/CamDevice;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forwardData: (forwardBuffer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->c:Landroid/util/Size;

    const-string v2, "null"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", format = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->d:Lcom/samsung/android/camera/core2/util/ImgFormat;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->e:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", camDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->g:Lcom/samsung/android/camera/core2/CamDevice;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamDevice;->r()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", captureResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->f:Landroid/hardware/camera2/CaptureResult;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isFullData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->i:Z

    if-eqz p0, :cond_4

    const-string/jumbo p0, "true"

    goto :goto_3

    :cond_4
    const-string p0, "false"

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
