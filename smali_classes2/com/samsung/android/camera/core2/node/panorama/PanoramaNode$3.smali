.class Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$3;
.super Ljava/lang/Object;
.source "PanoramaNode.java"

# interfaces
.implements Lcom/samsung/android/panorama/PanoCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$3;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->q()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onProgress - %d"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$3;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->g(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;)Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$NodeCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$NodeCallback;->f(I)V

    return-void
.end method

.method public onResult(Lcom/samsung/android/panorama/ResultParam;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lcom/samsung/android/panorama/ResultParam;->panoramaJPEG:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_6

    iget v0, p1, Lcom/samsung/android/panorama/ResultParam;->panoramaJPEGSize:I

    if-ge v0, v3, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget v0, p1, Lcom/samsung/android/panorama/ResultParam;->width:I

    if-lt v0, v3, :cond_5

    iget v0, p1, Lcom/samsung/android/panorama/ResultParam;->height:I

    if-ge v0, v3, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    invoke-static {}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->q()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/samsung/android/panorama/ResultParam;->panoramaJPEG:Ljava/nio/ByteBuffer;

    aput-object v5, v4, v2

    iget v5, p1, Lcom/samsung/android/panorama/ResultParam;->panoramaJPEGSize:I

    .line 4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    iget v5, p1, Lcom/samsung/android/panorama/ResultParam;->width:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    iget v5, p1, Lcom/samsung/android/panorama/ResultParam;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x4

    iget v5, p1, Lcom/samsung/android/panorama/ResultParam;->orientation:I

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x5

    iget v5, p1, Lcom/samsung/android/panorama/ResultParam;->croppedWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x6

    iget v5, p1, Lcom/samsung/android/panorama/ResultParam;->croppedHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x7

    iget v5, p1, Lcom/samsung/android/panorama/ResultParam;->fullPanoWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "onResult - jpeg buffer %s buffer size %d width %d height %d orientation %d croppedWidth %d croppedHeight %d fullPanoWidth %d"

    .line 6
    invoke-static {v0, v1, v4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v0, p1, Lcom/samsung/android/panorama/ResultParam;->panoramaJPEG:Ljava/nio/ByteBuffer;

    iget v1, p1, Lcom/samsung/android/panorama/ResultParam;->panoramaJPEGSize:I

    invoke-static {v0, v2, v1, v2}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->wrap(Ljava/nio/ByteBuffer;IIZ)Lcom/samsung/android/camera/core2/util/DirectBuffer;

    move-result-object v5

    .line 8
    new-instance v6, Landroid/util/Size;

    iget v0, p1, Lcom/samsung/android/panorama/ResultParam;->width:I

    iget v1, p1, Lcom/samsung/android/panorama/ResultParam;->height:I

    invoke-direct {v6, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 9
    iget v0, p1, Lcom/samsung/android/panorama/ResultParam;->orientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v10, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v10, v3

    :goto_1
    if-eqz v10, :cond_4

    .line 10
    new-instance v0, Landroid/util/Size;

    iget v1, p1, Lcom/samsung/android/panorama/ResultParam;->croppedHeight:I

    iget v2, p1, Lcom/samsung/android/panorama/ResultParam;->croppedWidth:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_2

    .line 11
    :cond_4
    new-instance v0, Landroid/util/Size;

    iget v1, p1, Lcom/samsung/android/panorama/ResultParam;->croppedWidth:I

    iget v2, p1, Lcom/samsung/android/panorama/ResultParam;->croppedHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    :goto_2
    move-object v7, v0

    .line 12
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$3;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->g(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;)Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$NodeCallback;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;

    iget v8, p1, Lcom/samsung/android/panorama/ResultParam;->fullPanoWidth:I

    iget v9, p1, Lcom/samsung/android/panorama/ResultParam;->orientation:I

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;-><init>(Lcom/samsung/android/camera/core2/util/DirectBuffer;Landroid/util/Size;Landroid/util/Size;IIZ[B)V

    invoke-interface {v0, v1}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$NodeCallback;->b(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;)V

    .line 13
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$3;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->p(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;)V

    return-void

    .line 14
    :cond_5
    :goto_3
    invoke-static {}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->q()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p1, Lcom/samsung/android/panorama/ResultParam;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    iget p1, p1, Lcom/samsung/android/panorama/ResultParam;->height:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "onResult - result width(%d) or height(%d) is less than 1"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$3;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->g(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;)Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$NodeCallback;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$NodeCallback;->onPanoramaError(I)V

    .line 16
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$3;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->p(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;)V

    return-void

    .line 17
    :cond_6
    :goto_4
    invoke-static {}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->q()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/samsung/android/panorama/ResultParam;->panoramaJPEG:Ljava/nio/ByteBuffer;

    .line 18
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    iget p1, p1, Lcom/samsung/android/panorama/ResultParam;->panoramaJPEGSize:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "onResult - panoramaJPEG capacity(%d) or panoramaJPEGSize(%d) is less than 1"

    .line 19
    invoke-static {v0, p1, v1}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$3;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->g(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;)Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$NodeCallback;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$NodeCallback;->onPanoramaError(I)V

    .line 21
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$3;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;->p(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;)V

    return-void
.end method
