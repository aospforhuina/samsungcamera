.class public Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureParam;
.super Ljava/lang/Object;
.source "PanoramaNodeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PanoramaCaptureParam"
.end annotation


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Ljava/lang/String;


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureParam;->a:I

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureParam;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureParam;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "PanoramaCaptureParam - cameraOrientation %d, enableMotionMode %b, tempMp4FilePath %s"

    .line 3
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
