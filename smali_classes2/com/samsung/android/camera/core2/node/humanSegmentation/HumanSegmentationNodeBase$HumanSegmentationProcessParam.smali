.class public Lcom/samsung/android/camera/core2/node/humanSegmentation/HumanSegmentationNodeBase$HumanSegmentationProcessParam;
.super Ljava/lang/Object;
.source "HumanSegmentationNodeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/humanSegmentation/HumanSegmentationNodeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HumanSegmentationProcessParam"
.end annotation


# instance fields
.field public final activeArraySize:Landroid/graphics/Rect;

.field public final buffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

.field public final faceArray:[Landroid/hardware/camera2/params/Face;

.field public final size:Landroid/util/Size;

.field public final strideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core2/util/DirectBuffer;Landroid/util/Size;Lcom/samsung/android/camera/core2/util/StrideInfo;[Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/humanSegmentation/HumanSegmentationNodeBase$HumanSegmentationProcessParam;->buffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/humanSegmentation/HumanSegmentationNodeBase$HumanSegmentationProcessParam;->size:Landroid/util/Size;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/node/humanSegmentation/HumanSegmentationNodeBase$HumanSegmentationProcessParam;->strideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;

    .line 5
    iput-object p4, p0, Lcom/samsung/android/camera/core2/node/humanSegmentation/HumanSegmentationNodeBase$HumanSegmentationProcessParam;->faceArray:[Landroid/hardware/camera2/params/Face;

    .line 6
    iput-object p5, p0, Lcom/samsung/android/camera/core2/node/humanSegmentation/HumanSegmentationNodeBase$HumanSegmentationProcessParam;->activeArraySize:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/humanSegmentation/HumanSegmentationNodeBase$HumanSegmentationProcessParam;->buffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/humanSegmentation/HumanSegmentationNodeBase$HumanSegmentationProcessParam;->size:Landroid/util/Size;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/humanSegmentation/HumanSegmentationNodeBase$HumanSegmentationProcessParam;->strideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/humanSegmentation/HumanSegmentationNodeBase$HumanSegmentationProcessParam;->faceArray:[Landroid/hardware/camera2/params/Face;

    .line 2
    invoke-static {v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/humanSegmentation/HumanSegmentationNodeBase$HumanSegmentationProcessParam;->activeArraySize:Landroid/graphics/Rect;

    const/4 v2, 0x4

    aput-object p0, v1, v2

    const-string p0, "HumanSegmentationProcessParam - buffer %s, size %s, strideInfo %s, faceArray %s, activeArraySize %s"

    .line 3
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
