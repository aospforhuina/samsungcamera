.class public Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;
.super Ljava/lang/Object;
.source "BufferForwarder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BufferSlotGetter"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/util/ImageBuffer;

.field private final b:Landroid/media/Image;

.field private final c:Landroid/hardware/camera2/TotalCaptureResult;

.field final synthetic d:Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;->d:Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;->a:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    .line 7
    iput-object p2, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;->b:Landroid/media/Image;

    .line 8
    iput-object p3, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;->c:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;Lcom/samsung/android/camera/core2/util/ImageBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;->d:Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;->a:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;->b:Landroid/media/Image;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;->c:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;->a:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;->d:Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->a(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;)Lcom/samsung/android/camera/core2/util/BufferDeque;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;->a:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/util/BufferDeque;->a(Ljava/lang/Object;Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;->b:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;->d:Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->a(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;)Lcom/samsung/android/camera/core2/util/BufferDeque;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;->b:Landroid/media/Image;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;->c:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/util/BufferDeque;->a(Ljava/lang/Object;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 5
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;->d:Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->a(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;)Lcom/samsung/android/camera/core2/util/BufferDeque;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/BufferDeque;->g()Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;

    move-result-object p0

    return-object p0
.end method
