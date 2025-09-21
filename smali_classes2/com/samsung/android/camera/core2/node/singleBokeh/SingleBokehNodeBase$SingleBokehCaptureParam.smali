.class public Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;
.super Ljava/lang/Object;
.source "SingleBokehNodeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleBokehCaptureParam"
.end annotation


# instance fields
.field private bv:I

.field private colorTemperature:I

.field private dsMode:I

.field private ev:I

.field private exposureTimeMillis:I

.field private final faces:[Landroid/hardware/camera2/params/Face;

.field private final focusedRects:Landroid/graphics/Rect;

.field private gyroState:I

.field private final inputStrideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;

.field private iso:I

.field private final landmarkX:[[I

.field private final landmarkY:[[I

.field private lensFocusDistanceX1000:I

.field private final pictureSize:Landroid/util/Size;

.field private final previewColor:[B

.field private final previewColorFormat:I

.field private final strideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;


# direct methods
.method public constructor <init>(Landroid/util/Size;Lcom/samsung/android/camera/core2/util/StrideInfo;Lcom/samsung/android/camera/core2/util/StrideInfo;[Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;[[I[[I[BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->inputStrideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->pictureSize:Landroid/util/Size;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->strideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;

    .line 5
    iput-object p4, p0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->faces:[Landroid/hardware/camera2/params/Face;

    .line 6
    iput-object p5, p0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->focusedRects:Landroid/graphics/Rect;

    .line 7
    iput-object p6, p0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->landmarkX:[[I

    .line 8
    iput-object p7, p0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->landmarkY:[[I

    .line 9
    iput-object p8, p0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->previewColor:[B

    .line 10
    iput p9, p0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->previewColorFormat:I

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;Lcom/samsung/android/camera/core2/util/StrideInfo;Lcom/samsung/android/camera/core2/util/StrideInfo;[Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;[[I[[I[BIIIIIIIII)V
    .locals 2

    move-object v0, p0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p2

    .line 12
    iput-object v1, v0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->inputStrideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-object v1, p1

    .line 13
    iput-object v1, v0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->pictureSize:Landroid/util/Size;

    move-object v1, p3

    .line 14
    iput-object v1, v0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->strideInfo:Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-object v1, p4

    .line 15
    iput-object v1, v0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->faces:[Landroid/hardware/camera2/params/Face;

    move-object v1, p5

    .line 16
    iput-object v1, v0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->focusedRects:Landroid/graphics/Rect;

    move-object v1, p6

    .line 17
    iput-object v1, v0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->landmarkX:[[I

    move-object v1, p7

    .line 18
    iput-object v1, v0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->landmarkY:[[I

    move-object v1, p8

    .line 19
    iput-object v1, v0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->previewColor:[B

    move v1, p9

    .line 20
    iput v1, v0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->previewColorFormat:I

    move v1, p10

    .line 21
    iput v1, v0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->bv:I

    move v1, p11

    .line 22
    iput v1, v0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->ev:I

    move v1, p12

    .line 23
    iput v1, v0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->iso:I

    move v1, p13

    .line 24
    iput v1, v0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->exposureTimeMillis:I

    move/from16 v1, p14

    .line 25
    iput v1, v0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->gyroState:I

    move/from16 v1, p15

    .line 26
    iput v1, v0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->lensFocusDistanceX1000:I

    move/from16 v1, p16

    .line 27
    iput v1, v0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->dsMode:I

    move/from16 v1, p17

    .line 28
    iput v1, v0, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;->colorTemperature:I

    return-void
.end method
