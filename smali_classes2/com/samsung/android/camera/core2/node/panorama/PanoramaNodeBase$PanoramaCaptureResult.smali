.class public Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;
.super Ljava/lang/Object;
.source "PanoramaNodeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanoramaCaptureResult"
.end annotation


# instance fields
.field public final a:Lcom/samsung/android/camera/core2/util/DirectBuffer;

.field public final b:Landroid/util/Size;

.field public final c:Landroid/util/Size;

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:[B

.field public h:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core2/util/DirectBuffer;Landroid/util/Size;Landroid/util/Size;IIZ[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->a:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->b:Landroid/util/Size;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->c:Landroid/util/Size;

    .line 5
    iput p4, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->d:I

    .line 6
    iput p5, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->e:I

    .line 7
    iput-boolean p6, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->f:Z

    .line 8
    iput-object p7, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->g:[B

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->a:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->b:Landroid/util/Size;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->c:Landroid/util/Size;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->d:I

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->g:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;->h:Ljava/io/File;

    const/4 v2, 0x7

    aput-object p0, v1, v2

    const-string p0, "PanoramaCaptureResult - jpegData %s, jpegSize %s, croppedSize %s, fullSize %d, jpegOrientation %d, isVertical %b, sefInfo %s, tempMp4 %s"

    .line 3
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
