.class public final synthetic Lcom/samsung/android/camera/core2/maker/wk;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/wk;->a:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;

    iput-boolean p2, p0, Lcom/samsung/android/camera/core2/maker/wk;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/wk;->a:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/maker/wk;->b:Z

    check-cast p1, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->I4(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$Builder;ZLcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;)V

    return-void
.end method
