.class Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;
.super Ljava/lang/Object;
.source "SingleBokehPhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$NodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a([Landroid/hardware/camera2/params/Face;Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/SwFaceDetectionEventCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->f([Landroid/hardware/camera2/params/Face;Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/SwFaceDetectionEventCallback;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;ILcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->e([Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;ILcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;I[Lcom/samsung/android/camera/core2/container/NormalizedRect;Lcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->d(I[Lcom/samsung/android/camera/core2/container/NormalizedRect;Lcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;)V

    return-void
.end method

.method private synthetic d(I[Lcom/samsung/android/camera/core2/container/NormalizedRect;Lcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object v1, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    if-eqz v1, :cond_1

    .line 2
    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->V4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->U4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[Lcom/samsung/android/camera/core2/container/NormalizedRect;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    invoke-interface {p3, p1, p2, v1}, Lcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;->onSingleBokehInfoChanged(I[Lcom/samsung/android/camera/core2/container/NormalizedRect;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->V4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 5
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, p3

    const/4 p1, 0x1

    aput-object v1, p2, p1

    const-string p1, "onSingleBokehInfoChanged bokehState %d, camDevice %s"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic e([Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;ILcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 2
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;->b()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/maker/MakerBase;->B:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object v5, v5, Lcom/samsung/android/camera/core2/maker/MakerBase;->B:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->h(Landroid/graphics/Rect;II)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    if-eqz v2, :cond_2

    .line 4
    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->V4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->T4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    :cond_1
    invoke-interface {p3, p2, p1, v2}, Lcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;->onSingleBokehInfoV2Changed(I[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->V4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 7
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object v2, p1, p2

    const-string p2, "onSingleBokehInfoV2Changed bokehState %d, camDevice %s"

    invoke-static {p0, p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static synthetic f([Landroid/hardware/camera2/params/Face;Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/SwFaceDetectionEventCallback;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/camera/core2/callback/SwFaceDetectionEventCallback;->onSwFaceDetection([Landroid/hardware/camera2/params/Face;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getSingleBokehEventCallback()Lcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 3
    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;->onError(ILcom/samsung/android/camera/core2/CamDevice;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p1, v0, v1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPreviewColor([BI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->k5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;[B)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p0, p2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->l5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;I)V

    return-void
.end method

.method public onPreviewLandmark([[I[[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->h5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;[[I)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p0, p2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->i5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;[[I)V

    return-void
.end method

.method public onPreviewObjectInfo([I[Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->n5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;[I)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p0, p2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->o5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;[Landroid/graphics/Rect;)V

    return-void
.end method

.method public onSingleBokehInfoChanged(I[Lcom/samsung/android/camera/core2/container/NormalizedRect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getSingleBokehEventCallback()Lcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/maker/cl;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/cl;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;I[Lcom/samsung/android/camera/core2/container/NormalizedRect;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {v0, p2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->g5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;[Lcom/samsung/android/camera/core2/container/NormalizedRect;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;I)V

    return-void
.end method

.method public onSingleBokehInfoV2Changed(I[I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getSingleBokehEventCallback()Lcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;

    move-result-object v0

    .line 2
    invoke-static {p2}, Lcom/samsung/android/camera/core2/local/util/MarshalUtils;->b([I)[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;

    move-result-object p2

    .line 3
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/maker/dl;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/camera/core2/maker/dl;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {v0, p2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->f5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;)V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->j5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;I)V

    return-void
.end method

.method public onSwFaceDetection([Landroid/hardware/camera2/params/Face;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->m5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;[Landroid/hardware/camera2/params/Face;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getSwFaceDetectionEventCallback()Lcom/samsung/android/camera/core2/callback/SwFaceDetectionEventCallback;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/camera/core2/maker/el;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/camera/core2/maker/el;-><init>([Landroid/hardware/camera2/params/Face;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
