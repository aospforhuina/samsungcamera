.class public final synthetic Lcom/samsung/android/camera/core2/maker/b2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:Lcom/samsung/android/camera/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>([BLcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/b2;->a:[B

    iput-object p2, p0, Lcom/samsung/android/camera/core2/maker/b2;->b:Lcom/samsung/android/camera/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/b2;->a:[B

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/b2;->b:Lcom/samsung/android/camera/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/camera/core2/callback/FaceLandmarkEventCallback;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker$2;->b([BLcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/FaceLandmarkEventCallback;)V

    return-void
.end method
