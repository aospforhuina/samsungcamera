.class public final synthetic Lcom/samsung/android/camera/core2/maker/bl;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/util/Size;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/util/Size;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/bl;->a:Landroid/util/Size;

    iput p2, p0, Lcom/samsung/android/camera/core2/maker/bl;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/bl;->a:Landroid/util/Size;

    iget p0, p0, Lcom/samsung/android/camera/core2/maker/bl;->b:I

    check-cast p1, Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$3;->a(Landroid/util/Size;ILcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method
