.class public final synthetic Lcom/samsung/android/camera/core2/maker/xk;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/xk;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/xk;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    check-cast p1, Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->E4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Lcom/samsung/android/camera/core2/CamCapabilityContainer$SecStreamConfig;)V

    return-void
.end method
