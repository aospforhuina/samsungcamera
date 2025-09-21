.class public final synthetic Lcom/samsung/android/camera/core2/node/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/node/DngManageNode;

.field public final synthetic b:Lcom/samsung/android/camera/core2/ExtraBundle;

.field public final synthetic c:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/node/DngManageNode;Lcom/samsung/android/camera/core2/ExtraBundle;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/d;->a:Lcom/samsung/android/camera/core2/node/DngManageNode;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/d;->b:Lcom/samsung/android/camera/core2/ExtraBundle;

    iput-object p3, p0, Lcom/samsung/android/camera/core2/node/d;->c:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/d;->a:Lcom/samsung/android/camera/core2/node/DngManageNode;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/d;->b:Lcom/samsung/android/camera/core2/ExtraBundle;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/d;->c:Landroid/hardware/camera2/TotalCaptureResult;

    check-cast p1, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/camera/core2/node/DngManageNode;->f(Lcom/samsung/android/camera/core2/node/DngManageNode;Lcom/samsung/android/camera/core2/ExtraBundle;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/ImageBuffer;)V

    return-void
.end method
