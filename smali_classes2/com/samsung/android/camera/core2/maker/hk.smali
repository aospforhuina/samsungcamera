.class public final synthetic Lcom/samsung/android/camera/core2/maker/hk;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/hk;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/hk;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    check-cast p1, Landroid/util/Size;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->y4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Landroid/util/Size;)Z

    move-result p0

    return p0
.end method
