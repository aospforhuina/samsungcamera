.class public Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;
.super Lcom/samsung/android/camera/core2/callback/forwarder/BufferCallbackForwarder;
.source "PreviewBufferCallbackForwarder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/callback/forwarder/BufferCallbackForwarder<",
        "Lcom/samsung/android/camera/core2/callback/PreviewCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "BufferCallbackForwarder"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/camera/core2/callback/PreviewCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/callback/forwarder/BufferCallbackForwarder;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic d()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object v0
.end method

.method public static e(Lcom/samsung/android/camera/core2/callback/PreviewCallback;)Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;-><init>(Lcom/samsung/android/camera/core2/callback/PreviewCallback;)V

    return-object v0
.end method


# virtual methods
.method public c(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder$1;-><init>(Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->n(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardCallback;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/forwarder/BufferCallbackForwarder;->b:Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;

    return-void
.end method

.method public f(Landroid/media/Image;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/BufferCallbackForwarder;->b:Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->g(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/CamDevice;)V

    :cond_0
    return-void
.end method
