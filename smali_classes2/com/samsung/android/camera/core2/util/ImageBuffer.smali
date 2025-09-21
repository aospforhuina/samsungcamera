.class public Lcom/samsung/android/camera/core2/util/ImageBuffer;
.super Lcom/samsung/android/camera/core2/util/DirectBuffer;
.source "ImageBuffer.java"


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/util/ImageInfo;


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/util/DirectBuffer;ZLcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/util/DirectBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/util/DirectBuffer;Z)V

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/util/ImageInfo;->d()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    if-eqz p4, :cond_0

    .line 3
    invoke-virtual {p1, p4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->c(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    :cond_0
    return-void
.end method

.method public static a(ILcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 3

    const-string v0, "capacity"

    .line 1
    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->n(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->nativeAllocateNativeHeap(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/util/DirectBuffer;ZLcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-object v0
.end method

.method public static b(Lcom/samsung/android/camera/core2/util/ImageBuffer;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 3

    const-string v0, "buffer"

    .line 1
    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a(ILcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/BufferBase;->limit()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/BufferBase;->position()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/BufferBase;->clear()V

    .line 6
    invoke-virtual {v0, p0}, Lcom/samsung/android/camera/core2/util/BufferBase;->put(Lcom/samsung/android/camera/core2/util/BufferBase;)V

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 8
    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/core2/util/BufferBase;->limit(I)V

    .line 9
    invoke-virtual {p0, v2}, Lcom/samsung/android/camera/core2/util/BufferBase;->position(I)V

    return-object v0
.end method

.method public static k(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/BufferBase;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/samsung/android/camera/core2/util/DirectBuffer;->mWrapBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/camera/core2/util/DirectBuffer;->mNeedRelease:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/util/DirectBuffer;ZLcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-object v0
.end method

.method public static l(Ljava/nio/ByteBuffer;ZLcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/samsung/android/camera/core2/util/ImageBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/util/DirectBuffer;ZLcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-object v0
.end method


# virtual methods
.method public c()Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 4

    new-instance v0, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/BufferBase;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/util/DirectBuffer;->mWrapBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/camera/core2/util/DirectBuffer;->mNeedRelease:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, p0

    :goto_1
    const/4 v3, 0x0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/samsung/android/camera/core2/util/ImageBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/util/DirectBuffer;ZLcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-object v0
.end method

.method public d(Lcom/samsung/android/camera/core2/util/ImageFile;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->get(Ljava/io/File;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/util/ImageFile;->b(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method

.method public bridge synthetic duplicate()Lcom/samsung/android/camera/core2/util/DirectBuffer;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->c()Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public e()Lcom/samsung/android/camera/core2/util/ImageInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    return-object p0
.end method

.method public f(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->put(Landroid/media/Image;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->h(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public g(Lcom/samsung/android/camera/core2/util/ImageBuffer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->put(Lcom/samsung/android/camera/core2/util/BufferBase;)V

    .line 2
    iget-object p1, p1, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->i(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method

.method public h(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->a()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->b(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    :goto_0
    return-void
.end method

.method public i(Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->a()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->c(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    :goto_0
    return-void
.end method

.method public j(II)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferBase;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/BufferBase;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/samsung/android/camera/core2/util/BufferBase;->mByteBuffer:Ljava/nio/ByteBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 4
    new-instance p1, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/util/BufferBase;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    iget-object v2, p0, Lcom/samsung/android/camera/core2/util/DirectBuffer;->mWrapBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/camera/core2/util/DirectBuffer;->mNeedRelease:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, p0

    :goto_1
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-direct {p1, p2, v2, v3, v4}, Lcom/samsung/android/camera/core2/util/ImageBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/util/DirectBuffer;ZLcom/samsung/android/camera/core2/util/ImageInfo;)V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BufferBase;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-object p1
.end method

.method public bridge synthetic slice(II)Lcom/samsung/android/camera/core2/util/DirectBuffer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->j(II)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/util/BufferBase;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    .line 2
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a:Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->p()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const-string p0, "ImageBuffer - buffer(%s), size(%s), format(%s), timestamp(%d)"

    .line 3
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
