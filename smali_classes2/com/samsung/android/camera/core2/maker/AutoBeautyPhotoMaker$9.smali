.class Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker$9;
.super Ljava/lang/Object;
.source "AutoBeautyPhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/node/smartScan/SmartScanNodeBase$NodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Z[FLcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/SmartScanEventCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker$9;->b(Z[FLcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/SmartScanEventCallback;)V

    return-void
.end method

.method private static synthetic b(Z[FLcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/SmartScanEventCallback;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/SmartScanEventCallback;->onSmartScanResult(Z[FLcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method


# virtual methods
.method public onSmartScanResult(Z[F)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getSmartScanEventCallback()Lcom/samsung/android/camera/core2/callback/SmartScanEventCallback;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/camera/core2/maker/c6;

    invoke-direct {v1, p1, p2, v0}, Lcom/samsung/android/camera/core2/maker/c6;-><init>(Z[FLcom/samsung/android/camera/core2/CamDevice;)V

    .line 3
    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
