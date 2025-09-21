.class Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$6;
.super Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;
.source "ArcFaceAlignmentNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback<",
        "Ljava/lang/Object;",
        "[F[",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$6;->a:Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$6;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$6;->c(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method

.method private synthetic c(Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$6;->a:Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->j(Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->A(J)V

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/util/StrideInfo;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$6;->a:Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->i(Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;)Landroid/util/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$6;->a:Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->k(Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;)I

    move-result v2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$6;->a:Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->g(Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;)I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/camera/core2/util/StrideInfo;-><init>(Landroid/util/Size;II)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->z(Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;[F[Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/a;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/a;-><init>(Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$6;)V

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->e(Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->l()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$6;->a:Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;

    invoke-static {v3}, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->j(Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;)J

    move-result-wide v3

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$6;->a:Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;

    invoke-static {v5}, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->k(Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$6;->a:Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;

    invoke-static {v5}, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->g(Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "ArcFaceAlignmentNode - FaceOutlinePointDataNativeCallback(timestamp %d, rowStride %d, heightSlice %d)"

    .line 5
    invoke-static {v1, v3, v2}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    check-cast p1, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->k(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    new-array v0, v4, [Ljava/lang/Object;

    .line 8
    invoke-static {v0}, Lcom/samsung/android/camera/core2/ExtraBundle;->h([Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->j:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 10
    sget-object p2, Lcom/samsung/android/camera/core2/ExtraBundle;->i:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 11
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$6;->a:Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/FaceAlignmentNodeBase;->OUTPUT_PORT_CUSTOM_FA:Lcom/samsung/android/camera/core2/node/Node$OutputPort;

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/node/Node;->set(Lcom/samsung/android/camera/core2/node/Node$OutputPort;Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostEventFromNative(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, [F

    check-cast p3, [Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$6;->d(Ljava/lang/Object;[F[Landroid/graphics/Rect;)V

    return-void
.end method
