.class public Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;
.super Lcom/samsung/android/camera/core2/node/faceAlignment/FaceAlignmentNodeBase;
.source "ArcFaceAlignmentNode.java"


# static fields
.field private static final ARC_FACE_ALIGNMENT_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private static final NATIVE_CALLBACK_FACE_ALIGNMENT_DATA:I = 0x1

.field private static final NATIVE_CALLBACK_FACE_OUTLINE_POINT_DATA:I = 0x2

.field private static final NATIVE_COMMAND_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_PROCESS:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_DEVICE_ORIENTATION:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_TYPE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeviceOrientation:I

.field private mHeightSlice:I

.field private final mLensFacing:I

.field private final mNodeCallback:Lcom/samsung/android/camera/core2/node/faceAlignment/FaceAlignmentNodeBase$NodeCallback;

.field private final mPreviewSize:Landroid/util/Size;

.field private mPreviewTimestamp:J

.field private mRowStride:I

.field private final mSensorOrientation:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v0, Ljava/lang/Integer;

    new-instance v1, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "V1/ArcFaceAlignmentNode"

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->ARC_FACE_ALIGNMENT_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$1;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/util/Size;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/16 v6, 0x64

    invoke-direct {v1, v6, v3}, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$1;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->NATIVE_COMMAND_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 3
    new-instance v1, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$2;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v3, v5

    const-class v6, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    aput-object v6, v3, v4

    const-class v6, Lcom/samsung/android/camera/core2/container/ExtraPreviewInfo;

    aput-object v6, v3, v2

    const/16 v2, 0x65

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$2;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->NATIVE_COMMAND_PROCESS:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 4
    new-instance v1, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$3;

    new-array v2, v4, [Ljava/lang/Class;

    aput-object v0, v2, v5

    const/16 v3, 0x66

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$3;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->NATIVE_COMMAND_SET_DEVICE_ORIENTATION:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 5
    new-instance v1, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$4;

    new-array v2, v4, [Ljava/lang/Class;

    aput-object v0, v2, v5

    const/16 v0, 0x67

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$4;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->NATIVE_COMMAND_TYPE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/node/faceAlignment/FaceAlignmentNodeBase$FaceAlignmentInitParam;Lcom/samsung/android/camera/core2/node/faceAlignment/FaceAlignmentNodeBase$NodeCallback;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->ARC_FACE_ALIGNMENT_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object v2, p1, Lcom/samsung/android/camera/core2/node/faceAlignment/FaceAlignmentNodeBase$FaceAlignmentInitParam;->a:Landroid/util/Size;

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v1, v1}, Landroid/util/Size;-><init>(II)V

    :goto_0
    const v3, 0x30da4

    const/4 v4, 0x1

    .line 3
    invoke-direct {p0, v3, v0, v4, v2}, Lcom/samsung/android/camera/core2/node/faceAlignment/FaceAlignmentNodeBase;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;ZLandroid/util/Size;)V

    const/high16 v2, -0x80000000

    .line 4
    iput v2, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mDeviceOrientation:I

    .line 5
    iput v1, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mType:I

    .line 6
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/Node;->mNativeCallbacks:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$5;-><init>(Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;)V

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/Node;->mNativeCallbacks:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$6;

    invoke-direct {v6, p0}, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode$6;-><init>(Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;)V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v4

    const-string v1, "ArcFaceAlignmentNode - faceAlignmentInitParam %s, callback %s"

    .line 8
    invoke-static {v0, v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "faceAlignmentInitParam"

    .line 9
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback"

    .line 10
    invoke-static {p2, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iget-object v0, p1, Lcom/samsung/android/camera/core2/node/faceAlignment/FaceAlignmentNodeBase$FaceAlignmentInitParam;->a:Landroid/util/Size;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mPreviewSize:Landroid/util/Size;

    .line 12
    iget-object v0, p1, Lcom/samsung/android/camera/core2/node/faceAlignment/FaceAlignmentNodeBase$FaceAlignmentInitParam;->b:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->n()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mLensFacing:I

    .line 13
    iget-object p1, p1, Lcom/samsung/android/camera/core2/node/faceAlignment/FaceAlignmentNodeBase$FaceAlignmentInitParam;->b:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->i2()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mSensorOrientation:I

    .line 14
    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/faceAlignment/FaceAlignmentNodeBase$NodeCallback;

    return-void
.end method

.method static bridge synthetic g(Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mHeightSlice:I

    return p0
.end method

.method static bridge synthetic h(Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;)Lcom/samsung/android/camera/core2/node/faceAlignment/FaceAlignmentNodeBase$NodeCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/faceAlignment/FaceAlignmentNodeBase$NodeCallback;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mPreviewTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic k(Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mRowStride:I

    return p0
.end method

.method static bridge synthetic l()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->ARC_FACE_ALIGNMENT_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object v0
.end method


# virtual methods
.method public getDeviceOrientation()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mDeviceOrientation:I

    return p0
.end method

.method public getFaceAlignmentType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mType:I

    return p0
.end method

.method protected declared-synchronized onDeinitialized()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;->onDeinitialized()V

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mDeviceOrientation:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onInitialized(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "*>;[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->NATIVE_COMMAND_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mPreviewSize:Landroid/util/Size;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mLensFacing:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/node/Node;->onInitialized(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance p1, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v0, "onInitialized fail - init lib fail"

    invoke-direct {p1, v0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected processBackgroundPreviewInternal(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 6

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object p3

    .line 3
    new-instance v0, Lcom/samsung/android/camera/core2/container/ExtraPreviewInfo;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->p()J

    move-result-wide v1

    .line 4
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getRowStride()I

    move-result p2

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getHeightSlice()I

    move-result p3

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/samsung/android/camera/core2/container/ExtraPreviewInfo;-><init>(JII)V

    .line 5
    iget-wide p2, v0, Lcom/samsung/android/camera/core2/container/ExtraPreviewInfo;->timeStamp:J

    iput-wide p2, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mPreviewTimestamp:J

    .line 6
    iget p2, v0, Lcom/samsung/android/camera/core2/container/ExtraPreviewInfo;->rowStride:I

    iput p2, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mRowStride:I

    .line 7
    iget p2, v0, Lcom/samsung/android/camera/core2/container/ExtraPreviewInfo;->heightSlice:I

    iput p2, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mHeightSlice:I

    .line 8
    sget-object p2, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->ARC_FACE_ALIGNMENT_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p3, "FaceAlignmentProcessTask: PreviewSize(%s), ExtraPreviewInfo(%s)"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/ExtraPreviewInfo;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {p2, p3, v2}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    sget-object p3, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->NATIVE_COMMAND_PROCESS:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p1, v2, v5

    aput-object v0, v2, v1

    invoke-virtual {p0, p3, v2}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, "FaceAlignmentProcessTask fail - process face alignment fail(%d)"

    new-array p3, v5, [Ljava/lang/Object;

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v4

    invoke-static {p2, p1, p3}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    sget-object p1, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->ARC_FACE_ALIGNMENT_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "FaceAlignmentProcessTask fail - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected bridge synthetic processBackgroundPreviewInternal(Ljava/lang/Object;Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->processBackgroundPreviewInternal(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    return-void
.end method

.method public bridge synthetic processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceOrientation(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->ARC_FACE_ALIGNMENT_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceOrientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mDeviceOrientation:I

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->NATIVE_COMMAND_SET_DEVICE_ORIENTATION:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mLensFacing:I

    iget v3, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mSensorOrientation:I

    invoke-static {p1, v2, v3}, Lcom/samsung/android/camera/core2/util/ImageUtils;->getImageOrientation(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFaceAlignmentType(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->ARC_FACE_ALIGNMENT_V1_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFaceAlignmentType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->mType:I

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/node/faceAlignment/arcsoft/v1/ArcFaceAlignmentNode;->NATIVE_COMMAND_TYPE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
