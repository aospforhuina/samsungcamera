.class Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder$1;
.super Ljava/lang/Object;
.source "PreviewBufferCallbackForwarder.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;->c(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder$1;->a:Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->d:Lcom/samsung/android/camera/core2/util/ImgFormat;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder$1;->a:Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/BufferCallbackForwarder;->a:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/camera/core2/callback/PreviewCallback;

    iget-object v0, p1, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->b:Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;

    iget-object v2, p1, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->c:Landroid/util/Size;

    iget-wide v3, p1, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->e:J

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p1, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->d:Lcom/samsung/android/camera/core2/util/ImgFormat;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;-><init>(Landroid/util/Size;Ljava/lang/Long;Lcom/samsung/android/camera/core2/util/ImgFormat;)V

    iget-object p1, p1, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->g:Lcom/samsung/android/camera/core2/CamDevice;

    .line 4
    invoke-interface {p0, v0, v1, p1}, Lcom/samsung/android/camera/core2/callback/PreviewCallback;->onPreviewFrame(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;->d()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "onBufferForward : %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;)V
    .locals 0

    return-void
.end method
