.class final enum Lcom/samsung/android/camera/core2/container/DynamicShotMode$5;
.super Lcom/samsung/android/camera/core2/container/DynamicShotMode;
.source "DynamicShotMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/container/DynamicShotMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/util/List;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;-><init>(Ljava/lang/String;IILjava/util/List;Lcom/samsung/android/camera/core2/container/x0;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILjava/util/List;Lcom/samsung/android/camera/core2/container/s0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/camera/core2/container/DynamicShotMode$5;-><init>(Ljava/lang/String;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public I(I)Lcom/samsung/android/camera/core2/container/SensorPixelMode;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/camera/core2/container/SensorPixelMode;->c:Lcom/samsung/android/camera/core2/container/SensorPixelMode;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/container/SensorPixelMode;->b:Lcom/samsung/android/camera/core2/container/SensorPixelMode;

    return-object p0
.end method
