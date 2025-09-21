.class public Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionSupport;
.super Ljava/lang/Object;
.source "SelfieCorrectionSupport.java"


# static fields
.field private static final _TAG:Ljava/lang/String; = "FacialBasedSelfieCorrection-AAR"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHugeFaceId([Landroid/graphics/Rect;)I
    .locals 6

    const-string v0, "FacialBasedSelfieCorrection-AAR"

    const/4 v1, -0x1

    if-eqz p0, :cond_2

    const/4 v2, 0x0

    move v3, v2

    .line 6
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 7
    aget-object v4, p0, v2

    iget v4, v4, Landroid/graphics/Rect;->right:I

    aget-object v5, p0, v2

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    .line 8
    aget-object v1, p0, v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    aget-object v3, p0, v2

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    move v3, v1

    move v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHugeFaceId() - nFaces : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", hugeFaceId : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p0, "getHugeFaceId() - Param is null"

    .line 10
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method

.method public static getHugeFaceId([Landroid/hardware/camera2/params/Face;)I
    .locals 6

    const-string v0, "FacialBasedSelfieCorrection-AAR"

    const/4 v1, -0x1

    if-eqz p0, :cond_2

    const/4 v2, 0x0

    move v3, v2

    .line 1
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 2
    aget-object v4, p0, v2

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    aget-object v5, p0, v2

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    .line 3
    aget-object v1, p0, v2

    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    move v3, v1

    move v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHugeFaceId() - nFaces : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", hugeFaceId : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p0, "getHugeFaceId() - Param is null"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method

.method public static getParamArray(IIILandroid/graphics/Rect;Landroid/graphics/Rect;[Landroid/hardware/camera2/params/Face;I)[I
    .locals 5

    .line 1
    invoke-static {p5}, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionSupport;->getHugeFaceId([Landroid/hardware/camera2/params/Face;)I

    move-result v0

    const/16 v1, 0x11

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    const/4 p1, 0x2

    aput p2, v1, p1

    .line 2
    iget p2, p3, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x3

    aput p2, v1, v2

    .line 3
    iget p2, p3, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x4

    aput p2, v1, v2

    .line 4
    iget p2, p3, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x5

    aput p2, v1, v2

    .line 5
    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    const/4 p3, 0x6

    aput p2, v1, p3

    .line 6
    iget p2, p4, Landroid/graphics/Rect;->left:I

    const/4 p3, 0x7

    aput p2, v1, p3

    .line 7
    iget p2, p4, Landroid/graphics/Rect;->right:I

    const/16 p3, 0x8

    aput p2, v1, p3

    .line 8
    iget p2, p4, Landroid/graphics/Rect;->top:I

    const/16 p3, 0x9

    aput p2, v1, p3

    .line 9
    iget p2, p4, Landroid/graphics/Rect;->bottom:I

    const/16 p3, 0xa

    aput p2, v1, p3

    .line 10
    array-length p2, p5

    const/16 p3, 0xb

    aput p2, v1, p3

    const/16 p2, 0xc

    const/4 p3, -0x1

    aput p3, v1, p2

    const/16 p4, 0xd

    aput p3, v1, p4

    const/16 v2, 0xe

    aput p3, v1, v2

    const/16 v3, 0xf

    aput p3, v1, v3

    const/16 v4, 0x10

    aput p6, v1, v4

    .line 11
    array-length v4, p5

    if-lez v4, :cond_0

    if-ne v0, p3, :cond_0

    const-string p0, "FacialBasedSelfieCorrection-AAR"

    const-string p1, "getParamArray() - Wrong Face Rects, Return NULL array"

    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 13
    :cond_0
    array-length v4, p5

    if-nez v4, :cond_1

    if-ne p6, p0, :cond_1

    aput p3, v1, p2

    aput p3, v1, p4

    aput p3, v1, v2

    aput p3, v1, v3

    goto :goto_0

    .line 14
    :cond_1
    array-length v4, p5

    if-lt v4, p0, :cond_2

    if-ne p6, p0, :cond_2

    .line 15
    aget-object p0, p5, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    aput p0, v1, p2

    .line 16
    aget-object p0, p5, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    aput p0, v1, p4

    .line 17
    aget-object p0, p5, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    aput p0, v1, v2

    .line 18
    aget-object p0, p5, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    aput p0, v1, v3

    goto :goto_0

    .line 19
    :cond_2
    array-length v4, p5

    if-nez v4, :cond_3

    if-ne p6, p1, :cond_3

    aput p3, v1, p2

    aput p3, v1, p4

    aput p3, v1, v2

    aput p3, v1, v3

    goto :goto_0

    .line 20
    :cond_3
    array-length p3, p5

    if-ne p3, p0, :cond_4

    if-ne p6, p1, :cond_4

    .line 21
    aget-object p0, p5, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    aput p0, v1, p2

    .line 22
    aget-object p0, p5, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    aput p0, v1, p4

    .line 23
    aget-object p0, p5, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    aput p0, v1, v2

    .line 24
    aget-object p0, p5, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    aput p0, v1, v3

    :cond_4
    :goto_0
    return-object v1
.end method

.method public static getParamArrayWithPadding(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;[Landroid/graphics/Rect;I)[I
    .locals 5

    .line 31
    invoke-static {p7}, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionSupport;->getHugeFaceId([Landroid/graphics/Rect;)I

    move-result v0

    const-string v1, "FacialBasedSelfieCorrection-AAR"

    if-gez v0, :cond_0

    const-string v2, "There is no Face Rects, Return NULL array"

    .line 32
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v2, 0x14

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    const/4 p0, 0x1

    aput p1, v2, p0

    const/4 p1, 0x2

    aput p2, v2, p1

    const/4 p2, 0x3

    aput p3, v2, p2

    const/4 p3, 0x4

    aput p4, v2, p3

    const/4 p3, 0x5

    .line 33
    iget p4, p5, Landroid/graphics/Rect;->left:I

    aput p4, v2, p3

    const/4 p3, 0x6

    .line 34
    iget p4, p5, Landroid/graphics/Rect;->right:I

    aput p4, v2, p3

    const/4 p3, 0x7

    .line 35
    iget p4, p5, Landroid/graphics/Rect;->top:I

    aput p4, v2, p3

    const/16 p3, 0x8

    .line 36
    iget p4, p5, Landroid/graphics/Rect;->bottom:I

    aput p4, v2, p3

    const/16 p3, 0x9

    .line 37
    iget p4, p6, Landroid/graphics/Rect;->left:I

    aput p4, v2, p3

    const/16 p3, 0xa

    .line 38
    iget p4, p6, Landroid/graphics/Rect;->right:I

    aput p4, v2, p3

    const/16 p3, 0xb

    .line 39
    iget p4, p6, Landroid/graphics/Rect;->top:I

    aput p4, v2, p3

    const/16 p3, 0xc

    .line 40
    iget p4, p6, Landroid/graphics/Rect;->bottom:I

    aput p4, v2, p3

    const/16 p3, 0xd

    if-eqz p7, :cond_1

    .line 41
    array-length p4, p7

    aput p4, v2, p3

    goto :goto_0

    :cond_1
    aput v3, v2, p3

    :goto_0
    const/16 p3, 0xe

    const/4 p4, -0x1

    aput p4, v2, p3

    const/16 p5, 0xf

    aput p4, v2, p5

    const/16 p6, 0x10

    aput p4, v2, p6

    const/16 v3, 0x11

    aput p4, v2, v3

    const/16 v4, 0x12

    aput p8, v2, v4

    if-eqz p7, :cond_8

    .line 42
    array-length v4, p7

    if-lez v4, :cond_2

    if-ne v0, p4, :cond_2

    const-string p0, "getParamArray() - Wrong Face Rects, Return NULL array"

    .line 43
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_2
    array-length v1, p7

    if-nez v1, :cond_3

    if-ne p8, p0, :cond_3

    aput p4, v2, p3

    aput p4, v2, p5

    aput p4, v2, p6

    aput p4, v2, v3

    goto/16 :goto_1

    .line 45
    :cond_3
    array-length v1, p7

    if-lt v1, p0, :cond_4

    if-ne p8, p0, :cond_4

    .line 46
    aget-object p0, p7, v0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    aput p0, v2, p3

    .line 47
    aget-object p0, p7, v0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    aput p0, v2, p5

    .line 48
    aget-object p0, p7, v0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    aput p0, v2, p6

    .line 49
    aget-object p0, p7, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    aput p0, v2, v3

    goto :goto_1

    .line 50
    :cond_4
    array-length v1, p7

    if-nez v1, :cond_5

    if-ne p8, p1, :cond_5

    aput p4, v2, p3

    aput p4, v2, p5

    aput p4, v2, p6

    aput p4, v2, v3

    goto :goto_1

    .line 51
    :cond_5
    array-length v1, p7

    if-ne v1, p0, :cond_6

    if-ne p8, p1, :cond_6

    .line 52
    aget-object p0, p7, v0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    aput p0, v2, p3

    .line 53
    aget-object p0, p7, v0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    aput p0, v2, p5

    .line 54
    aget-object p0, p7, v0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    aput p0, v2, p6

    .line 55
    aget-object p0, p7, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    aput p0, v2, v3

    goto :goto_1

    .line 56
    :cond_6
    array-length p1, p7

    if-nez p1, :cond_7

    if-ne p8, p2, :cond_7

    aput p4, v2, p3

    aput p4, v2, p5

    aput p4, v2, p6

    aput p4, v2, v3

    goto :goto_1

    .line 57
    :cond_7
    array-length p1, p7

    if-lt p1, p0, :cond_9

    if-ne p8, p2, :cond_9

    .line 58
    aget-object p0, p7, v0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    aput p0, v2, p3

    .line 59
    aget-object p0, p7, v0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    aput p0, v2, p5

    .line 60
    aget-object p0, p7, v0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    aput p0, v2, p6

    .line 61
    aget-object p0, p7, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    aput p0, v2, v3

    goto :goto_1

    :cond_8
    aput p4, v2, p3

    aput p4, v2, p5

    aput p4, v2, p6

    aput p4, v2, v3

    :cond_9
    :goto_1
    return-object v2
.end method

.method public static getParamArrayWithPadding(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;[Landroid/hardware/camera2/params/Face;I)[I
    .locals 4

    .line 1
    invoke-static {p7}, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionSupport;->getHugeFaceId([Landroid/hardware/camera2/params/Face;)I

    move-result v0

    const/16 v1, 0x14

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    const/4 p1, 0x2

    aput p2, v1, p1

    const/4 p2, 0x3

    aput p3, v1, p2

    const/4 p3, 0x4

    aput p4, v1, p3

    .line 2
    iget p3, p5, Landroid/graphics/Rect;->left:I

    const/4 p4, 0x5

    aput p3, v1, p4

    .line 3
    iget p3, p5, Landroid/graphics/Rect;->right:I

    const/4 p4, 0x6

    aput p3, v1, p4

    .line 4
    iget p3, p5, Landroid/graphics/Rect;->top:I

    const/4 p4, 0x7

    aput p3, v1, p4

    .line 5
    iget p3, p5, Landroid/graphics/Rect;->bottom:I

    const/16 p4, 0x8

    aput p3, v1, p4

    .line 6
    iget p3, p6, Landroid/graphics/Rect;->left:I

    const/16 p4, 0x9

    aput p3, v1, p4

    .line 7
    iget p3, p6, Landroid/graphics/Rect;->right:I

    const/16 p4, 0xa

    aput p3, v1, p4

    .line 8
    iget p3, p6, Landroid/graphics/Rect;->top:I

    const/16 p4, 0xb

    aput p3, v1, p4

    .line 9
    iget p3, p6, Landroid/graphics/Rect;->bottom:I

    const/16 p4, 0xc

    aput p3, v1, p4

    const/16 p3, 0xd

    if-eqz p7, :cond_0

    .line 10
    array-length p4, p7

    aput p4, v1, p3

    goto :goto_0

    :cond_0
    aput v2, v1, p3

    :goto_0
    const/16 p3, 0xe

    const/4 p4, -0x1

    aput p4, v1, p3

    const/16 p5, 0xf

    aput p4, v1, p5

    const/16 p6, 0x10

    aput p4, v1, p6

    const/16 v2, 0x11

    aput p4, v1, v2

    const/16 v3, 0x12

    aput p8, v1, v3

    if-eqz p7, :cond_7

    .line 11
    array-length v3, p7

    if-lez v3, :cond_1

    if-ne v0, p4, :cond_1

    const-string p0, "FacialBasedSelfieCorrection-AAR"

    const-string p1, "getParamArray() - Wrong Face Rects, Return NULL array"

    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 13
    :cond_1
    array-length v3, p7

    if-nez v3, :cond_2

    if-ne p8, p0, :cond_2

    aput p4, v1, p3

    aput p4, v1, p5

    aput p4, v1, p6

    aput p4, v1, v2

    goto/16 :goto_1

    .line 14
    :cond_2
    array-length v3, p7

    if-lt v3, p0, :cond_3

    if-ne p8, p0, :cond_3

    .line 15
    aget-object p0, p7, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    aput p0, v1, p3

    .line 16
    aget-object p0, p7, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    aput p0, v1, p5

    .line 17
    aget-object p0, p7, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    aput p0, v1, p6

    .line 18
    aget-object p0, p7, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    aput p0, v1, v2

    goto/16 :goto_1

    .line 19
    :cond_3
    array-length v3, p7

    if-nez v3, :cond_4

    if-ne p8, p1, :cond_4

    aput p4, v1, p3

    aput p4, v1, p5

    aput p4, v1, p6

    aput p4, v1, v2

    goto/16 :goto_1

    .line 20
    :cond_4
    array-length v3, p7

    if-ne v3, p0, :cond_5

    if-ne p8, p1, :cond_5

    .line 21
    aget-object p0, p7, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    aput p0, v1, p3

    .line 22
    aget-object p0, p7, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    aput p0, v1, p5

    .line 23
    aget-object p0, p7, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    aput p0, v1, p6

    .line 24
    aget-object p0, p7, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    aput p0, v1, v2

    goto :goto_1

    .line 25
    :cond_5
    array-length p1, p7

    if-nez p1, :cond_6

    if-ne p8, p2, :cond_6

    aput p4, v1, p3

    aput p4, v1, p5

    aput p4, v1, p6

    aput p4, v1, v2

    goto :goto_1

    .line 26
    :cond_6
    array-length p1, p7

    if-lt p1, p0, :cond_8

    if-ne p8, p2, :cond_8

    .line 27
    aget-object p0, p7, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    aput p0, v1, p3

    .line 28
    aget-object p0, p7, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    aput p0, v1, p5

    .line 29
    aget-object p0, p7, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    aput p0, v1, p6

    .line 30
    aget-object p0, p7, v0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    aput p0, v1, v2

    goto :goto_1

    :cond_7
    aput p4, v1, p3

    aput p4, v1, p5

    aput p4, v1, p6

    aput p4, v1, v2

    :cond_8
    :goto_1
    return-object v1
.end method
