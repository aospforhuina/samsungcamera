.class public final synthetic Lcom/samsung/android/camera/core2/callback/forwarder/g3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/callback/forwarder/SingleBokehEventCallbackForwarder;

.field public final synthetic b:I

.field public final synthetic c:[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;

.field public final synthetic d:Lcom/samsung/android/camera/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/callback/forwarder/SingleBokehEventCallbackForwarder;I[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/forwarder/g3;->a:Lcom/samsung/android/camera/core2/callback/forwarder/SingleBokehEventCallbackForwarder;

    iput p2, p0, Lcom/samsung/android/camera/core2/callback/forwarder/g3;->b:I

    iput-object p3, p0, Lcom/samsung/android/camera/core2/callback/forwarder/g3;->c:[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;

    iput-object p4, p0, Lcom/samsung/android/camera/core2/callback/forwarder/g3;->d:Lcom/samsung/android/camera/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/g3;->a:Lcom/samsung/android/camera/core2/callback/forwarder/SingleBokehEventCallbackForwarder;

    iget v1, p0, Lcom/samsung/android/camera/core2/callback/forwarder/g3;->b:I

    iget-object v2, p0, Lcom/samsung/android/camera/core2/callback/forwarder/g3;->c:[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/g3;->d:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/camera/core2/callback/forwarder/SingleBokehEventCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/forwarder/SingleBokehEventCallbackForwarder;I[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method
