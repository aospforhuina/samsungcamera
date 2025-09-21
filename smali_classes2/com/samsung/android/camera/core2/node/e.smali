.class public final synthetic Lcom/samsung/android/camera/core2/node/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/e;->a:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/e;->a:Landroid/hardware/camera2/TotalCaptureResult;

    check-cast p1, Lcom/samsung/android/camera/core2/container/WatermarkInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/DngManageNode;->g(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/container/WatermarkInfo;)Lcom/samsung/android/camera/core2/util/ImageUtils$CaptureDateTime;

    move-result-object p0

    return-object p0
.end method
