.class Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;
.super Lcom/samsung/android/camera/core2/util/SceneStateManager$Task;
.source "SribSceneDetectionNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SceneDetectionProcessTask"
.end annotation


# instance fields
.field private final d:Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;

.field private final f:Landroid/util/Size;

.field private final g:Lcom/samsung/android/camera/core2/util/StrideInfo;

.field private final k:Landroid/graphics/Rect;

.field private final l:I

.field final synthetic m:Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;Ljava/nio/ByteBuffer;JLcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionParam;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    .line 1
    iput-object v1, v0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->m:Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;

    move-object/from16 v1, p2

    move-wide/from16 v3, p3

    .line 2
    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/camera/core2/util/SceneStateManager$Task;-><init>(Ljava/nio/ByteBuffer;J)V

    .line 3
    new-instance v1, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;

    invoke-direct {v1}, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->d:Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v3, v2, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionParam;->d:[Landroid/hardware/camera2/params/Face;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, v3, v6

    .line 6
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 7
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 8
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 9
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 10
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Point;->set(II)V

    .line 11
    :cond_0
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 12
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v11, v12}, Landroid/graphics/Point;->set(II)V

    .line 13
    :cond_1
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 14
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Point;->set(II)V

    .line 15
    :cond_2
    new-instance v11, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Face;

    new-instance v14, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Rectangle;

    .line 16
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v14, v12, v13, v15, v5}, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Rectangle;-><init>(IIII)V

    .line 17
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v15

    .line 18
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v16

    new-instance v5, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Point;

    iget v7, v8, Landroid/graphics/Point;->x:I

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v7, v8}, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Point;-><init>(II)V

    new-instance v7, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Point;

    iget v8, v9, Landroid/graphics/Point;->x:I

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-direct {v7, v8, v9}, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Point;-><init>(II)V

    new-instance v8, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Point;

    iget v9, v10, Landroid/graphics/Point;->x:I

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-direct {v8, v9, v10}, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Point;-><init>(II)V

    move-object v13, v11

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Face;-><init>(Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Rectangle;IILvizinsight/atl/vzimageclassifier/SceneDetectorParam$Point;Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Point;Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Point;)V

    .line 19
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 20
    :cond_3
    iget-object v3, v0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->d:Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;

    invoke-virtual {v3, v1}, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;->setFaces(Ljava/util/List;)V

    .line 21
    iget-object v1, v0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->d:Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;

    new-instance v3, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Rectangle;

    iget-object v4, v2, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionParam;->e:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v5, v6, v7, v4}, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Rectangle;-><init>(IIII)V

    invoke-virtual {v1, v3}, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;->setActiveArraySize(Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Rectangle;)V

    .line 22
    iget-object v1, v0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->d:Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;

    new-instance v3, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Rectangle;

    iget-object v4, v2, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionParam;->f:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v5, v6, v7, v4}, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Rectangle;-><init>(IIII)V

    invoke-virtual {v1, v3}, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;->setCropRegion(Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Rectangle;)V

    .line 23
    iget-object v1, v0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->d:Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;

    iget v3, v2, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionParam;->g:I

    iput v3, v1, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;->autoMode:I

    .line 24
    iget v3, v2, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionParam;->h:F

    iput v3, v1, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;->lensFocusDistance:F

    .line 25
    iget v3, v2, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionParam;->i:I

    iput v3, v1, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;->brightnessValue:I

    .line 26
    iget-object v1, v2, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionParam;->a:Landroid/util/Size;

    iput-object v1, v0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->f:Landroid/util/Size;

    .line 27
    iget-object v1, v2, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionParam;->b:Lcom/samsung/android/camera/core2/util/StrideInfo;

    iput-object v1, v0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->g:Lcom/samsung/android/camera/core2/util/StrideInfo;

    .line 28
    iget v1, v2, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionParam;->c:I

    iput v1, v0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->l:I

    .line 29
    iget-object v1, v2, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$SceneDetectionParam;->f:Landroid/graphics/Rect;

    iput-object v1, v0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->k:Landroid/graphics/Rect;

    return-void
.end method

.method private c(Lvizinsight/atl/vzimageclassifier/SceneDetector;)Lvizinsight/atl/vzimageclassifier/VZEntity;
    .locals 9

    .line 1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager$Task;->a:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->f:Landroid/util/Size;

    .line 2
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->f:Landroid/util/Size;

    .line 3
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->g:Lcom/samsung/android/camera/core2/util/StrideInfo;

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getRowStride()I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->g:Lcom/samsung/android/camera/core2/util/StrideInfo;

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getHeightSlice()I

    move-result v5

    iget v7, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->l:I

    iget-object v8, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->d:Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;

    const/4 v6, 0x0

    move-object v0, p1

    .line 6
    invoke-virtual/range {v0 .. v8}, Lvizinsight/atl/vzimageclassifier/SceneDetector;->classify(Ljava/nio/ByteBuffer;IIIIIILvizinsight/atl/vzimageclassifier/SceneDetectorParam;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 7
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvizinsight/atl/vzimageclassifier/VZEntity;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->m:Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->l(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->q()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    const-string v2, "process SceneDetector E"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-static {}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->q()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v2

    const-string v3, "SceneDetectionProcessTask: PreviewSize(%s), StrideInfo(%s)"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->m:Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;

    invoke-static {v6}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->h(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->g:Lcom/samsung/android/camera/core2/util/StrideInfo;

    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/util/StrideInfo;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-static {v2, v3, v5}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->m:Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/node/Node;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->m:Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->i(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;)Lvizinsight/atl/vzimageclassifier/SceneDetector;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->m:Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->i(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;)Lvizinsight/atl/vzimageclassifier/SceneDetector;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->c(Lvizinsight/atl/vzimageclassifier/SceneDetector;)Lvizinsight/atl/vzimageclassifier/VZEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lvizinsight/atl/vzimageclassifier/VZEntity;->getCategoryId()Lvizinsight/atl/vzimageclassifier/SceneDetector$SceneCategory;

    move-result-object v2

    sget-object v3, Lvizinsight/atl/vzimageclassifier/SceneDetector$SceneCategory;->SCENE_INVALID:Lvizinsight/atl/vzimageclassifier/SceneDetector$SceneCategory;

    if-eq v2, v3, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v7

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->m:Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;

    invoke-static {v3}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->k(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;)Lvizinsight/atl/vzimageclassifier/SceneDetector;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    .line 9
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->m:Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->k(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;)Lvizinsight/atl/vzimageclassifier/SceneDetector;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->c(Lvizinsight/atl/vzimageclassifier/SceneDetector;)Lvizinsight/atl/vzimageclassifier/VZEntity;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 10
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lvizinsight/atl/vzimageclassifier/VZEntity;->getRegion()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 11
    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->f:Landroid/util/Size;

    iget-object v5, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->k:Landroid/graphics/Rect;

    invoke-static {v2, v3, v5}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->g(Landroid/graphics/Rect;Landroid/util/Size;Landroid/graphics/Rect;)Z

    .line 12
    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode$SceneDetectionProcessTask;->m:Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;

    invoke-static {v3}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->g(Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;)Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$NodeCallback;

    move-result-object v3

    invoke-virtual {v1}, Lvizinsight/atl/vzimageclassifier/VZEntity;->getCategoryId()Lvizinsight/atl/vzimageclassifier/SceneDetector$SceneCategory;

    move-result-object v5

    invoke-virtual {v5}, Lvizinsight/atl/vzimageclassifier/SceneDetector$SceneCategory;->getValue()I

    move-result v5

    const/4 v6, 0x7

    new-array v6, v6, [J

    iget-wide v9, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager$Task;->b:J

    aput-wide v9, v6, v7

    .line 13
    invoke-virtual {v1}, Lvizinsight/atl/vzimageclassifier/VZEntity;->getCategoryId()Lvizinsight/atl/vzimageclassifier/SceneDetector$SceneCategory;

    move-result-object p0

    invoke-virtual {p0}, Lvizinsight/atl/vzimageclassifier/SceneDetector$SceneCategory;->getValue()I

    move-result p0

    int-to-long v9, p0

    aput-wide v9, v6, v8

    .line 14
    invoke-virtual {v1}, Lvizinsight/atl/vzimageclassifier/VZEntity;->getScore()F

    move-result p0

    float-to-long v7, p0

    aput-wide v7, v6, v4

    const/4 p0, 0x3

    iget v1, v2, Landroid/graphics/Rect;->left:I

    int-to-long v7, v1

    aput-wide v7, v6, p0

    const/4 p0, 0x4

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-long v7, v1

    aput-wide v7, v6, p0

    const/4 p0, 0x5

    iget v1, v2, Landroid/graphics/Rect;->right:I

    int-to-long v7, v1

    aput-wide v7, v6, p0

    const/4 p0, 0x6

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    int-to-long v1, v1

    aput-wide v1, v6, p0

    .line 15
    invoke-interface {v3, v5, v6}, Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$NodeCallback;->a(I[J)V

    .line 16
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    invoke-static {}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->q()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string v0, "process SceneDetector X"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 18
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 19
    invoke-static {}, Lcom/samsung/android/camera/core2/node/sceneDetection/samsung/v1/SribSceneDetectionNode;->q()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SceneDetectionProcessTask fail - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
