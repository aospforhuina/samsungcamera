.class public final synthetic Lcom/samsung/android/camera/core2/callback/forwarder/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/callback/forwarder/BurstPictureCallbackForwarder;

.field public final synthetic b:Ljava/nio/ByteBuffer;

.field public final synthetic c:Lcom/samsung/android/camera/core2/container/PictureDataInfo;

.field public final synthetic d:Lcom/samsung/android/camera/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/callback/forwarder/BurstPictureCallbackForwarder;Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/forwarder/u;->a:Lcom/samsung/android/camera/core2/callback/forwarder/BurstPictureCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/callback/forwarder/u;->b:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/samsung/android/camera/core2/callback/forwarder/u;->c:Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    iput-object p4, p0, Lcom/samsung/android/camera/core2/callback/forwarder/u;->d:Lcom/samsung/android/camera/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/u;->a:Lcom/samsung/android/camera/core2/callback/forwarder/BurstPictureCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/callback/forwarder/u;->b:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/callback/forwarder/u;->c:Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/u;->d:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/camera/core2/callback/forwarder/BurstPictureCallbackForwarder;->l(Lcom/samsung/android/camera/core2/callback/forwarder/BurstPictureCallbackForwarder;Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method
