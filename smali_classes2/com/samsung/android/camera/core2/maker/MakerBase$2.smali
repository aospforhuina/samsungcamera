.class Lcom/samsung/android/camera/core2/maker/MakerBase$2;
.super Ljava/lang/Object;
.source "MakerBase.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/maker/MakerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/maker/MakerBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/MakerBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase$2;->a:Lcom/samsung/android/camera/core2/maker/MakerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/Image;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase$2;->a:Lcom/samsung/android/camera/core2/maker/MakerBase;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->i:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->c0:Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p2, v0, p1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PreviewCallbackHelper;->a(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;Landroid/media/Image;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method
