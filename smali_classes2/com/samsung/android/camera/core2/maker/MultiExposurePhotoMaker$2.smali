.class Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker$2;
.super Ljava/lang/Object;
.source "MultiExposurePhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;-><init>(Landroid/os/Handler;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker$2;->a:Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->N3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "BurstPictureCallback onBurstRequestRemoved - sequenceId %d"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->N3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker$2;->a:Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->M3(Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;)Lcom/samsung/android/camera/core2/callback/MultiExposurePictureCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker$2;->a:Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$MultiExposurePictureCallbackHelper;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/MultiExposurePictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public b(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamCapability;Z)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->N3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, p2, p3

    const-string p1, "BurstPictureCallback onBurstPictureTaken - pictureData %s, hasThumbnailImage %b"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->N3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "BurstPictureCallback onBurstRequestApplied - sequenceId %d"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->N3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker$2;->a:Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->M3(Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;)Lcom/samsung/android/camera/core2/callback/MultiExposurePictureCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker$2;->a:Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$MultiExposurePictureCallbackHelper;->k(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/MultiExposurePictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public d(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->N3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "BurstPictureCallback onBurstRequestError - sequenceId %d"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->N3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker$2;->a:Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;->M3(Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;)Lcom/samsung/android/camera/core2/callback/MultiExposurePictureCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker$2;->a:Lcom/samsung/android/camera/core2/maker/MultiExposurePhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p1, v0, v2, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$MultiExposurePictureCallbackHelper;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/MultiExposurePictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method
