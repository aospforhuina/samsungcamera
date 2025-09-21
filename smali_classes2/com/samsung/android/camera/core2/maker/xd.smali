.class public final synthetic Lcom/samsung/android/camera/core2/maker/xd;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;

.field public final synthetic b:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/xd;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/maker/xd;->b:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/xd;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/xd;->b:Landroid/hardware/camera2/TotalCaptureResult;

    check-cast p1, Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->K3(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNodeBase$PanoramaCaptureResult;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method
