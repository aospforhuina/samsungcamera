.class public final synthetic Lcom/samsung/android/camera/core2/callback/forwarder/t0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/callback/forwarder/HumanTrackingEventCallbackForwarder;

.field public final synthetic b:[B

.field public final synthetic c:[Landroid/graphics/Rect;

.field public final synthetic d:[Landroid/graphics/Rect;

.field public final synthetic f:Lcom/samsung/android/camera/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/callback/forwarder/HumanTrackingEventCallbackForwarder;[B[Landroid/graphics/Rect;[Landroid/graphics/Rect;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/forwarder/t0;->a:Lcom/samsung/android/camera/core2/callback/forwarder/HumanTrackingEventCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/callback/forwarder/t0;->b:[B

    iput-object p3, p0, Lcom/samsung/android/camera/core2/callback/forwarder/t0;->c:[Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/samsung/android/camera/core2/callback/forwarder/t0;->d:[Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/samsung/android/camera/core2/callback/forwarder/t0;->f:Lcom/samsung/android/camera/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/t0;->a:Lcom/samsung/android/camera/core2/callback/forwarder/HumanTrackingEventCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/callback/forwarder/t0;->b:[B

    iget-object v2, p0, Lcom/samsung/android/camera/core2/callback/forwarder/t0;->c:[Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/callback/forwarder/t0;->d:[Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/t0;->f:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/samsung/android/camera/core2/callback/forwarder/HumanTrackingEventCallbackForwarder;->l(Lcom/samsung/android/camera/core2/callback/forwarder/HumanTrackingEventCallbackForwarder;[B[Landroid/graphics/Rect;[Landroid/graphics/Rect;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method
