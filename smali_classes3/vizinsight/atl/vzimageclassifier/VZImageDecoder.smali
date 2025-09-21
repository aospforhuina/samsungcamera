.class public Lvizinsight/atl/vzimageclassifier/VZImageDecoder;
.super Ljava/lang/Object;
.source "VZImageDecoder.java"


# static fields
.field public static final IMAGE_FORMAT_ARGB8888:I = 0x1

.field public static final IMAGE_FORMAT_RGBA8888:I = 0x2

.field public static final IMAGE_FORMAT_YUV420:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeImage(Landroid/graphics/Bitmap;I)[B
    .locals 2

    const-string v0, "BIPLAB_DEBUG"

    const-string v1, "Decoding Image ..."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, p2, v0, p1}, Lvizinsight/atl/vzimageclassifier/VZImageDecoder;->getARGB(IILandroid/graphics/Bitmap;)[B

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, p2, v0, p1}, Lvizinsight/atl/vzimageclassifier/VZImageDecoder;->getNV21(IILandroid/graphics/Bitmap;)[B

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, p2, v0, p1}, Lvizinsight/atl/vzimageclassifier/VZImageDecoder;->getRGBA(IILandroid/graphics/Bitmap;)[B

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "Decoding Image completed sucessfully."

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method encodeYUV420SP([B[III)V
    .locals 15

    move/from16 v0, p3

    move/from16 v1, p4

    mul-int v2, v0, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v1, :cond_8

    move v7, v3

    :goto_1
    if-ge v7, v0, :cond_7

    .line 1
    aget v8, p2, v6

    .line 2
    aget v8, p2, v6

    const/high16 v9, 0xff0000

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x10

    .line 3
    aget v9, p2, v6

    const v10, 0xff00

    and-int/2addr v9, v10

    shr-int/lit8 v9, v9, 0x8

    .line 4
    aget v10, p2, v6

    const/16 v11, 0xff

    and-int/2addr v10, v11

    shr-int/2addr v10, v3

    mul-int/lit8 v12, v8, 0x42

    mul-int/lit16 v13, v9, 0x81

    add-int/2addr v12, v13

    mul-int/lit8 v13, v10, 0x19

    add-int/2addr v12, v13

    add-int/lit16 v12, v12, 0x80

    shr-int/lit8 v12, v12, 0x8

    add-int/lit8 v12, v12, 0x10

    mul-int/lit8 v13, v8, -0x26

    mul-int/lit8 v14, v9, 0x4a

    sub-int/2addr v13, v14

    mul-int/lit8 v14, v10, 0x70

    add-int/2addr v13, v14

    add-int/lit16 v13, v13, 0x80

    shr-int/lit8 v13, v13, 0x8

    add-int/lit16 v13, v13, 0x80

    mul-int/lit8 v8, v8, 0x70

    mul-int/lit8 v9, v9, 0x5e

    sub-int/2addr v8, v9

    mul-int/lit8 v10, v10, 0x12

    sub-int/2addr v8, v10

    add-int/lit16 v8, v8, 0x80

    shr-int/lit8 v8, v8, 0x8

    add-int/lit16 v8, v8, 0x80

    add-int/lit8 v9, v5, 0x1

    if-gez v12, :cond_0

    move v12, v3

    goto :goto_2

    :cond_0
    if-le v12, v11, :cond_1

    move v12, v11

    :cond_1
    :goto_2
    int-to-byte v10, v12

    .line 5
    aput-byte v10, p1, v5

    .line 6
    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_6

    rem-int/lit8 v5, v6, 0x2

    if-nez v5, :cond_6

    add-int/lit8 v5, v2, 0x1

    if-gez v8, :cond_2

    move v8, v3

    goto :goto_3

    :cond_2
    if-le v8, v11, :cond_3

    move v8, v11

    :cond_3
    :goto_3
    int-to-byte v8, v8

    .line 7
    aput-byte v8, p1, v2

    add-int/lit8 v2, v5, 0x1

    if-gez v13, :cond_4

    move v11, v3

    goto :goto_4

    :cond_4
    if-le v13, v11, :cond_5

    goto :goto_4

    :cond_5
    move v11, v13

    :goto_4
    int-to-byte v8, v11

    .line 8
    aput-byte v8, p1, v5

    :cond_6
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    move v5, v9

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method getARGB(IILandroid/graphics/Bitmap;)[B
    .locals 9

    mul-int p0, p1, p2

    .line 1
    new-array v8, p0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, v8

    move v3, p1

    move v6, p1

    move v7, p2

    .line 2
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int/lit8 p0, p0, 0x4

    .line 3
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v8}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method getNV21(IILandroid/graphics/Bitmap;)[B
    .locals 10

    mul-int v0, p1, p2

    .line 1
    new-array v9, v0, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, v9

    move v4, p1

    move v7, p1

    move v8, p2

    .line 2
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int/lit8 v0, v0, 0x3

    .line 3
    div-int/lit8 v0, v0, 0x2

    new-array p3, v0, [B

    .line 4
    invoke-virtual {p0, p3, v9, p1, p2}, Lvizinsight/atl/vzimageclassifier/VZImageDecoder;->encodeYUV420SP([B[III)V

    return-object p3
.end method

.method getRGBA(IILandroid/graphics/Bitmap;)[B
    .locals 11

    mul-int p0, p1, p2

    .line 1
    new-array p0, p0, [I

    mul-int/lit8 v0, p1, 0x4

    mul-int/2addr v0, p2

    .line 2
    new-array v8, v0, [B

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p0

    move v3, p1

    move v6, p1

    move v7, p2

    .line 3
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p3, 0x0

    move v0, p3

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v0, p2, :cond_9

    move v3, p3

    :goto_1
    if-ge v3, p1, :cond_8

    .line 4
    aget v4, p0, v2

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x18

    .line 5
    aget v5, p0, v2

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x10

    .line 6
    aget v6, p0, v2

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x8

    .line 7
    aget v7, p0, v2

    const/16 v9, 0xff

    and-int/2addr v7, v9

    shr-int/2addr v7, p3

    add-int/lit8 v10, v1, 0x1

    if-gez v5, :cond_0

    move v5, p3

    goto :goto_2

    :cond_0
    if-le v5, v9, :cond_1

    move v5, v9

    :cond_1
    :goto_2
    int-to-byte v5, v5

    .line 8
    aput-byte v5, v8, v1

    add-int/lit8 v1, v10, 0x1

    if-gez v6, :cond_2

    move v6, p3

    goto :goto_3

    :cond_2
    if-le v6, v9, :cond_3

    move v6, v9

    :cond_3
    :goto_3
    int-to-byte v5, v6

    .line 9
    aput-byte v5, v8, v10

    add-int/lit8 v5, v1, 0x1

    if-gez v7, :cond_4

    move v7, p3

    goto :goto_4

    :cond_4
    if-le v7, v9, :cond_5

    move v7, v9

    :cond_5
    :goto_4
    int-to-byte v6, v7

    .line 10
    aput-byte v6, v8, v1

    add-int/lit8 v1, v5, 0x1

    if-gez v4, :cond_6

    move v4, p3

    goto :goto_5

    :cond_6
    if-le v4, v9, :cond_7

    move v4, v9

    :cond_7
    :goto_5
    int-to-byte v4, v4

    .line 11
    aput-byte v4, v8, v5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    return-object v8
.end method
