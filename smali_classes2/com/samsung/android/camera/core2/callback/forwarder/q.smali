.class public final synthetic Lcom/samsung/android/camera/core2/callback/forwarder/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/callback/forwarder/BokehInfoCallbackForwarder;

.field public final synthetic b:Ljava/lang/Long;

.field public final synthetic c:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;

.field public final synthetic d:Lcom/samsung/android/camera/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/callback/forwarder/BokehInfoCallbackForwarder;Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/forwarder/q;->a:Lcom/samsung/android/camera/core2/callback/forwarder/BokehInfoCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/callback/forwarder/q;->b:Ljava/lang/Long;

    iput-object p3, p0, Lcom/samsung/android/camera/core2/callback/forwarder/q;->c:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;

    iput-object p4, p0, Lcom/samsung/android/camera/core2/callback/forwarder/q;->d:Lcom/samsung/android/camera/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/q;->a:Lcom/samsung/android/camera/core2/callback/forwarder/BokehInfoCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/callback/forwarder/q;->b:Ljava/lang/Long;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/callback/forwarder/q;->c:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/q;->d:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/camera/core2/callback/forwarder/BokehInfoCallbackForwarder;->l(Lcom/samsung/android/camera/core2/callback/forwarder/BokehInfoCallbackForwarder;Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method
