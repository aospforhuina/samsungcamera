.class public final synthetic Lcom/samsung/android/camera/core2/maker/bm;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/maker/SlowMotionVideoMakerBase;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/maker/SlowMotionVideoMakerBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/bm;->a:Lcom/samsung/android/camera/core2/maker/SlowMotionVideoMakerBase;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/bm;->a:Lcom/samsung/android/camera/core2/maker/SlowMotionVideoMakerBase;

    check-cast p1, Lcom/samsung/android/camera/core2/CamCapabilityContainer$SpecialFunctionsFpsRange;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/SlowMotionVideoMakerBase;->J3(Lcom/samsung/android/camera/core2/maker/SlowMotionVideoMakerBase;Lcom/samsung/android/camera/core2/CamCapabilityContainer$SpecialFunctionsFpsRange;)V

    return-void
.end method
