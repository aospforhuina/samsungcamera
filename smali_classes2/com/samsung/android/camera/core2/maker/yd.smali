.class public final synthetic Lcom/samsung/android/camera/core2/maker/yd;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/yd;->a:Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/yd;->a:Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/PanoramaPhotoMaker;->I3(Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
