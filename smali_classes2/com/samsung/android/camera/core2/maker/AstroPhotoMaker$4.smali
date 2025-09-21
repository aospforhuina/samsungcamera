.class Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker$4;
.super Ljava/lang/Object;
.source "AstroPhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;-><init>(Landroid/os/Handler;Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamCapability;Z)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;->X3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;

    invoke-static {p4}, Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;->U3(Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;)Lcom/samsung/android/camera/core2/callback/AstroPictureCallback;

    move-result-object p4

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p3, p4, p1, p2, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$AstroPictureCallbackHelper;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/AstroPictureCallback;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public d(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;->X3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;->U3(Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;)Lcom/samsung/android/camera/core2/callback/AstroPictureCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/AstroPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$AstroPictureCallbackHelper;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/AstroPictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method
