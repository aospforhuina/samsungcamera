.class Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;
.super Ljava/lang/Object;
.source "SpenOcrRecognizer.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenOcrRecognizer"


# instance fields
.field private mNativeHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SpenOcrRecognizer is created! [mNativeHandle : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenOcrRecognizer"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Native Version : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private native Native_cancelRequest(J)V
.end method

.method private native Native_detect(JLandroid/graphics/Bitmap;)I
.end method

.method private native Native_detect(JLandroid/graphics/Bitmap;Lcom/samsung/android/sdk/pen/ocr/SpenRecogConfig;Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;)I
.end method

.method private native Native_finalize(J)V
.end method

.method private native Native_getVersion(J)Ljava/lang/String;
.end method

.method private native Native_recognize(JLandroid/graphics/Bitmap;Lcom/samsung/android/sdk/pen/ocr/SpenRecogConfig;Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;)I
.end method

.method private native Native_recognize(JLandroid/graphics/Bitmap;Lcom/samsung/android/sdk/pen/ocr/SpenRecogConfig;Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;)I
.end method

.method private native Native_recognize_block_at(JLandroid/graphics/Bitmap;IIZLcom/samsung/android/sdk/pen/ocr/SpenRecogConfig;Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;)I
.end method

.method private native Native_setConfiguration(J[Ljava/lang/String;[Ljava/lang/String;)V
.end method


# virtual methods
.method public cancelRequest()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->Native_cancelRequest(J)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->Native_finalize(J)V

    .line 3
    :cond_0
    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    return-void
.end method

.method public detect(Landroid/graphics/Bitmap;)Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start detect(Bitmap) of SpenOcrRecognizer [mNativeHandle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenOcrRecognizer"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-wide v3, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->values()[Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    move-result-object v0

    iget-wide v3, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    invoke-direct {p0, v3, v4, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->Native_detect(JLandroid/graphics/Bitmap;)I

    move-result p1

    aget-object p1, v0, p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End of detect(Bitmap) of SpenOcrRecognizer [mNativeHandle : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 5
    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->OE_RecogError:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    return-object p0
.end method

.method public detect(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/pen/ocr/SpenRecogConfig;Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;)Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;
    .locals 9

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start detect() of SpenOcrRecognizer [mNativeHandle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenOcrRecognizer"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-wide v3, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->values()[Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    move-result-object v0

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->Native_detect(JLandroid/graphics/Bitmap;Lcom/samsung/android/sdk/pen/ocr/SpenRecogConfig;Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;)I

    move-result p1

    aget-object p1, v0, p1

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "End of detect() of SpenOcrRecognizer [mNativeHandle : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 10
    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->OE_RecogError:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    return-object p0
.end method

.method protected finalize()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->close()V

    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->Native_getVersion(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public recognize(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/pen/ocr/SpenRecogConfig;Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;)Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start recognize() of SpenOcrRecognizer [mNativeHandle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenOcrRecognizer"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-wide v3, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->values()[Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    move-result-object v0

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->Native_recognize(JLandroid/graphics/Bitmap;Lcom/samsung/android/sdk/pen/ocr/SpenRecogConfig;Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;)I

    move-result p1

    aget-object p1, v0, p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "End of SpenOcrRecognizer::recognize() of SpenOcrRecognizer [mNativeHandle : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 5
    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->OE_RecogError:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    return-object p0
.end method

.method public recognizeBlockAt(Landroid/graphics/Bitmap;Landroid/graphics/Point;ZLcom/samsung/android/sdk/pen/ocr/SpenRecogConfig;Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;)Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;
    .locals 13

    move-object v9, p0

    move-object v0, p2

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start recognizeBlockAt("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") of SpenOcrRecognizer [mNativeHandle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v11, "SpenOcrRecognizer"

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-wide v1, v9, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->values()[Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    move-result-object v12

    iget-wide v1, v9, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    move-object v0, p0

    move-object v3, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->Native_recognize_block_at(JLandroid/graphics/Bitmap;IIZLcom/samsung/android/sdk/pen/ocr/SpenRecogConfig;Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;)I

    move-result v0

    aget-object v0, v12, v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End of SpenOcrRecognizer::recognizeBlockAt() of SpenOcrRecognizer [mNativeHandle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 5
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->OE_RecogError:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    return-object v0
.end method

.method public recognize_line(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/pen/ocr/SpenRecogConfig;Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;)Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start recognize_line() of SpenOcrRecognizer [mNativeHandle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenOcrRecognizer"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-wide v3, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->values()[Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    move-result-object v0

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->Native_recognize(JLandroid/graphics/Bitmap;Lcom/samsung/android/sdk/pen/ocr/SpenRecogConfig;Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;)I

    move-result p1

    aget-object p1, v0, p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "End of recognize_line() of SpenOcrRecognizer [mNativeHandle : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 5
    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->OE_RecogError:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    return-object p0
.end method

.method public setConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    new-array p1, v2, [Ljava/lang/String;

    aput-object p2, p1, v4

    .line 2
    invoke-direct {p0, v0, v1, v3, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->Native_setConfiguration(J[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setConfiguration([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 3
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 4
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognizer;->Native_setConfiguration(J[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
