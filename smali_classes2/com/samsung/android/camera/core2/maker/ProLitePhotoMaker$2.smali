.class Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$2;
.super Ljava/lang/Object;
.source "ProLitePhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$2;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/util/Size;ILcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$2;->b(Landroid/util/Size;ILcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method

.method private static synthetic b(Landroid/util/Size;ILcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->x(Landroid/util/Size;)V

    .line 2
    invoke-virtual {p2, p1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->t(I)V

    .line 3
    new-instance p1, Lcom/samsung/android/camera/core2/util/StrideInfo;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    invoke-virtual {p2, p1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->z(Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->T3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$2;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->T3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$2;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    div-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x5a

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->v(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public onThumbnail(Lcom/samsung/android/camera/core2/util/DirectBuffer;ILandroid/util/Size;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/maker/ag;

    invoke-direct {v0, p3, p2}, Lcom/samsung/android/camera/core2/maker/ag;-><init>(Landroid/util/Size;I)V

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->e(Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p2

    .line 2
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->k(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->T3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$2;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->S0:Lcom/samsung/android/camera/core2/callback/ThumbnailCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p2, p3, p1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$ThumbnailCallbackHelper;->b(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/ThumbnailCallback;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method
