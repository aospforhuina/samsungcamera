.class public final synthetic Lcom/samsung/android/camera/core2/maker/il;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/hardware/camera2/CaptureFailure;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;Landroid/content/Context;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/il;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/maker/il;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/il;->c:Landroid/hardware/camera2/CaptureFailure;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/il;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/il;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/il;->c:Landroid/hardware/camera2/CaptureFailure;

    check-cast p1, Lcom/samsung/android/camera/core2/processor/ProcessRequest;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->h(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;Landroid/content/Context;Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V

    return-void
.end method
