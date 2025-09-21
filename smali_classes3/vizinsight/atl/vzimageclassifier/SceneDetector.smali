.class public Lvizinsight/atl/vzimageclassifier/SceneDetector;
.super Ljava/lang/Object;
.source "SceneDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvizinsight/atl/vzimageclassifier/SceneDetector$StatusChangeListener;,
        Lvizinsight/atl/vzimageclassifier/SceneDetector$SceneCategory;
    }
.end annotation


# static fields
.field private static final AAR_VERSION:Ljava/lang/String; = "1.19"

.field public static final INIT_COMPLETED:I = 0x2

.field public static final INIT_FAIL:I = -0x1

.field public static final INIT_NOT_START:I = 0x0

.field public static final INIT_PROCESSISING:I = 0x1

.field public static final ImageFormat_BGR:I = 0x2

.field public static final ImageFormat_NV12:I = 0x3

.field public static final ImageFormat_NV21:I = 0x0

.field public static final ImageFormat_RGBA8888:I = 0x1

.field public static final MODE_AIC:I = 0x0

.field public static final MODE_AIC_FRAME:I = 0x3

.field public static final MODE_AIC_VIDEO:I = 0x2

.field public static final MODE_CH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SceneDetector"


# instance fields
.field base_path:Ljava/lang/String;

.field mClassifier:Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;

.field mContext:Landroid/content/Context;

.field mVZclsJNI:Lvizinsight/atl/vzimageclassifier/VZClassifier;

.field mode:I

.field statusChangeListener:Lvizinsight/atl/vzimageclassifier/SceneDetector$StatusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->statusChangeListener:Lvizinsight/atl/vzimageclassifier/SceneDetector$StatusChangeListener;

    const-string v1, "/system/saiv/image_understanding/db/"

    .line 3
    iput-object v1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->base_path:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mClassifier:Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mode:I

    .line 6
    iput-object p1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p0}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->initilize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->statusChangeListener:Lvizinsight/atl/vzimageclassifier/SceneDetector$StatusChangeListener;

    const-string v1, "/system/saiv/image_understanding/db/"

    .line 10
    iput-object v1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->base_path:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mClassifier:Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;

    .line 12
    iput-object p1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mContext:Landroid/content/Context;

    .line 13
    iput p2, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mode:I

    .line 14
    invoke-virtual {p0}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->initilize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->statusChangeListener:Lvizinsight/atl/vzimageclassifier/SceneDetector$StatusChangeListener;

    .line 17
    iput-object v0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mClassifier:Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;

    .line 18
    iput-object p1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->base_path:Ljava/lang/String;

    .line 20
    iput p3, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mode:I

    .line 21
    invoke-virtual {p0}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->initilize()V

    return-void
.end method

.method private getByteBufferFromStrideBuffer(Ljava/nio/ByteBuffer;IIII)Ljava/nio/ByteBuffer;
    .locals 10

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JK Debug width: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , height: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , width_stride: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , height_stride: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SceneDetector"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, p4, :cond_0

    if-ne p3, p5, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    new-array v0, p0, [B

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, p0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    mul-int p0, p2, p3

    int-to-double v2, p0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int p1, v2

    .line 5
    new-array v2, p1, [B

    move v3, v1

    :goto_0
    if-ge v3, p3, :cond_2

    move v4, v1

    :goto_1
    if-ge v4, p2, :cond_1

    mul-int v5, v3, p2

    add-int/2addr v5, v4

    mul-int v6, v3, p4

    add-int/2addr v6, v4

    .line 6
    aget-byte v6, v0, v6

    aput-byte v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_2
    int-to-double v4, v3

    int-to-double v6, p3

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    move v4, v1

    :goto_3
    if-ge v4, p2, :cond_3

    mul-int v5, v3, p2

    add-int/2addr v5, v4

    add-int/2addr v5, p0

    mul-int v6, v3, p4

    add-int/2addr v6, v4

    mul-int v7, p4, p5

    add-int/2addr v6, v7

    .line 7
    aget-byte v6, v0, v6

    aput-byte v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 8
    :cond_4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 9
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method


# virtual methods
.method public classify(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lvizinsight/atl/vzimageclassifier/VZEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "SceneDetector"

    const/4 v1, 0x0

    .line 29
    :try_start_0
    iget-object p0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mClassifier:Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;

    if-eqz p0, :cond_0

    .line 30
    invoke-interface {p0, p1}, Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;->classify(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "classify(): mClassifier = null"

    .line 31
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "failure of classify()"

    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public classify(Ljava/nio/ByteBuffer;IIII)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "IIII)",
            "Ljava/util/List<",
            "Lvizinsight/atl/vzimageclassifier/VZEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "SceneDetector"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mClassifier:Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;

    if-eqz v2, :cond_0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 2
    invoke-interface/range {v2 .. v7}, Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;->classify(Ljava/nio/ByteBuffer;IIII)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "classify(): mClassifier = null"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "failure of classify()"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public classify(Ljava/nio/ByteBuffer;IIIIIILvizinsight/atl/vzimageclassifier/SceneDetectorParam;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "IIIIII",
            "Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;",
            ")",
            "Ljava/util/List<",
            "Lvizinsight/atl/vzimageclassifier/VZEntity;",
            ">;"
        }
    .end annotation

    if-eqz p6, :cond_1

    const/4 v0, 0x3

    if-ne p6, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p6

    move v5, p7

    move-object v6, p8

    .line 12
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->classify(Ljava/nio/ByteBuffer;IIIILvizinsight/atl/vzimageclassifier/SceneDetectorParam;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 13
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p5}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->getByteBufferFromStrideBuffer(Ljava/nio/ByteBuffer;IIII)Ljava/nio/ByteBuffer;

    move-result-object p1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p6

    move v5, p7

    move-object v6, p8

    .line 14
    invoke-virtual/range {v0 .. v6}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->classify(Ljava/nio/ByteBuffer;IIIILvizinsight/atl/vzimageclassifier/SceneDetectorParam;)Ljava/util/List;

    move-result-object p0

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "SceneDetector"

    const-string p1, "failure of classify()"

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public classify(Ljava/nio/ByteBuffer;IIIILvizinsight/atl/vzimageclassifier/SceneDetectorParam;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "IIII",
            "Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;",
            ")",
            "Ljava/util/List<",
            "Lvizinsight/atl/vzimageclassifier/VZEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "SceneDetector"

    const/4 v1, 0x0

    .line 6
    :try_start_0
    iget-object v2, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mClassifier:Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v2, p6}, Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;->setSceneInfo(Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;)V

    .line 8
    invoke-virtual/range {p0 .. p5}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->classify(Ljava/nio/ByteBuffer;IIII)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "classify(): mClassifier = null"

    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "failure of classify()"

    .line 11
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public classify([BIIII)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIII)",
            "Ljava/util/List<",
            "Lvizinsight/atl/vzimageclassifier/VZEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "SceneDetector"

    const/4 v1, 0x0

    .line 18
    :try_start_0
    iget-object v2, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mClassifier:Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;

    if-eqz v2, :cond_0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 19
    invoke-interface/range {v2 .. v7}, Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;->classify([BIIII)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "classify(): mClassifier = null"

    .line 20
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "failure of classify()"

    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public classify([BIIIILvizinsight/atl/vzimageclassifier/SceneDetectorParam;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIII",
            "Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;",
            ")",
            "Ljava/util/List<",
            "Lvizinsight/atl/vzimageclassifier/VZEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "SceneDetector"

    const/4 v1, 0x0

    .line 23
    :try_start_0
    iget-object v2, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mClassifier:Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;

    if-eqz v2, :cond_0

    .line 24
    invoke-virtual {p0, p6}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->setSceneInfo(Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;)V

    .line 25
    invoke-virtual/range {p0 .. p5}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->classify([BIIII)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "classify(): mClassifier = null"

    .line 26
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "failure of classify()"

    .line 28
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getDetections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lvizinsight/atl/vzimageclassifier/VZEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "SceneDetector"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object p0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mClassifier:Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;->getDetections()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "getDetections(): mClassifier = null"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "failure of getDetections()"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getIdleTime()I
    .locals 2

    const-string v0, "SceneDetector"

    const/4 v1, -0x1

    .line 1
    :try_start_0
    iget-object p0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mClassifier:Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;->getIdleTime()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "getIdleTime(): mClassifier = null"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "failure of getIdleTime()"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getInitState()I
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mVZclsJNI:Lvizinsight/atl/vzimageclassifier/VZClassifier;

    invoke-virtual {p0}, Lvizinsight/atl/vzimageclassifier/VZClassifier;->getInitStatus()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "SceneDetector"

    const-string v0, "failure of getInitState()"

    .line 3
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getSupportedSceneCategory()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lvizinsight/atl/vzimageclassifier/SceneDetector$SceneCategory;",
            ">;"
        }
    .end annotation

    const-string v0, "SceneDetector"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object p0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mClassifier:Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;->getSupportedSceneCategory()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "getSupportedSceneCategory(): mClassifier = null"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "failure of getSupportedSceneCategory()"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public initilize()V
    .locals 5

    const-string v0, "SceneDetector"

    const-string v1, "Initialization of SceneDetector started"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->instance()Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    move-result-object v1

    iget-boolean v1, v1, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->isRunning:Z

    const-string v2, "VZ Debug"

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "Joining release thread for completion"

    .line 3
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->instance()Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;

    move-result-object v1

    invoke-virtual {v1}, Lvizinsight/atl/vzimageclassifier/SceneDetectorDestroyer;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in joining release thread - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "release thread was not-started/completed"

    .line 6
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode before cons= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CD Debug"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v1, Lvizinsight/atl/vzimageclassifier/VZClassifier;

    invoke-direct {v1}, Lvizinsight/atl/vzimageclassifier/VZClassifier;-><init>()V

    iput-object v1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mVZclsJNI:Lvizinsight/atl/vzimageclassifier/VZClassifier;

    .line 9
    iget-object v2, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->base_path:Ljava/lang/String;

    iget v3, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mode:I

    invoke-virtual {v1, v2, v3}, Lvizinsight/atl/vzimageclassifier/VZClassifier;->initialize(Ljava/lang/String;I)V

    .line 10
    :try_start_1
    invoke-virtual {p0}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->getInitState()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JK Debug aar version: 1.19, SceneDetector version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mVZclsJNI:Lvizinsight/atl/vzimageclassifier/VZClassifier;

    invoke-virtual {v2}, Lvizinsight/atl/vzimageclassifier/VZClassifier;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance v1, Lvizinsight/atl/vzimageclassifier/VZClassifierFactory;

    invoke-direct {v1}, Lvizinsight/atl/vzimageclassifier/VZClassifierFactory;-><init>()V

    .line 13
    iget-object v2, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mVZclsJNI:Lvizinsight/atl/vzimageclassifier/VZClassifier;

    invoke-virtual {v3}, Lvizinsight/atl/vzimageclassifier/VZClassifier;->getVersion()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lvizinsight/atl/vzimageclassifier/VZClassifierFactory;->createVZClassifier(Landroid/content/Context;Lvizinsight/atl/vzimageclassifier/VZClassifier;I)Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;

    move-result-object v1

    iput-object v1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mClassifier:Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;

    goto :goto_1

    :cond_1
    const-string v1, "initilize(): mClassifier = null"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mClassifier:Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "failure of initilize()"

    .line 17
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "SceneDetector"

    .line 1
    :try_start_0
    iget-object v1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mClassifier:Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;->release()V

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mClassifier:Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;

    .line 4
    iput-object v1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->statusChangeListener:Lvizinsight/atl/vzimageclassifier/SceneDetector$StatusChangeListener;

    goto :goto_0

    :cond_0
    const-string p0, "release(): mClassifier = null"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "failure of release()"

    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSceneInfo(Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;)V
    .locals 1

    const-string v0, "SceneDetector"

    .line 6
    :try_start_0
    iget-object p0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mClassifier:Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;

    if-eqz p0, :cond_0

    .line 7
    invoke-interface {p0, p1}, Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;->setSceneInfo(Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;)V

    goto :goto_0

    :cond_0
    const-string p0, "setSceneInfo(): mClassifier = null"

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "failure of setSceneInfo()"

    .line 10
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSceneInfo(Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;I)V
    .locals 1

    const-string v0, "SceneDetector"

    .line 1
    :try_start_0
    iget-object p0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mClassifier:Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2}, Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;->setSceneInfo(Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;I)V

    goto :goto_0

    :cond_0
    const-string p0, "setSceneInfo(): mClassifier = null"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "failure of setSceneInfo()"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setStatusChangeListener(Lvizinsight/atl/vzimageclassifier/SceneDetector$StatusChangeListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->statusChangeListener:Lvizinsight/atl/vzimageclassifier/SceneDetector$StatusChangeListener;

    .line 2
    iget-object p1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mClassifier:Lvizinsight/atl/vzimageclassifier/VZAbstractImageClassifier;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->mVZclsJNI:Lvizinsight/atl/vzimageclassifier/VZClassifier;

    new-instance v0, Lvizinsight/atl/vzimageclassifier/SceneDetector$1;

    invoke-direct {v0, p0}, Lvizinsight/atl/vzimageclassifier/SceneDetector$1;-><init>(Lvizinsight/atl/vzimageclassifier/SceneDetector;)V

    invoke-virtual {p1, v0}, Lvizinsight/atl/vzimageclassifier/VZClassifier;->setVZStatusChangeListener(Lvizinsight/atl/vzimageclassifier/VZClassifier$VZStatusChangeListener;)V

    goto :goto_0

    :cond_0
    const-string p1, "SceneDetector"

    const-string v0, "Failed to setStatusChangeListener(): mClassifier = null"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p0, p0, Lvizinsight/atl/vzimageclassifier/SceneDetector;->statusChangeListener:Lvizinsight/atl/vzimageclassifier/SceneDetector$StatusChangeListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lvizinsight/atl/vzimageclassifier/SceneDetector$StatusChangeListener;->onInitComplete(Z)V

    :goto_0
    return-void
.end method
