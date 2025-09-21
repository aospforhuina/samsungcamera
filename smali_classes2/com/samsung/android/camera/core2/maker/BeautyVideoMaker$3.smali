.class Lcom/samsung/android/camera/core2/maker/BeautyVideoMaker$3;
.super Ljava/lang/Object;
.source "BeautyVideoMaker.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/maker/BeautyVideoMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/maker/BeautyVideoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/BeautyVideoMaker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/BeautyVideoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/BeautyVideoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/BeautyVideoMaker;->U3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/BeautyVideoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/BeautyVideoMaker;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->I0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/BeautyVideoMaker;->U3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/BeautyVideoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/BeautyVideoMaker;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->I0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    div-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x5a

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->v(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public onThumbnail(Lcom/samsung/android/camera/core2/util/DirectBuffer;ILandroid/util/Size;)V
    .locals 0

    return-void
.end method
