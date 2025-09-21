.class public final Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2Kt;
.super Ljava/lang/Object;
.source "GooglePhotosHelperV2.kt"


# static fields
.field private static final XMP_RESERVED_SIZE:I = 0x500


# direct methods
.method public static final synthetic access$getXMPMeta(Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;IJJJJJ)Lc/d;
    .locals 0

    invoke-static/range {p0 .. p11}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2Kt;->getXMPMeta(Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;IJJJJJ)Lc/d;

    move-result-object p0

    return-object p0
.end method

.method private static final getXMPMeta(Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;IJJJJJ)Lc/d;
    .locals 16

    .line 1
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2$Companion;->getTAG$motionphoto_composer_v3_1_9_release()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "primary-type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", padding="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", primary-len="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, p2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", primary-offset="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, p4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", second-len="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, p6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", second-offset="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p8

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", duration="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p10

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lc/e;->c()Lc/g;

    move-result-object v0

    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v8, "GCamera"

    .line 5
    invoke-interface {v0, v1, v8}, Lc/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "http://ns.google.com/photos/1.0/container/"

    const-string v9, "Container"

    .line 6
    invoke-interface {v0, v8, v9}, Lc/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v15, "http://ns.google.com/photos/1.0/container/item/"

    const-string v9, "Item"

    .line 7
    invoke-interface {v0, v15, v9}, Lc/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    invoke-static {}, Lc/e;->b()Lc/d;

    move-result-object v0

    const/4 v14, 0x1

    .line 9
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "MotionPhoto"

    invoke-interface {v0, v1, v10, v9}, Lc/d;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v10, "MotionPhotoVersion"

    .line 10
    invoke-interface {v0, v1, v10, v9}, Lc/d;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "MotionPhotoPresentationTimestampUs"

    invoke-interface {v0, v1, v7, v6}, Lc/d;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    new-instance v1, Lf/c;

    invoke-direct {v1}, Lf/c;-><init>()V

    invoke-virtual {v1, v14}, Lf/c;->v(Z)Lf/c;

    move-result-object v12

    .line 13
    new-instance v1, Lf/c;

    invoke-direct {v1}, Lf/c;-><init>()V

    invoke-virtual {v1, v14}, Lf/c;->B(Z)Lf/c;

    move-result-object v1

    const-string v11, "Directory"

    const/4 v13, 0x0

    move-object v9, v0

    move-object v10, v8

    move v6, v14

    move-object v14, v1

    .line 14
    invoke-interface/range {v9 .. v14}, Lc/d;->f(Ljava/lang/String;Ljava/lang/String;Lf/c;Ljava/lang/String;Lf/c;)V

    .line 15
    new-instance v1, Lf/c;

    invoke-direct {v1}, Lf/c;-><init>()V

    invoke-virtual {v1, v6}, Lf/c;->v(Z)Lf/c;

    move-result-object v12

    .line 16
    new-instance v1, Lf/c;

    invoke-direct {v1}, Lf/c;-><init>()V

    invoke-virtual {v1, v6}, Lf/c;->B(Z)Lf/c;

    move-result-object v14

    const-string v11, "Directory"

    .line 17
    invoke-interface/range {v9 .. v14}, Lc/d;->f(Ljava/lang/String;Ljava/lang/String;Lf/c;Ljava/lang/String;Lf/c;)V

    const-string v1, "Directory"

    .line 18
    invoke-static {v1, v6}, Lc/f;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/Container:Item"

    .line 19
    invoke-static {v6, v7}, Lkotlin/jvm/internal/l;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v13, "Mime"

    move-object v11, v6

    move-object v12, v15

    invoke-interface/range {v9 .. v14}, Lc/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Semantic"

    const-string v14, "Primary"

    .line 21
    invoke-interface/range {v9 .. v14}, Lc/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Length"

    const-string v14, "0"

    .line 22
    invoke-interface/range {v9 .. v14}, Lc/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Padding"

    move-object/from16 p0, v0

    move-object/from16 p1, v8

    move-object/from16 p2, v6

    move-object/from16 p3, v15

    move-object/from16 p4, v3

    move-object/from16 p5, v2

    invoke-interface/range {p0 .. p5}, Lc/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 24
    invoke-static {v1, v2}, Lc/f;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1, v7}, Lkotlin/jvm/internal/l;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 26
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->MP4:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mime"

    move-object/from16 p2, v1

    move-object/from16 p4, v3

    move-object/from16 p5, v2

    invoke-interface/range {p0 .. p5}, Lc/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Semantic"

    const-string v3, "MotionPhoto"

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    .line 27
    invoke-interface/range {p0 .. p5}, Lc/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Length"

    move-object/from16 p4, v3

    move-object/from16 p5, v2

    invoke-interface/range {p0 .. p5}, Lc/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Padding"

    const-string v3, "0"

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    .line 29
    invoke-interface/range {p0 .. p5}, Lc/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "create().apply {\n        //TODO: change bellows that for micro-video format to one for motionphoto format\n        // support for micro-video format\n        //setProperty(gcameraNs, \"MotionPhoto\", 1)\n        //setProperty(gcameraNs, \"MotionPhotoVersion\", 1)\n        //setProperty(gcameraNs, \"MicroVideoOffset\", videoOffset)\n        //setProperty(gcameraNs, \"MicroVideoPresentationTimestampUs\", duration)\n\n        // support for motionphoto format\n        setProperty(gcameraNs, \"MotionPhoto\", 1)\n        setProperty(gcameraNs, \"MotionPhotoVersion\", 1)\n        setProperty(gcameraNs, \"MotionPhotoPresentationTimestampUs\", duration)\n        //setProperty(containerNs, \"Version\", 1)\n\n        appendArrayItem(containerNs, \"Directory\", PropertyOptions().setArrayOrdered(true),\n                null, PropertyOptions().setStruct(true))\n        appendArrayItem(containerNs, \"Directory\", PropertyOptions().setArrayOrdered(true),\n                null, PropertyOptions().setStruct(true))\n\n        var path = XMPPathFactory.composeArrayItemPath(\"Directory\", 1)\n        path += \"/Container:Item\"\n\n        setStructField(containerNs, path, itemNs, \"Mime\", primaryType.toString())\n        setStructField(containerNs, path, itemNs, \"Semantic\", \"Primary\")\n        setStructField(containerNs, path, itemNs, \"Length\", \"0\")\n        setStructField(containerNs, path, itemNs, \"Padding\", padding.toString())\n\n        path = XMPPathFactory.composeArrayItemPath(\"Directory\", 2)\n        path += \"/Container:Item\"\n\n        setStructField(containerNs, path, itemNs, \"Mime\", MimeType.MP4.toString())\n        setStructField(containerNs, path, itemNs, \"Semantic\", \"MotionPhoto\")\n        setStructField(containerNs, path, itemNs, \"Length\", secondVideoLength.toString())\n        setStructField(containerNs, path, itemNs, \"Padding\", \"0\")\n    }"

    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic getXMPMeta$default(Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;IJJJJJILjava/lang/Object;)Lc/d;
    .locals 14

    and-int/lit8 v0, p12, 0x40

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    move-wide v12, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v12, p10

    :goto_0
    move-object v2, p0

    move v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-static/range {v2 .. v13}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2Kt;->getXMPMeta(Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;IJJJJJ)Lc/d;

    move-result-object v0

    return-object v0
.end method
