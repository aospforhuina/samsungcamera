.class public final synthetic Lcom/samsung/android/camera/core2/maker/th;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;

.field public final synthetic d:I

.field public final synthetic e:Landroid/hardware/camera2/CaptureFailure;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;ILandroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/th;->a:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/maker/th;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/th;->c:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;

    iput p4, p0, Lcom/samsung/android/camera/core2/maker/th;->d:I

    iput-object p5, p0, Lcom/samsung/android/camera/core2/maker/th;->e:Landroid/hardware/camera2/CaptureFailure;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/th;->a:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/th;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/th;->c:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;

    iget v3, p0, Lcom/samsung/android/camera/core2/maker/th;->d:I

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/th;->e:Landroid/hardware/camera2/CaptureFailure;

    move-object v5, p1

    check-cast v5, Lcom/samsung/android/camera/core2/processor/ProcessRequest;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->f(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;ILandroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V

    return-void
.end method
