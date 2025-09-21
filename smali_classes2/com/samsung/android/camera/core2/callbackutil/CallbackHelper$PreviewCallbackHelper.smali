.class public Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PreviewCallbackHelper;
.super Ljava/lang/Object;
.source "CallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewCallbackHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;Landroid/media/Image;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/16 v0, 0x23

    .line 1
    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;->f(Landroid/media/Image;Lcom/samsung/android/camera/core2/CamDevice;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "PreviewCallbackHelper onPreviewFrame - unsupported previewFormat %d"

    invoke-static {p0, p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
