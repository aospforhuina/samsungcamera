.class public Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;
.super Ljava/lang/Object;
.source "MyFilterEngine.java"


# static fields
.field protected static a:Z = false

.field protected static b:Landroid/content/Context; = null

.field private static c:Ljava/lang/String; = "/system/cameradata/myfilter/MyFilterModel.tflite"

.field private static d:Ljava/lang/String; = "/system/cameradata/myfilter/MyFilterGrainModel.tflite"

.field public static e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 1
    sput-object v0, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->e:[B

    const-string v0, "MyFilter.camera.samsung"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native GenerateVignettingMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[F[B)V
.end method

.method public static native GetLibVersion()Ljava/lang/String;
.end method

.method public static native ProcessRestoration(Ljava/lang/String;[F[F)V
.end method

.method public static native ProcessRestorationV2(Ljava/lang/String;Ljava/lang/String;[F[F[F[FII)V
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[B[Ljava/lang/String;[F)I
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const-string v8, "MyFilterEngine-AAR,121,200922"

    const-string v1, "extractStyleV2 - Begin"

    .line 1
    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-boolean v1, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->a:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->c()V

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/16 v1, 0x100

    .line 4
    invoke-static {v0, v1, v1}, Li6/a;->d(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v2, 0x40

    .line 5
    invoke-static {v0, v12, v12, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Li6/a;->g(Landroid/graphics/Bitmap;)[F

    move-result-object v3

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v0, v4, v12, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Li6/a;->g(Landroid/graphics/Bitmap;)[F

    move-result-object v4

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v0, v12, v5, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Li6/a;->g(Landroid/graphics/Bitmap;)[F

    move-result-object v5

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    sub-int/2addr v13, v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int/2addr v14, v2

    invoke-static {v0, v13, v14, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Li6/a;->g(Landroid/graphics/Bitmap;)[F

    move-result-object v0

    .line 9
    array-length v2, v3

    const/4 v13, 0x4

    mul-int/2addr v2, v13

    new-array v2, v2, [F

    .line 10
    array-length v14, v3

    invoke-static {v3, v12, v2, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    array-length v14, v3

    array-length v15, v3

    invoke-static {v4, v12, v2, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    array-length v4, v3

    const/16 v22, 0x2

    mul-int/lit8 v4, v4, 0x2

    array-length v14, v3

    invoke-static {v5, v12, v2, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    array-length v4, v3

    const/4 v5, 0x3

    mul-int/2addr v4, v5

    array-length v3, v3

    invoke-static {v0, v12, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    invoke-static {v11}, Li6/a;->g(Landroid/graphics/Bitmap;)[F

    move-result-object v0

    .line 15
    invoke-static {v11}, Li6/a;->g(Landroid/graphics/Bitmap;)[F

    move-result-object v3

    new-array v4, v13, [F

    const-string v15, "{\n  \"filter_type\" : \"myfilter_effect\",\n  \"vignette_power\": %f,\n  \"vignette_radius\": %f,\n  \"vignette_params\": %s,\n  \"vignette_data_index\": %d,\n  \"vignette_data_size\": %d,\n  \"grain_power\": %f,\n  \"grain_radius\": %f\n}"

    const/4 v14, 0x7

    new-array v1, v14, [Ljava/lang/Object;

    const-wide/16 v23, 0x0

    .line 16
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v1, v12

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v27, 0x1

    aput-object v16, v1, v27

    const-string v16, ""

    aput-object v16, v1, v22

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v1, v5

    const/high16 v28, 0x10000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v1, v13

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v29, 0x5

    aput-object v16, v1, v29

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v30, 0x6

    aput-object v16, v1, v30

    invoke-static {v15, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v12

    const/4 v1, -0x1

    .line 17
    invoke-static {v7, v1}, Ljava/util/Arrays;->fill([BB)V

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 18
    sget-object v14, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/16 v13, 0x100

    invoke-static {v13, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    const-string v13, "2.0.1"

    .line 19
    invoke-static {v13}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->f(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 20
    sget-object v16, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->c:Ljava/lang/String;

    sget-object v17, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->d:Ljava/lang/String;

    const/16 v20, 0x40

    const/16 v21, 0x40

    move-object v5, v14

    move-object/from16 v14, v16

    move-object/from16 v31, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-static/range {v14 .. v21}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->ProcessRestorationV2(Ljava/lang/String;Ljava/lang/String;[F[F[F[FII)V

    .line 21
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v11, v0, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v5, v1, v7}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->GenerateVignettingMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[F[B)V

    const/4 v14, 0x7

    new-array v0, v14, [Ljava/lang/Object;

    .line 22
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v12

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v27

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v22

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v15, 0x3

    aput-object v2, v0, v15

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v15, 0x4

    aput-object v2, v0, v15

    aget v2, v4, v27

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v29

    aget v2, v4, v12

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v30

    move-object/from16 v2, v31

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 23
    aput-object v0, p3, v12

    goto :goto_0

    :cond_1
    move-object v5, v14

    const/4 v14, 0x7

    .line 24
    sget-object v2, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->c:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->ProcessRestoration(Ljava/lang/String;[F[F)V

    :goto_0
    const/16 v0, 0x100

    .line 25
    invoke-static {v3, v0, v0}, Li6/a;->f([FII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    if-nez v2, :cond_2

    move/from16 v3, v22

    goto :goto_1

    :cond_2
    move v3, v12

    .line 27
    :goto_1
    invoke-static {v2, v0, v0}, Li6/a;->d(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 28
    sget-object v0, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->b:Landroid/content/Context;

    const-string v14, "default.png"

    invoke-static {v0, v14}, Li6/b;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v14, 0x200

    .line 29
    invoke-static {v0, v14, v14, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    const-string v0, "1.1.10"

    .line 30
    invoke-static {v0}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->f(Ljava/lang/String;)Z

    move-result v0

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    if-eqz p4, :cond_6

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v0, v11

    move-object/from16 v19, v1

    move-object v1, v2

    move-object/from16 v32, v2

    move-object v2, v14

    move/from16 v33, v3

    move-object/from16 v3, p1

    move-object/from16 v20, v4

    move/from16 v4, v18

    move-object/from16 v34, v5

    move-object/from16 v5, p4

    .line 31
    invoke-static/range {v0 .. v5}, Lcom/sec/android/vsw/myfilter/solution/optimizer/MyFilterCeresOptimizer;->b(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F[F)Z

    .line 32
    invoke-static {v13}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1e

    aget v1, v20, v27

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    move v1, v12

    goto :goto_2

    :cond_3
    move v1, v2

    .line 33
    :goto_2
    aput v1, p4, v0

    const/16 v0, 0x1f

    const/4 v1, 0x7

    aget v1, v19, v1

    float-to-double v3, v1

    const-wide v18, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v1, v3, v18

    if-gez v1, :cond_4

    goto :goto_3

    :cond_4
    move v12, v2

    .line 34
    :goto_3
    aput v12, p4, v0

    :cond_5
    move-object/from16 v0, v32

    goto :goto_4

    :cond_6
    move/from16 v33, v3

    move-object/from16 v34, v5

    move-object v0, v2

    .line 35
    invoke-static {v11, v0, v14, v6, v12}, Lcom/sec/android/vsw/myfilter/solution/optimizer/MyFilterCeresOptimizer;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)Z

    .line 36
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 37
    sget-boolean v3, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->a:Z

    if-eqz v3, :cond_7

    const-string v3, "/sdcard/DCIM/MyFilter/models/tf-feed.png"

    .line 38
    invoke-static {v11, v3}, Li6/a;->b(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    const-string v3, "/sdcard/DCIM/MyFilter/models/tf-output.png"

    .line 39
    invoke-static {v0, v3}, Li6/a;->b(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    const-string v0, "/sdcard/DCIM/MyFilter/models/default.png"

    .line 40
    invoke-static {v14, v0}, Li6/a;->b(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    const-string v0, "/sdcard/DCIM/MyFilter/models/myfilter_lut.png"

    .line 41
    invoke-static {v6, v0}, Li6/a;->b(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    .line 42
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v3, v34

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v3, "/sdcard/DCIM/MyFilter/models/mask.png"

    .line 43
    invoke-static {v0, v3}, Li6/a;->b(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    .line 44
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v0, "/sdcard/DCIM/Myfilter/models/mask.Data"

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :try_start_1
    invoke-virtual {v3, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 47
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_1
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_6
    sub-long v3, v1, v9

    sub-long v5, v15, v9

    sub-long/2addr v1, v15

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms, Proc1: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms, Proc2: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractStyleV2 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extractStyleV2 - End, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v12
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "MyFilterEngine-AAR,121,200922"

    const-string v1, "init()"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->e(Landroid/content/Context;)V

    return-void
.end method

.method private static c()V
    .locals 4

    const-string v0, "MyFilterEngine-AAR,121,200922"

    const-string v1, "prepareStorage - Begin"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/mnt/sdcard/DCIM/"

    .line 2
    invoke-static {v1}, Li6/b;->e(Ljava/lang/String;)V

    const-string v1, "/sdcard/DCIM/MyFilter/"

    .line 3
    invoke-static {v1}, Li6/b;->e(Ljava/lang/String;)V

    const-string v1, "/sdcard/DCIM/MyFilter/models/"

    .line 4
    invoke-static {v1}, Li6/b;->e(Ljava/lang/String;)V

    const-string v2, "/sdcard/DCIM/MyFilter/captured/"

    .line 5
    invoke-static {v2}, Li6/b;->e(Ljava/lang/String;)V

    .line 6
    sget-object v2, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->b:Landroid/content/Context;

    const-string v3, "default.png"

    invoke-static {v2, v1, v3}, Li6/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "prepareStorage - End"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d()V
    .locals 2

    const-string v0, "MyFilterEngine-AAR,121,200922"

    const-string v1, "release()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static e(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->b:Landroid/content/Context;

    return-void
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "\\."

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->GetLibVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 4
    :goto_0
    array-length v3, v0

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    .line 5
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-le v3, v5, :cond_0

    return v2

    .line 6
    :cond_0
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v3, v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method
