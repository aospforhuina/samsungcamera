.class Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker$1;
.super Ljava/lang/Object;
.source "AstroPhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/node/astroPhoto/AstroPhotoNodeBase$NodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker$1;->a:Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;->X3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker$1;->a:Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public onProgress(Lcom/samsung/android/camera/core2/ExtraBundle;I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;->X3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker$1;->a:Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;->U3(Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;)Lcom/samsung/android/camera/core2/callback/AstroPictureCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker$1;->a:Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p1, v0, p2, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$AstroPictureCallbackHelper;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/AstroPictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method
