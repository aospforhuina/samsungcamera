.class Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;
.super Ljava/lang/Object;
.source "ProPhotoMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RawData"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/camera/core2/util/DirectBuffer;

.field private b:Lcom/samsung/android/camera/core2/util/DirectBuffer;

.field private final c:Landroid/hardware/camera2/TotalCaptureResult;

.field private d:Landroid/util/Size;

.field private e:Landroid/util/Size;

.field private f:Landroid/util/Size;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field final synthetic i:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->i:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->a:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->b:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->d:Landroid/util/Size;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->e:Landroid/util/Size;

    .line 6
    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->f:Landroid/util/Size;

    .line 7
    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->g:Ljava/lang/String;

    const-string p1, "0000"

    .line 8
    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->h:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->c:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->d(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method

.method private b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->a:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->b:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->i:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->S4(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;)Lcom/samsung/android/camera/core2/node/DngManageNode;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->c:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->i:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object v2, v2, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->f:Landroid/util/Size;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/camera/core2/node/DngManageNode;->loadDngMetadata(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/CamCapability;Landroid/util/Size;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->i:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->S4(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;)Lcom/samsung/android/camera/core2/node/DngManageNode;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->b:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->d:Landroid/util/Size;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->c:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    sget-object v4, Lcom/samsung/android/camera/core2/util/DngUtils$ThumbnailType;->b:Lcom/samsung/android/camera/core2/util/DngUtils$ThumbnailType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/camera/core2/node/DngManageNode;->setThumbnailBuffer(Lcom/samsung/android/camera/core2/util/DirectBuffer;Landroid/util/Size;Landroid/util/Size;Lcom/samsung/android/camera/core2/util/DngUtils$ThumbnailType;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->i:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->S4(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;)Lcom/samsung/android/camera/core2/node/DngManageNode;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/node/DngManageNode;->setDateTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/samsung/android/camera/core2/maker/zg;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/maker/zg;-><init>(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;)V

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->e(Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->g5()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-array v1, v2, [Ljava/lang/Object;

    .line 7
    invoke-static {v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->h([Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->i:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object v3, v2, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->a5(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 9
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->i:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->U4(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->a:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-static {v3, v0}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->k(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/camera/core2/node/NodeChain;->r(Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->i:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->U4(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;->v(Z)V

    .line 11
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->i:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->S4(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;)Lcom/samsung/android/camera/core2/node/DngManageNode;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/node/Node;->setActivate(Z)V

    .line 12
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->i:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->S4(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;)Lcom/samsung/android/camera/core2/node/DngManageNode;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->a:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-static {v2, v0}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->k(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/node/Node;->set(Lcom/samsung/android/camera/core2/node/Node$InputPort;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->a:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->release()V

    .line 14
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->b:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->release()V

    return-void

    .line 15
    :cond_2
    :goto_1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->f5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string v0, "Every field has not filled yet."

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic d(Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->e:Landroid/util/Size;

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->x(Landroid/util/Size;)V

    const/16 v0, 0x20

    .line 2
    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->t(I)V

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->c:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->r(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 4
    sget-object p0, Lcom/samsung/android/camera/core2/util/StrideInfo;->EMPTY_STRIDE_INFO:Lcom/samsung/android/camera/core2/util/StrideInfo;

    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->z(Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    return-void
.end method


# virtual methods
.method c()Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->c:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p0
.end method

.method e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->g:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->h:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->b()V

    return-void
.end method

.method f(Lcom/samsung/android/camera/core2/util/DirectBuffer;Landroid/util/Size;Landroid/util/Size;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->copyFrom(Lcom/samsung/android/camera/core2/util/DirectBuffer;)Lcom/samsung/android/camera/core2/util/DirectBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->a:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    .line 2
    iput-object p2, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->e:Landroid/util/Size;

    .line 3
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->f:Landroid/util/Size;

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->b()V

    return-void
.end method

.method g(Lcom/samsung/android/camera/core2/util/DirectBuffer;Landroid/util/Size;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->copyFrom(Lcom/samsung/android/camera/core2/util/DirectBuffer;)Lcom/samsung/android/camera/core2/util/DirectBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->b:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    .line 2
    iput-object p2, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->d:Landroid/util/Size;

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->b()V

    return-void
.end method
