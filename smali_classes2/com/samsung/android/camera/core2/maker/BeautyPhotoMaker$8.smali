.class Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$8;
.super Ljava/lang/Object;
.source "BeautyPhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/node/sceneDetection/SceneDetectionNodeBase$NodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$8;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$8;I[JLcom/samsung/android/camera/core2/callback/SceneDetectionEventCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$8;->c(I[JLcom/samsung/android/camera/core2/callback/SceneDetectionEventCallback;)V

    return-void
.end method

.method private synthetic c(I[JLcom/samsung/android/camera/core2/callback/SceneDetectionEventCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$8;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-interface {p3, p1, p2, p0}, Lcom/samsung/android/camera/core2/callback/SceneDetectionEventCallback;->onSceneDetectionEvent(I[JLcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method


# virtual methods
.method public a(I[J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$8;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getSceneDetectionEventCallback()Lcom/samsung/android/camera/core2/callback/SceneDetectionEventCallback;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/maker/aa;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/aa;-><init>(Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$8;I[J)V

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
