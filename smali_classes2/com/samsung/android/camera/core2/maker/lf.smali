.class public final synthetic Lcom/samsung/android/camera/core2/maker/lf;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/lf;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/lf;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    check-cast p1, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->w2(Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;)V

    return-void
.end method
